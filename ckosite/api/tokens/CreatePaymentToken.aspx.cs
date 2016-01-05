using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Checkout;
using Checkout.ApiServices.Tokens.RequestModels;
using Checkout.ApiServices.SharedModels;
using Checkout.ApiServices.Cards.RequestModels;
using Checkout.ApiServices.Tokens.ResponseModels;

public partial class token_CreateToken : System.Web.UI.Page
{
    protected APIClient ckoAPIClient;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
            return;

        ckoAPIClient = new APIClient();
    }

    protected void but_createPaymentToken_Click(object sender, EventArgs e)
    {

        // Create payload
        var paymentTokenCreateRequest = new PaymentTokenCreate()
        {
            Value = tb_value.Text,
            Currency = tb_currency.Text,
            ChargeMode = 1,
            Udf1 = "new token",
            AutoCapture = "N"
        };

        try
        {
            // Create APIClient instance with your secret key
            APIClient ckoAPIClient = new APIClient();

            // Submit your request and receive an apiResponse
            HttpResponse<Checkout.ApiServices.Tokens.ResponseModels.PaymentToken> apiResponse = ckoAPIClient.TokenService.CreatePaymentToken(paymentTokenCreateRequest);

            if (!apiResponse.HasError)
            {
                // Access the response object retrieved from the api
                var token = apiResponse.Model;

                tb_createRsp.Text = String.Format("Token ID:\n {0} \n\nJSON Response: \n {1}",
                    token.Id, apiResponse.FullJsonResponse);
            }
            else
            {
                // Api has returned an error object. You can access the details in the error property of the apiResponse.
                // apiResponse.error
                tb_createRsp.Text = string.Format("Event ID:\n{0} \n\nMessage:\n{1} \n\nError Code:\n{2} \n\nErrors:\n{3}",
                    apiResponse.Error.EventId, apiResponse.Error.Message, apiResponse.Error.ErrorCode, apiResponse.Error.Errors);
            }
        }
        catch (Exception exc)
        {
            //... Handle exception
        }

    }

}