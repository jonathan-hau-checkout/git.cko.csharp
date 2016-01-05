using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Checkout;
using Checkout.ApiServices.SharedModels;

public partial class alternativePayment_callback : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        APIClient ckoAPIClient = new APIClient();

        try
        {
        /* sample callback url page, set in hub. url variables tagged on.
        http://jonathan.checkout.com/success?cko-payment-token=pay_tok_e8a3301b-b44f-4925-971b-f8c1e5a2cf31&responseCode=10000&trackId=tracker%20123456
        */
            //tb_chargeRsp.Text = Request.QueryString["cko-payment-token"];
            //string paymentTokenString = Request.QueryString["cko-payment-token"];
            string paymentTokenString = string.Empty;

            if (Request.Form.AllKeys.Contains("cko-payment-token") && !string.IsNullOrEmpty(Request.Form["cko-payment-token"]))
            {
                paymentTokenString = Request.Form["cko-payment-token"];
            }

            if (Request.QueryString.AllKeys.Contains("cko-payment-token") && !string.IsNullOrEmpty(Request.QueryString["cko-payment-token"]))
            {
                paymentTokenString = Request.QueryString["cko-payment-token"];
            } 

            // Submit your request and receive an apiResponse
            HttpResponse<Checkout.ApiServices.Charges.ResponseModels.Charge> apiResponse = ckoAPIClient.ChargeService.VerifyCharge(paymentTokenString);
            
            if (!apiResponse.HasError)
            {
                // Access the response object retrieved from the api
                var token = apiResponse.Model;

                tb_chargeRsp.Text = apiResponse.FullJsonResponse;
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