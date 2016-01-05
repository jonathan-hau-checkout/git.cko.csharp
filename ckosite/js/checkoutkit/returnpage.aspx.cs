using Checkout;
using Checkout.ApiServices.SharedModels;
using Checkout.ApiServices.Tokens.RequestModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class checkoutkit_returnpage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // Gets form variable cko-card-token to be used to charge using card token
        string cardtoken = Request.Form["cko-card-token"];
        string email = Request.Form["email-address"];

        var cardTokenChargeRequest = new Checkout.ApiServices.Charges.RequestModels.CardTokenCharge()
        {
            CardToken = cardtoken,
            Email = email,
            Value = "100",
            Currency = "USD",
            ChargeMode = 1,
            Udf1 = "new token",
            AutoCapture = "N",
            CustomerIp = "6.7.8.9",
            TrackId = "Track_" + DateTime.Now.ToString(@"yyyyMMddHHmmss"),
            ShippingDetails = new Address() { 
                AddressLine1="is a road",
                AddressLine2="whatever bulding",
                City="Singapore",
                Country="SG",
                Postcode="131313",
                State="Singapore",
                Phone = new Phone()
                {
                    CountryCode="10",
                    Number="10101010"
                }
            }
        };

        // Create APIClient instance with your secret key
        APIClient ckoAPIClient = new APIClient();

        try
        {
            // Submit your request and receive an apiResponse
            HttpResponse<Checkout.ApiServices.Charges.ResponseModels.Charge> apiResponse = ckoAPIClient.ChargeService.ChargeWithCardToken(cardTokenChargeRequest);

            if (!apiResponse.HasError)
            {
                // Access the response object retrieved from the api
                var response = apiResponse.Model;

                tb_cardTokenChargeResponse.Text = apiResponse.FullJsonResponse;

            }
            else
            {
            }
        }
        catch (Exception exc)
        {
            //... Handle exception
        }
    }

}