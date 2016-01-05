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

public partial class ChargeUsingDefaultCard : System.Web.UI.Page
{
    protected APIClient ckoAPIClient;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
            return;

        // Create APIClient instance with your secret key
        ckoAPIClient = new APIClient();

        #region Populates customer ID dropdown list
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

            dropdown_custId.DataTextField = "Id";
            dropdown_custId.DataValueField = "Id";
            dropdown_custId.DataSource = customers;
            dropdown_custId.DataBind();

            dropdown_custEmail.DataTextField = "Email";
            dropdown_custEmail.DataValueField = "Email";
            dropdown_custEmail.DataSource = customers;
            dropdown_custEmail.DataBind();
        }
        else
        {
            tb_chargeRsp.Text = custlistresponse.Error.Message;
        }

        #endregion
    }

    protected void but_chargeUsingDefaultCard_ID_Click(object sender, EventArgs e)
    {
        // Create payload
        var cardChargeRequestModel = new DefaultCardCharge()
        {
            AutoCapture = "N",
            AutoCapTime = 0,
            Currency = "Usd",
            TrackId = "TRK12345",
            TransactionIndicator = "1",
            CustomerIp = "82.23.168.254",
            Description = "Ipad for Ebs travel",
            Value = "100",
            //Email = "happydunno7@hotmail.com", //email address needs to be correct! Else, use customer ID and remove email.
            CustomerId = dropdown_custId.SelectedValue,

            Products = new List<Product>{ new Product(){
                                             Description = "item 1",
                                             Name = "item 1",
                                             Price = 33.5M,
                                             Quantity = 3,
                                             ShippingCost = 5.5M,
                                             Sku = "sku123"
                                            }, 
                                            new Product(){
                                             Description = "item 2",
                                             Name = "item 2",
                                             Price = 31.5M,
                                             Quantity = 3,
                                             ShippingCost = 4.5M,
                                             Sku = "sku456"
                                            }
            },

            Metadata = new Dictionary<string, string>() { { "extraInformation", "EBS travel" } },
            Udf1 = "udf1 string",
            Udf2 = "udf2 string",
            Udf3 = "udf3 string",
            Udf4 = "udf4 string",
            Udf5 = "udf5 string"
        };

        try
        {
            // Create APIClient instance with your secret key
            ckoAPIClient = new APIClient();

            // Submit your request and receive an apiResponse
            HttpResponse<Checkout.ApiServices.Charges.ResponseModels.Charge> apiResponse = ckoAPIClient.ChargeService.ChargeWithDefaultCustomerCard(cardChargeRequestModel);

            if (!apiResponse.HasError)
            {
                // Access the response object retrieved from the api
                var charge = apiResponse.Model;

                tb_chargeRsp.Text = String.Format("Status:\n {0}! \n\nCharge ID:\n {1} \n\nCustomerId:\n {2} \n\nCustomer Name:\n {3} \n\nCustomer Email:\n {4} \n\nCard Id:\n {5} \n\nLast 4 Card Numbers:\n {6} \n\nCharge Response:\n {7} \n\nJSON Response: \n {8}",
                   charge.Status, charge.Id, charge.Card.Name, charge.Card.Name, charge.Email, charge.Card.Id, charge.Card.Last4, charge.ResponseMessage, apiResponse.FullJsonResponse);
            }
            else
            {
                // Api has returned an error object. You can access the details in the error property of the apiResponse.
                // apiResponse.error
                tb_chargeRsp.Text = string.Format("Message:/n{0} Error Code:/n{1} ", apiResponse.Error.Message, apiResponse.Error.ErrorCode);
            }
        }
        catch (Exception exc)
        {
            //... Handle exception
        }
    }


    protected void but_chargeUsingDefaultCard_CustEmail_Click(object sender, EventArgs e)
    {
        // Create payload
        var cardChargeRequestModel = new DefaultCardCharge()
        {
            AutoCapture = "N",
            AutoCapTime = 0,
            Currency = "Usd",
            TrackId = "TRK12345",
            TransactionIndicator = "1",
            CustomerIp = "82.23.168.254",
            Description = "Ipad for Ebs travel",
            Value = "100",
            Email = dropdown_custEmail.SelectedValue,

            Products = new List<Product>{ new Product(){
                                             Description = "item 1",
                                             Name = "item 1",
                                             Price = 33.5M,
                                             Quantity = 3,
                                             ShippingCost = 5.5M,
                                             Sku = "sku123"
                                            }, 
                                            new Product(){
                                             Description = "item 2",
                                             Name = "item 2",
                                             Price = 31.5M,
                                             Quantity = 3,
                                             ShippingCost = 4.5M,
                                             Sku = "sku456"
                                            }
            },

            Metadata = new Dictionary<string, string>() { { "extraInformation", "EBS travel" } },
            Udf1 = "udf1 string",
            Udf2 = "udf2 string",
            Udf3 = "udf3 string",
            Udf4 = "udf4 string",
            Udf5 = "udf5 string"
        };

        try
        {
            // Create APIClient instance with your secret key
            ckoAPIClient = new APIClient();

            // Submit your request and receive an apiResponse
            HttpResponse<Checkout.ApiServices.Charges.ResponseModels.Charge> apiResponse = ckoAPIClient.ChargeService.ChargeWithDefaultCustomerCard(cardChargeRequestModel);

            if (!apiResponse.HasError)
            {
                // Access the response object retrieved from the api
                var charge = apiResponse.Model;

                tb_chargeRsp.Text = String.Format("Status:\n {0}! \n\nCharge ID:\n {1} \n\nCustomerId:\n {2} \n\nCustomer Name:\n {3} \n\nCustomer Email:\n {4} \n\nCard Id:\n {5} \n\nLast 4 Card Numbers:\n {6} \n\nCharge Response:\n {7} \n\nJSON Response: \n {8}",
                    charge.Status, charge.Id, charge.Card.Name, charge.Card.Name, charge.Email, charge.Card.Id, charge.Card.Last4, charge.ResponseMessage, apiResponse.FullJsonResponse);
            }
            else
            {
                // Api has returned an error object. You can access the details in the error property of the apiResponse.
                // apiResponse.error
                tb_chargeRsp.Text = string.Format("Message:/n{0} Error Code:/n{1} ", apiResponse.Error.Message, apiResponse.Error.ErrorCode);
            }
        }
        catch (Exception exc)
        {
            //... Handle exception
        }
    }
}