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

public partial class CaptureCardCharge : System.Web.UI.Page
{
    protected APIClient ckoAPIClient;

    protected string authTrackId;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
            return;

        // Create APIClient instance with your secret key
        ckoAPIClient = new APIClient();


        // TODO:  grab trackid to propagate on.

    }



    protected void but_captureCharge_Click(object sender, EventArgs e)
    {
        // Create payload
        var captureChargeRequestModel = new ChargeCapture() {
            Description = "capture charge", 
            TrackId = "TRK12345", 
            Value = "100" 
        };

        try
        {
            // Create APIClient instance with your secret key
            ckoAPIClient = new APIClient();

            // Submit your request and receive an apiResponse
            HttpResponse<Capture> apiResponse = ckoAPIClient.ChargeService.CaptureCharge(tb_authChargeId.Text, captureChargeRequestModel);

            if (!apiResponse.HasError)
            {
                // Access the response object retrieved from the api
                var capture = apiResponse.Model;

                tb_captureChargeRsp.Text = String.Format("Status:\n {0}! \n\nCapture ID:\n {1} \n\nCapture Response Code:\n {2} \n\nCapture Response Message:\n {3} \n\nCaptured Value:\n {4} \n\nJSON Response: \n {5}",
    capture.Status, capture.Id, capture.ResponseCode, capture.ResponseMessage, capture.Value, apiResponse.FullJsonResponse);  
            }
            else
            {
                // Api has returned an error object. You can access the details in the error property of the apiResponse.
                // apiResponse.error
                tb_captureChargeRsp.Text = string.Format("Message:/n{0} Error Code:/n{1} ", apiResponse.Error.Message, apiResponse.Error.ErrorCode);
            }
        }
        catch (Exception exc)
        {
            //... Handle exception
        }
    }
    
}