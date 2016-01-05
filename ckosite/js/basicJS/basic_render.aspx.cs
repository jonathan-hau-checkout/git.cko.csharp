using Checkout;
using Checkout.ApiServices.SharedModels;
using Checkout.ApiServices.Tokens.RequestModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class basicjs : System.Web.UI.Page
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
            Value = "100",      // this value gets sent for processing even if the aspx front end displays a different value due to error or other reason.
            Currency = "USD",
            ChargeMode = 1,     //A valid charge mode: 1 for No 3D, 2 for 3D, 3 Local Payment. Default is 1 if not provided.
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
        }

        return payTok;
    }

    /* URL Ref: http://developers.checkout.com/docs/server/api-reference/charges/verify-charge
     * Can use either charge id or payment token as in this case
     * Identical to "get charge operation" which can only use charge id to return a charge response
     */
    protected void butVerifyCharge_Click(object sender, EventArgs e)
    {
        string paymentToken = Request.Form["cko-payment-token"]; // example of payment token "pay_tok_165B7AB1-24EA-460D-82DF-F4D3CE3A9709"

        string chargeResponse = string.Empty;

        // Create APIClient instance with your secret key
        APIClient ckoAPIClient = new APIClient();

        try
        {
            // Submit your request and receive an apiResponse
            HttpResponse<Checkout.ApiServices.Charges.ResponseModels.Charge> apiResponse = ckoAPIClient.ChargeService.GetCharge(paymentToken);

            if (!apiResponse.HasError)
            {
                // Access the response object retrieved from the api
                //var response = apiResponse.Model;

                chargeResponse = apiResponse.FullJsonResponse;
            }
            else
            {
            }
        }
        catch (Exception exc)
        {
        }
    }
}