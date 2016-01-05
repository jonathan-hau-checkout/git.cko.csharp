using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Checkout;
using Checkout.ApiServices.SharedModels;
using Checkout.ApiServices.Charges.RequestModels;
using Checkout.ApiServices.Charges.ResponseModels;

public partial class GetCardList : System.Web.UI.Page
{
    protected APIClient ckoAPIClient;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
            return;

        // Create APIClient instance with your secret key
        ckoAPIClient = new APIClient();

        #region Populates customer dropdown list
        Checkout.ApiServices.Customers.ResponseModels.CustomerList custlist = new Checkout.ApiServices.Customers.ResponseModels.CustomerList();

        Checkout.ApiServices.Customers.RequestModels.CustomerGetList gl = new Checkout.ApiServices.Customers.RequestModels.CustomerGetList();
        gl.Count = 10;
        gl.FromDate = new DateTime(2015, 1, 1);
        gl.ToDate = DateTime.Now;
        gl.Offset = 0;

        HttpResponse<Checkout.ApiServices.Customers.ResponseModels.CustomerList> custlistresponse = ckoAPIClient.CustomerService.GetCustomerList(gl);

        if (!custlistresponse.HasError)
        {
            // Access the response object retrieved from the api
            var custlistrsp = custlistresponse.Model;

            List<Checkout.ApiServices.Customers.ResponseModels.Customer> customers = custlistrsp.Data;

            dropdown_custId.DataTextField = "Name";
            dropdown_custId.DataValueField = "Id";
            dropdown_custId.DataSource = customers;
            dropdown_custId.DataBind();
        }
        else
        {
            tb_chargeRsp.Text = custlistresponse.Error.Message;
        }

        
        #endregion
    }

    protected void but_getCardList_Click(object sender, EventArgs e)
    {
        // Create APIClient instance with your secret key
        ckoAPIClient = new APIClient();

        #region Retrieves card ID dropdown list
        Checkout.ApiServices.Cards.ResponseModels.CardList cardlist = new Checkout.ApiServices.Cards.ResponseModels.CardList();

        string custId = dropdown_custId.SelectedValue; 

        HttpResponse<Checkout.ApiServices.Cards.ResponseModels.CardList> cardlistresponse = ckoAPIClient.CardService.GetCardList(custId);
        
        string cardlisttext="";
        
        if (!cardlistresponse.HasError)
        {
            // Access the response object retrieved from the api
            var cardlistrsp = cardlistresponse.Model;

            List<Checkout.ApiServices.Cards.ResponseModels.Card> cards = cardlistrsp.Data;

            foreach (Checkout.ApiServices.Cards.ResponseModels.Card c in cards)
            {
                cardlisttext += string.Format("Payment Method: {0} | Last 4: {1} | Card ID: {2} | Customer ID: {3}\n\n", c.PaymentMethod, c.Last4, c.Id, c.CustomerId);
            }

            tb_chargeRsp.Text = cardlisttext;
        }
        else
        {
            tb_chargeRsp.Text = cardlistresponse.Error.Message;
        }
        #endregion
    }

}