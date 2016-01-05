using Checkout;
using Checkout.ApiServices.SharedModels;
using Checkout.ApiServices.Tokens.RequestModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class tokens_LoadJS : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    public string sPayTok()
    {
        string payTok = string.Empty;

        // Create payload
        var paymentTokenCreateRequest = new PaymentTokenCreate()
        {
            Value = "100",
            Currency = "USD",
            ChargeMode = 1,
            Udf1 = "new token",
            AutoCapture = "N"
        };

        // Create APIClient instance with your secret key
        APIClient ckoAPIClient = new APIClient();

        try
        {
            // Submit your request and receive an apiResponse
            HttpResponse<Checkout.ApiServices.Tokens.ResponseModels.PaymentToken> apiResponse = ckoAPIClient.TokenService.CreatePaymentToken(paymentTokenCreateRequest);

            if (!apiResponse.HasError)
            {
                // Access the response object retrieved from the api
                var response = apiResponse.Model;
                payTok = response.Id;
            }
            else
            {
            }
        }
        catch (Exception exc)
        {
            //... Handle exception
        }

        return payTok;
    }
}