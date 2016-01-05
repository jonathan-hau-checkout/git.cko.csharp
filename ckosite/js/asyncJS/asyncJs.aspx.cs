using Checkout;
using Checkout.ApiServices.SharedModels;
using Checkout.ApiServices.Tokens.RequestModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class cc_3D : System.Web.UI.Page
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
            ChargeMode = 2, // A valid charge mode: 1 for No 3D, 2 for 3D, 3 Local Payment. Default is 1 if not provided.
            Udf1 = "new token",
            TrackId = "tracker 123456",
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