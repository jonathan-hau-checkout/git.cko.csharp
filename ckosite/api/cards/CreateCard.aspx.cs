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

public partial class card_CreateCard : System.Web.UI.Page
{
    protected APIClient ckoAPIClient;

    protected string expiryMonth;

    protected string expiryYear;

    protected string cvv;

    protected string cardNum;

    private string[] RandomString(int length1, int length2)
    {
        var ran = new Random();
        string[] custname = new string[2];

        custname[0] = new string(Enumerable.Range(0, length1).Select(_ => (char)ran.Next('a', 'n')).ToArray());
        custname[1] = new string(Enumerable.Range(0, length2).Select(_ => (char)ran.Next('o', 'z')).ToArray()); ;

        return custname;
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
            return;

        ckoAPIClient = new APIClient();

        #region Populates customer dropdown list
        // Submit your request and receive an apiResponse
        Checkout.ApiServices.Customers.RequestModels.CustomerGetList cgl = new Checkout.ApiServices.Customers.RequestModels.CustomerGetList();
        cgl.Count = 10;
        cgl.FromDate = DateTime.Now.AddYears(-2);
        cgl.ToDate = DateTime.Now;
        cgl.Offset = 0;

        HttpResponse<Checkout.ApiServices.Customers.ResponseModels.CustomerList> apiResponse = ckoAPIClient.CustomerService.GetCustomerList(cgl);

        if (!apiResponse.HasError)
        {
            // Access the response object retrieved from the api
            var customer = apiResponse.Model;

            List<Customer> customers = customer.Data;

            dropdown_customerlist.DataTextField = "Name";
            dropdown_customerlist.DataValueField = "Id";
            dropdown_customerlist.DataSource = customers;
            dropdown_customerlist.DataBind();

        }
        else
        {
            // Api has returned an error object. You can access the details in the error property of the apiResponse.
            // apiResponse.error
            tb_createRsp.Text = apiResponse.Error.Message;
        }
        #endregion
    }

    protected void but_createCard_Click(object sender, EventArgs e)
    {
        // populates test card dropdown list
        switch (dropdown_testCard.SelectedValue)
        {
            case "Visa01":
                expiryMonth = "06";
                expiryYear = "2018";
                cvv = "100";
                cardNum = "4242424242424242";
                break;
            case "Visa02":
                expiryMonth = "06";
                expiryYear = "2017";
                cvv = "956";
                cardNum = "4543474002249996";
                break;
            case "Master01":
                expiryMonth = "06";
                expiryYear = "2017";
                cvv = "257";
                cardNum = "5436031030606378";
                break;
            case "Amex01":
                expiryMonth = "06";
                expiryYear = "2018";
                cvv = "1051";
                cardNum = "345678901234564";
                break;
            case "Amex02":
                expiryMonth = "06";
                expiryYear = "2018";
                cvv = "1000";
                cardNum = "378282246310005";
                break;
            case "Diners01":
                expiryMonth = "06";
                expiryYear = "2017";
                cvv = "257";
                cardNum = "30123456789019";
                break;
            case "Jcb01":
                expiryMonth = "06";
                expiryYear = "2018";
                cvv = "100";
                cardNum = "3530111333300000";
                break;
            case "Discover01":
                expiryMonth = "06";
                expiryYear = "2018";
                cvv = "100";
                cardNum = "6011111111111117";
                break;
            default:
                expiryMonth = "06";
                expiryYear = "2018";
                cvv = "100";
                cardNum = "4242424242424242";
                break;
        }

        // Create payload
        var cardCreateRequest = new CardCreate()
        {
            Name = dropdown_customerlist.SelectedItem.Text,
            Number = cardNum,
            ExpiryYear = expiryYear,
            ExpiryMonth = expiryMonth,
            Cvv = cvv,
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
            HttpResponse<Checkout.ApiServices.Cards.ResponseModels.Card> apiResponse = ckoAPIClient.CardService.CreateCard(dropdown_customerlist.SelectedValue, cardCreateRequest);

            if (!apiResponse.HasError)
            {
                // Access the response object retrieved from the api
                var card = apiResponse.Model;

                tb_createRsp.Text = String.Format("Card ID:\n {0} \n\nCustomer Name on Card:\n {1} \n\nLast 4 Numbers:\n {2} \n\nPayment Method:\n {3} \n\nJSON Response: \n {4}",
                    card.Id, card.Name, card.Last4, card.PaymentMethod, apiResponse.FullJsonResponse);
            }
            else
            {
                // Api has returned an error object. You can access the details in the error property of the apiResponse.
                // apiResponse.error
                tb_createRsp.Text = string.Format("Event ID:\n{0} \n\nMessage:\n{1} \n\nError Code:\n{2} \n\nErrors:\n{3} \n\n{4}",
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

    }
}