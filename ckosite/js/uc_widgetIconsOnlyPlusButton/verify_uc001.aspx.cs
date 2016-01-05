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

public partial class basicJS_verify : System.Web.UI.Page
{
    protected APIClient ckoAPIClient;
    protected string pt;

    protected void Page_Load(object sender, EventArgs e)
    {
        // Create APIClient instance with your secret key
        ckoAPIClient = new APIClient();

        pt = string.Empty;

        if (Request.Form.AllKeys.Contains("cko-payment-token") && !string.IsNullOrEmpty(Request.Form["cko-payment-token"]))
        {
            pt = Request.Form["cko-payment-token"];
        }

        if (Request.QueryString.AllKeys.Contains("cko-payment-token") && !string.IsNullOrEmpty(Request.QueryString["cko-payment-token"]))
        {
            pt = Request.QueryString["cko-payment-token"];
        }

        // Verify payment token
        try
        {
            // Create APIClient instance with your secret key
            ckoAPIClient = new APIClient();

            // Submit your request and receive an apiResponse
            HttpResponse<Charge> apiResponse = ckoAPIClient.ChargeService.VerifyCharge(pt);

            if (!apiResponse.HasError)
            {
                // Access the response object retrieved from the api
                var charge = apiResponse.Model;
                tb_verifyCharge.Text = apiResponse.FullJsonResponse;

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