﻿using System;
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

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
            return;

        // Create APIClient instance with your secret key
        ckoAPIClient = new APIClient();

        #region Populates card ID dropdown list
        Checkout.ApiServices.Cards.ResponseModels.CardList cardlist = new Checkout.ApiServices.Cards.ResponseModels.CardList();

        string custId = tb_custId.Text;

        HttpResponse<Checkout.ApiServices.Cards.ResponseModels.CardList> cardlistresponse = ckoAPIClient.CardService.GetCardList(custId);

        if (!cardlistresponse.HasError)
        {
            // Access the response object retrieved from the api
            var cardlistrsp = cardlistresponse.Model;

            List<Checkout.ApiServices.Cards.ResponseModels.Card> cards = cardlistrsp.Data;

            dropdown_cardIDs.DataTextField = "Id";
            dropdown_cardIDs.DataValueField = "Id";
            dropdown_cardIDs.DataSource = cards;
            dropdown_cardIDs.DataBind();
            dropdown_cardIDs.Items.Insert(0, new ListItem(" Select one", "0"));
        }
        else
        {
            tb_custId.Text = cardlistresponse.Error.Message;
        }

        #endregion
    }

    protected void but_chargeUsingCardId_Click(object sender, EventArgs e)
    {
        // Create payload
        var cardChargeRequestModel = new CardIdCharge()
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
            CustomerId = "cust_0CDCC1FC-F947-4698-93AE-0A30F6DDD1EE",


            CardId = dropdown_cardIDs.SelectedItem.Value,

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
            HttpResponse<Charge> apiResponse = ckoAPIClient.ChargeService.ChargeWithCardId(cardChargeRequestModel);

            if (!apiResponse.HasError)
            {
                // Access the response object retrieved from the api
                var charge = apiResponse.Model;

                tb_chargeRsp.Text = String.Format("Status:\n {0}! \n\nCharge ID:\n {1} \n\nCustomerId:\n {2} \n\nCard Id:\n {3} \n\nLast 4 Card Numbers:\n {4} \n\nCharge Response:\n {5} \n\nJSON Response: \n {6}",
                    charge.Status, charge.Id, charge.Card.CustomerId, charge.Card.Id, charge.Card.Last4, charge.ResponseMessage, apiResponse.FullJsonResponse);  

                label_chargeId.Text = charge.Id;
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

    protected void but_captureCharge_Click(object sender, EventArgs e)
    {
        // Create payload
        var captureChargeRequestModel = new ChargeCapture() { Description = "capture charge", TrackId = "TRK12345", Value = "100" };

        try
        {
            // Create APIClient instance with your secret key
            ckoAPIClient = new APIClient();

            // Submit your request and receive an apiResponse
            HttpResponse<Capture> apiResponse = ckoAPIClient.ChargeService.CaptureCharge(label_chargeId.Text, captureChargeRequestModel);

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