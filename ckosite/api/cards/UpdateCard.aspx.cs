using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Checkout;
using Checkout.ApiServices.Customers.RequestModels;
using Checkout.ApiServices.SharedModels;
using Checkout.ApiServices.Cards.RequestModels;
using Checkout.ApiServices.Customers.ResponseModels;

public partial class card_UpdateCard : System.Web.UI.Page
{
    protected APIClient ckoAPIClient;

    protected string expiryMonth;

    protected string expiryYear;

    protected string cvv;

    protected string cardNum;

    protected void Page_Load(object sender, EventArgs e)
    {

        LoadDropDownLists();


    }

    protected void but_updateCard_Click(object sender, EventArgs e)
    {
        ProcessUpdate();
    }

    private void LoadDropDownLists()
    {
        if (dropdown_customerlist.Items.Count < 1)
        {
            ckoAPIClient = new APIClient();

            // Submit your request and receive an apiResponse
            Checkout.ApiServices.Customers.RequestModels.CustomerGetList cgl = new Checkout.ApiServices.Customers.RequestModels.CustomerGetList();
            cgl.Count = 10;
            cgl.FromDate = DateTime.Now.AddMonths(-1);
            cgl.ToDate = DateTime.Now;
            cgl.Offset = 0;

            HttpResponse<Checkout.ApiServices.Customers.ResponseModels.CustomerList> apiResponse = ckoAPIClient.CustomerService.GetCustomerList(cgl);

            if (!apiResponse.HasError)
            {
                // Access the response object retrieved from the api
                var customer = apiResponse.Model;

                List<Customer> customers = customer.Data;

                int count = 0;

                foreach (Customer c in customers)
                {
                    dropdown_customerlist.Items.Insert(count++, new ListItem(c.Name, c.Id));
                }

                dropdown_customerlist.Items.Insert(0, new ListItem(" Select one", "0"));
                //dropdown_customerlist.Items[0].Selected = true;
                dropdown_customerlist.Items[0].Enabled = true;

                dropdown_customerlist.AutoPostBack = true;
                dropdown_customerlist.EnableViewState = true;
                dropdown_customerlist.ViewStateMode = ViewStateMode.Enabled;

                Checkout.ApiServices.Cards.ResponseModels.CardList cardlist = new Checkout.ApiServices.Cards.ResponseModels.CardList();

                string custId = dropdown_customerlist.SelectedValue;

                HttpResponse<Checkout.ApiServices.Cards.ResponseModels.CardList> cardlistresponse = ckoAPIClient.CardService.GetCardList(custId);

                if (!cardlistresponse.HasError)
                {
                    // Access the response object retrieved from the api
                    var cardlistrsp = cardlistresponse.Model;

                    List<Checkout.ApiServices.Cards.ResponseModels.Card> cards = cardlistrsp.Data;

                    dropdown_testCard.DataSource = cards;
                    dropdown_testCard.DataTextField = "Id";
                    dropdown_testCard.DataValueField = "Last4";
                    dropdown_testCard.DataBind();
                }
                else
                {
                    tb_updateRsp.Text = cardlistresponse.Error.Message;
                }
            }
        }
        else
            return;


    }

    private void ProcessUpdate()
    {
        // Create payload
        var cardUpdateRequest = new CardUpdate()
        {
            Name = tb_nameOnCard.Text == "" ? dropdown_customerlist.SelectedItem.Text : tb_nameOnCard.Text,
            DefaultCard = cb_defaultCard.Checked,

            BillingDetails = new Address()
            {
                AddressLine1 = tb_addrLine1.Text,
                AddressLine2 = tb_addrLine2.Text,
                Postcode = tb_postcode.Text,
                City = tb_city.Text,
                State = tb_state.Text,
                Country = tb_country.Text,
                Phone = new Phone()
                {
                    CountryCode = tb_phoneCountryCode.Text,
                    Number = tb_phoneNumber.Text
                }
            }
        };

        try
        {
            // Create APIClient instance with your secret key
            APIClient ckoAPIClient = new APIClient();

            // Submit your request and receive an apiResponse
            HttpResponse<Checkout.ApiServices.SharedModels.OkResponse> apiResponse = ckoAPIClient.CardService.UpdateCard(dropdown_customerlist.SelectedValue, dropdown_testCard.SelectedValue, cardUpdateRequest);

            if (!apiResponse.HasError)
            {
                // Access the response object retrieved from the api
                var okRsp = apiResponse.Model;

                tb_updateRsp.Text = String.Format("Update Message:\n {1} \n\nJSON Response: \n {2}",
                    okRsp.Message, apiResponse.FullJsonResponse);
            }
            else
            {
                tb_updateRsp.Text = string.Format("Event ID:\n{0} \n\nMessage:\n{1} \n\nError Code:\n{2} \n\nErrors:\n{3} \n\n{4}",
                    apiResponse.Error.EventId, apiResponse.Error.Message, apiResponse.Error.ErrorCode, apiResponse.Error.Errors, apiResponse.FullJsonResponse);
            }
        }
        catch (Exception exc)
        {
            //... Handle exception
        }
    }

    protected void dropdown_customerlist_SelectedIndexChanged(object sender, EventArgs e)
    {
        LoadDropDownLists();
    }
}