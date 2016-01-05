<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CreatePaymentToken.aspx.cs" Inherits="token_CreateToken" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Create Payment Token</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h1 style="box-sizing: border-box; margin: 10px 0px 30px; -webkit-font-smoothing: antialiased; font-style: normal; font-family: 'Open Sans Light', Helvetica, sans-serif; font-size: 24px; font-weight: 300; color: rgb(37, 86, 160); font-variant: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">Create Payment Token</h1>
    
        <div>
            
            Value<br />
            <asp:TextBox ID="tb_value" runat="server">100</asp:TextBox>
            <br />
            <br />
            Currency<br />
            <asp:TextBox ID="tb_currency" runat="server">SGD</asp:TextBox>
            <br />
            <br />
        <asp:Button ID="but_createPaymentToken" runat="server" OnClick="but_createPaymentToken_Click" Text="Create Payment Token" />
            <br />
            <br />
            <br />
            2. Response<br />
            <br />
            <asp:TextBox ID="tb_createRsp" runat="server" Height="238px" ReadOnly="True" TextMode="MultiLine" Width="900px"></asp:TextBox>
            
        </div>
        <br />
        <p style="box-sizing: border-box; line-height: 25px; margin: 20px 0px;">
            This endpoint creates a Payment Token using amount and currency fields.</p>
        <div style="box-sizing: border-box;">
            <div style="box-sizing: border-box; color: rgb(49, 59, 75); font-family: 'Open Sans', Helvetica, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">
                <h3 style="box-sizing: border-box; margin: 20px 0px; -webkit-font-smoothing: antialiased; font-style: normal; font-family: 'Open Sans', Helvetica, sans-serif; font-size: 15px; color: rgb(49, 59, 75); font-weight: bold;">Request</h3>
                <table class="jsonTable" style="box-sizing: border-box; margin: 20px 0px; width: 920px; max-width: 100%; border-collapse: separate; border-radius: 4px; border-spacing: 1px; overflow: hidden; background-color: rgb(197, 209, 230);">
                    <thead style="box-sizing: border-box;">
                        <tr style="box-sizing: border-box; height: 36px;">
                            <th colspan="2" style="box-sizing: border-box; font-weight: bold; color: rgb(255, 255, 255); font-size: 13px; height: 36px; padding: 2px 8px; background-color: rgb(169, 179, 195);">Http Request</th>
                        </tr>
                    </thead>
                    <tbody style="box-sizing: border-box;">
                        <tr style="box-sizing: border-box; height: 36px;">
                            <td style="box-sizing: border-box; font-weight: 600; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">Uri:</td>
                            <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">&#39;<a href="https://sandbox.checkout.com/api2/v2/tokens/payment" style="box-sizing: border-box; text-decoration: none; font-weight: 600; color: rgb(48, 117, 221);" target="_self">https://sandbox.checkout.com/api2/v2/tokens/payment</a>&#39;</td>
                        </tr>
                        <tr style="box-sizing: border-box; height: 36px;">
                            <td style="box-sizing: border-box; font-weight: 600; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">Http Method:</td>
                            <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);"><code class="" style="box-sizing: border-box; line-height: 25px; padding: 0px; border-radius: 3px; font-family: 'Source Code Pro'; background: none;">POST</code></td>
                        </tr>
                        <tr style="box-sizing: border-box; height: 36px;">
                            <td style="box-sizing: border-box; font-weight: 600; line-height: 25px; font-size: 13px; padding: 2px 8px; border-bottom-left-radius: 4px; background-color: rgb(255, 255, 255);">Header Required:</td>
                            <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; border-bottom-right-radius: 4px; background-color: rgb(255, 255, 255);"><code class="" style="box-sizing: border-box; line-height: 25px; padding: 0px; border-radius: 3px; font-family: 'Source Code Pro'; background: none;">SECRET KEY</code></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <h3 style="box-sizing: border-box; margin: 20px 0px; -webkit-font-smoothing: antialiased; font-style: normal; font-family: 'Open Sans', Helvetica, sans-serif; font-size: 15px; color: rgb(49, 59, 75); font-weight: bold; font-variant: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">Request Payload Fields</h3>
        <table id="createPaymentTable" cellpadding="1" cellspacing="1" class="jsonTable" style="box-sizing: border-box; margin: 20px 0px; width: 920px; max-width: 100%; border-collapse: separate; border-radius: 4px; border-spacing: 1px; overflow: hidden; color: rgb(49, 59, 75); font-family: 'Open Sans', Helvetica, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(197, 209, 230);">
            <thead style="box-sizing: border-box;">
                <tr style="box-sizing: border-box; height: 36px;">
                    <th style="box-sizing: border-box; font-weight: bold; color: rgb(255, 255, 255); font-size: 13px; height: 36px; padding: 2px 8px; background-color: rgb(169, 179, 195);">FieldName</th>
                    <th style="box-sizing: border-box; font-weight: bold; color: rgb(255, 255, 255); font-size: 13px; height: 36px; padding: 2px 8px; background-color: rgb(169, 179, 195);">Description</th>
                    <th style="box-sizing: border-box; font-weight: bold; color: rgb(255, 255, 255); font-size: 13px; height: 36px; padding: 2px 8px; background-color: rgb(169, 179, 195);">Type</th>
                    <th style="box-sizing: border-box; font-weight: bold; color: rgb(255, 255, 255); font-size: 13px; height: 36px; padding: 2px 8px; background-color: rgb(169, 179, 195);">required</th>
                </tr>
            </thead>
            <tbody style="box-sizing: border-box;">
                <tr style="box-sizing: border-box; height: 36px;">
                    <td style="box-sizing: border-box; font-weight: 600; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);"><b style="box-sizing: border-box;">value</b></td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">Charges with 0 value not allowed. The value should be a positive integer in small currency units (eg: 100 cents for $1). You don’t need to worry if the currency does not support decimals. We will do the conversions for you. Max length 6 digits.</td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">integer</td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">yes</td>
                </tr>
                <tr style="box-sizing: border-box; height: 36px;">
                    <td style="box-sizing: border-box; font-weight: 600; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);"><b style="box-sizing: border-box;">currency</b></td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">Three-letter ISO currency code representing the currency in which the charge was made. (refer to currency codes and names)</td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">string</td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">yes</td>
                </tr>
                <tr style="box-sizing: border-box; height: 36px;">
                    <td style="box-sizing: border-box; font-weight: 600; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);"><b style="box-sizing: border-box;">chargeMode</b></td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">A valid charge mode: 1 for No 3D, 2 for 3D, 3 Local Payment. Default is 1 if not provided.</td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">integer</td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">yes</td>
                </tr>
                <tr style="box-sizing: border-box; height: 36px;">
                    <td style="box-sizing: border-box; font-weight: 600; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);"><b style="box-sizing: border-box;">trackId</b></td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">Order tracking id generated by the merchant. Max length of 100 characters.</td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">string</td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">no</td>
                </tr>
                <tr style="box-sizing: border-box; height: 36px;">
                    <td style="box-sizing: border-box; font-weight: 600; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);"><b style="box-sizing: border-box;">transactionIndicator</b></td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">Transaction indicator. 1 for regular, 2 for recurring, 3 for MOTO. Defaults to 1 if not specified.</td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">string</td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">no</td>
                </tr>
                <tr style="box-sizing: border-box; height: 36px;">
                    <td style="box-sizing: border-box; font-weight: 600; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);"><b style="box-sizing: border-box;">customerIp</b></td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">Customer/Card holder Ip.</td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">string</td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">no</td>
                </tr>
                <tr style="box-sizing: border-box; height: 36px;">
                    <td style="box-sizing: border-box; font-weight: 600; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);"><b style="box-sizing: border-box;">description</b></td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">A description that can be added to this object.</td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">string</td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">no</td>
                </tr>
                <tr style="box-sizing: border-box; height: 36px;">
                    <td style="box-sizing: border-box; font-weight: 600; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);"><b style="box-sizing: border-box;">autoCapture</b></td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">Accepted values either &#39;y&#39; or &#39;n&#39;. Default is is set to &#39;y&#39;. Defines if the charge will be authorised (&#39;n&#39;) or captured (&#39;y&#39;). Authorisations will expire in 7 days.</td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">string</td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">no</td>
                </tr>
                <tr style="box-sizing: border-box; height: 36px;">
                    <td style="box-sizing: border-box; font-weight: 600; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);"><b style="box-sizing: border-box;">autoCapTime</b></td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">Delayed capture time in hours between 0 and 168 inclusive that corresponds to 7 days (7x24). E.g. 0.5 interpreted as 30 mins.</td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">decimal</td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">no</td>
                </tr>
                <tr style="box-sizing: border-box; height: 36px;">
                    <td style="box-sizing: border-box; font-weight: 600; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);"><b style="box-sizing: border-box;">shippingDetails</b></td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">Shipping address details.</td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">hash</td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">no</td>
                </tr>
                <tr style="box-sizing: border-box; height: 36px;">
                    <td style="box-sizing: border-box; font-weight: 600; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);"><span class="tab" style="box-sizing: border-box;">addressLine1</span></td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">Address field line 1. Max length of 100 characters.</td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">string</td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">no</td>
                </tr>
                <tr style="box-sizing: border-box; height: 36px;">
                    <td style="box-sizing: border-box; font-weight: 600; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);"><span class="tab" style="box-sizing: border-box;">addressLine2</span></td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">Address field line 1. Max length of 100 characters.</td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">string</td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">no</td>
                </tr>
                <tr style="box-sizing: border-box; height: 36px;">
                    <td style="box-sizing: border-box; font-weight: 600; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);"><span class="tab" style="box-sizing: border-box;">postcode</span></td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">Address postcode. Max. legth of 50 characters.</td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">string</td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">no</td>
                </tr>
                <tr style="box-sizing: border-box; height: 36px;">
                    <td style="box-sizing: border-box; font-weight: 600; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);"><span class="tab" style="box-sizing: border-box;">country</span></td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">The country ISO2 code e.g. US. See provided list of supported ISO formatted countries.</td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">string</td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">no</td>
                </tr>
                <tr style="box-sizing: border-box; height: 36px;">
                    <td style="box-sizing: border-box; font-weight: 600; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);"><span class="tab" style="box-sizing: border-box;">city</span></td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">Address city. Max length of 100 characters.</td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">string</td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">no</td>
                </tr>
                <tr style="box-sizing: border-box; height: 36px;">
                    <td style="box-sizing: border-box; font-weight: 600; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);"><span class="tab" style="box-sizing: border-box;">state</span></td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">Address state. Max length of 100 characters.</td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">string</td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">no</td>
                </tr>
                <tr style="box-sizing: border-box; height: 36px;">
                    <td style="box-sizing: border-box; font-weight: 600; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);"><span class="tab" style="box-sizing: border-box;">phone</span></td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">Contact phone object for the card holder. If provided, it will contain the countryCode and number properties e.g. &#39;phone&#39;:{&#39;countryCode&#39;: &#39;44&#39; , &#39;number&#39;:&#39;12345678&#39;}.</td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">object</td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">no</td>
                </tr>
                <tr style="box-sizing: border-box; height: 36px;">
                    <td style="box-sizing: border-box; font-weight: 600; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);"><span class="subtab" style="box-sizing: border-box;">countryCode</span></td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">Country code for the phone number of the card holder e.g. 44 for United Kingdom. Please refer to Country ISO and Code section in the Other Codes menu option.</td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">string</td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">no</td>
                </tr>
                <tr style="box-sizing: border-box; height: 36px;">
                    <td style="box-sizing: border-box; font-weight: 600; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);"><span class="subtab" style="box-sizing: border-box;">number</span></td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">Contact phone number for the card holder. Its length should be between 6 and 25 characters. Allowed characters are: numbers, +, (,) ,/ and &#39; &#39;.</td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">string</td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">no</td>
                </tr>
                <tr style="box-sizing: border-box; height: 36px;">
                    <td style="box-sizing: border-box; font-weight: 600; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);"><b style="box-sizing: border-box;">products</b></td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">An array of Product details</td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">array</td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">no</td>
                </tr>
                <tr style="box-sizing: border-box; height: 36px;">
                    <td style="box-sizing: border-box; font-weight: 600; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);"><span class="products_property tab" style="box-sizing: border-box;">name</span></td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">Name of product. Max of 100 characters.</td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">string</td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">no</td>
                </tr>
                <tr style="box-sizing: border-box; height: 36px;">
                    <td style="box-sizing: border-box; font-weight: 600; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);"><span class="products_property tab" style="box-sizing: border-box;">description</span></td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">Description of the product.Max of 500 characters.</td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">string</td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">no</td>
                </tr>
                <tr style="box-sizing: border-box; height: 36px;">
                    <td style="box-sizing: border-box; font-weight: 600; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);"><span class="products_property tab" style="box-sizing: border-box;">sku</span></td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">Stock Unit Identifier.Unique product identifier. Max length of 100 characters.</td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">string</td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">no</td>
                </tr>
                <tr style="box-sizing: border-box; height: 36px;">
                    <td style="box-sizing: border-box; font-weight: 600; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);"><span class="products_property tab" style="box-sizing: border-box;">price</span></td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">Product price per unit. Max. of 6 digits.</td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">decimal</td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">no</td>
                </tr>
                <tr style="box-sizing: border-box; height: 36px;">
                    <td style="box-sizing: border-box; font-weight: 600; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);"><span class="products_property tab" style="box-sizing: border-box;">quantity</span></td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">Units of the product to be shipped. Max length of 3 digits.</td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">integer</td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">no</td>
                </tr>
                <tr style="box-sizing: border-box; height: 36px;">
                    <td style="box-sizing: border-box; font-weight: 600; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);"><span class="products_property tab" style="box-sizing: border-box;">image</span></td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">image link to product on merchant website.</td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">string</td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">no</td>
                </tr>
                <tr style="box-sizing: border-box; height: 36px;">
                    <td style="box-sizing: border-box; font-weight: 600; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);"><span class="products_property tab" style="box-sizing: border-box;">shippingCost</span></td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">Shipping costs. Max of 6 digits.</td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">decimal</td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">no</td>
                </tr>
                <tr style="box-sizing: border-box; height: 36px;">
                    <td style="box-sizing: border-box; font-weight: 600; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);"><span class="products_property tab" style="box-sizing: border-box;">trackingUrl</span></td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">Third party tracking system url. Max length of 255 characters.</td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">string</td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">no</td>
                </tr>
                <tr style="box-sizing: border-box; height: 36px;">
                    <td style="box-sizing: border-box; font-weight: 600; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);"><b style="box-sizing: border-box;">metadata</b></td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">A hash of FieldName and value pairs e.g. {&#39;keys1&#39;: &#39;Value1&#39;}. Max length of key(s) and value(s) is 100 each. A max. of 10 KVP are allowed.</td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">hash</td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">no</td>
                </tr>
                <tr style="box-sizing: border-box; height: 36px;">
                    <td style="box-sizing: border-box; font-weight: 600; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);"><b style="box-sizing: border-box;">udf1</b></td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">User defined field 1, max. 100 characters</td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">string</td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">no</td>
                </tr>
                <tr style="box-sizing: border-box; height: 36px;">
                    <td style="box-sizing: border-box; font-weight: 600; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);"><b style="box-sizing: border-box;">udf2</b></td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">User defined field 2, max. 100 characters</td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">string</td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">no</td>
                </tr>
                <tr style="box-sizing: border-box; height: 36px;">
                    <td style="box-sizing: border-box; font-weight: 600; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);"><b style="box-sizing: border-box;">udf3</b></td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">User defined field 3, max. 100 characters</td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">string</td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">no</td>
                </tr>
                <tr style="box-sizing: border-box; height: 36px;">
                    <td style="box-sizing: border-box; font-weight: 600; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);"><b style="box-sizing: border-box;">udf4</b></td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">User defined field 4, max. 100 characters</td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">string</td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">no</td>
                </tr>
                <tr style="box-sizing: border-box; height: 36px;">
                    <td style="box-sizing: border-box; font-weight: 600; line-height: 25px; font-size: 13px; padding: 2px 8px; border-bottom-left-radius: 4px; background-color: rgb(255, 255, 255);"><b style="box-sizing: border-box;">udf5</b></td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">User defined field 5, max. 100 characters</td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">string</td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; border-bottom-right-radius: 4px; background-color: rgb(255, 255, 255);">no</td>
                </tr>
            </tbody>
        </table>
        <h3 style="box-sizing: border-box; margin: 20px 0px; -webkit-font-smoothing: antialiased; font-style: normal; font-family: 'Open Sans', Helvetica, sans-serif; font-size: 15px; color: rgb(49, 59, 75); font-weight: bold; font-variant: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">Response</h3>
        <p style="box-sizing: border-box; line-height: 25px; margin: 20px 0px; color: rgb(49, 59, 75); font-family: 'Open Sans', Helvetica, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">
            Returns a Charge object.</p>
    
    </div>
    </form>
</body>
</html>
