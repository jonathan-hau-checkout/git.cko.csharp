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
using Checkout.ApiServices.Cards.ResponseModels;
using Checkout.ApiServices.Cards.RequestModels;


public partial class ChargeUsingFullCardDetails : System.Web.UI.Page
{
    protected APIClient ckoAPIClient;

    protected string expiryMonth;

    protected string expiryYear;

    protected string cvv;

    protected string cardNum;

    private string[] RandomString(int length1, int length2)
    {
        var ran = new Random();
        string[] custname = new string[2];

        custname[0] = new string(Enumerable.Range(0, length1).Select(_ => (char)ran.Next('a', 'n')).ToArray());
        custname[1] = new string(Enumerable.Range(0, length2).Select(_ => (char)ran.Next('o', 'z')).ToArray()); ;

        return custname;
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
            return;

        // generates random customer name
        string[] custname = RandomString(3, 5);

        tb_custName.Text = string.Format("{0} {1}", custname[0].Substring(0, 1).ToUpper() + custname[0].Substring(1),
                                                    custname[1].Substring(0, 1).ToUpper() + custname[1].Substring(1));

        // generates random email
        tb_custEmail.Text = string.Format("{0}.{1}@checkout.com", custname[0], custname[1]);

    }

    protected void but_chargeUsingCardId_Click(object sender, EventArgs e)
    {
        // determines selected card
        switch (dropdown_testCard.SelectedValue)
        {
            case "Visa01":
                expiryMonth = "06";
                expiryYear = "2018";
                cvv = "100";
                cardNum = "4242424242424242";
                break;
            case "Visa02":
                expiryMonth = "06";
                expiryYear = "2017";
                cvv = "956";
                cardNum = "4543474002249996";
                break;
            case "Master01":
                expiryMonth = "06";
                expiryYear = "2017";
                cvv = "257";
                cardNum = "5436031030606378";
                break;
            case "Amex01":
                expiryMonth = "06";
                expiryYear = "2017";
                cvv = "1051";
                cardNum = "345678901234564";
                break;
            case "Amex02":
                expiryMonth = "06";
                expiryYear = "2018";
                cvv = "1000";
                cardNum = "378282246310005";
                break;
            case "Diners01":
                expiryMonth = "06";
                expiryYear = "2017";
                cvv = "257";
                cardNum = "30123456789019";
                break;
            case "Jcb01":
                expiryMonth = "06";
                expiryYear = "2018";
                cvv = "100";
                cardNum = "3530111333300000";
                break;
            case "Discover01":
                expiryMonth = "06";
                expiryYear = "2018";
                cvv = "100";
                cardNum = "6011111111111117";
                break;
            default:
                expiryMonth = "06";
                expiryYear = "2018";
                cvv = "100";
                cardNum = "4242424242424242";
                break;
        }

        // Creates payload
        var cardRequestModel = new CardCharge()
        {
            AutoCapture = cb_autocap.Checked?"Y":"N",
            AutoCapTime = 0,
            Currency = tb_currency.Text,
            TrackId = "TRK12345",
            TransactionIndicator = "1",
            CustomerIp = "82.23.168.254",
            Description = "Ipad for Ebs travel",
            Value = tb_value.Text,
            Email = tb_custEmail.Text,
            Card = new CardCreate()
            {
                ExpiryMonth = expiryMonth,
                ExpiryYear = expiryYear,
                Cvv = cvv,
                Number = cardNum,
                Name = tb_custName.Text,
                BillingDetails = new Address()
                {
                    AddressLine1 = "Flat 1",
                    AddressLine2 = "Glading Fields",
                    Postcode = "N16 2BR",
                    City = "London",
                    State = "Hackney",
                    Country = "GB",
                    Phone = new Phone()
                    {
                        CountryCode = "65",
                        Number = "12345678"
                    }
                }
            },
            Descriptor = new BillingDescriptor()
            {
                City = tb_descriptorCity.Text,
                Name = tb_descriptorName.Text
            },
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
            HttpResponse<Charge> apiResponse = ckoAPIClient.ChargeService.ChargeWithCard(cardRequestModel);

            if (!apiResponse.HasError)
            {
                // Access the response object retrieved from the api
                var charge = apiResponse.Model;

                tb_chargeRsp.Text = String.Format("Status:\n {0}! \n\nCharge ID:\n {1} \n\nCustomerId:\n {2} \n\nCard Id:\n {3} \n\nLast 4 Card Numbers:\n {4} \n\nCharge Response:\n {5} \n\nJSON Response: \n {6}",
                    charge.Status, charge.Id, charge.Card.CustomerId, charge.Card.Id, charge.Card.Last4, charge.ResponseMessage, apiResponse.FullJsonResponse);
            }
            else
            {
                // Api has returned an error object. You can access the details in the error property of the apiResponse.
                // apiResponse.error
                tb_chargeRsp.Text = string.Format("Event ID:\n{0} \n\nMessage:\n{1} \n\nError Code:\n{2} \n\nErrors:\n{3}",
                    apiResponse.Error.EventId, apiResponse.Error.Message, apiResponse.Error.ErrorCode, apiResponse.Error.Errors);
            }
        }
        catch (Exception exc)
        {
            //... Handle exception
        }
    }


}