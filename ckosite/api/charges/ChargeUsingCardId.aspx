﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ChargeUsingCardId.aspx.cs" Inherits="ChargeUsingCardId" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Charge using Card ID</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h1 style="box-sizing: border-box; margin: 10px 0px 30px; -webkit-font-smoothing: antialiased; font-style: normal; font-family: 'Open Sans Light', Helvetica, sans-serif; font-size: 24px; font-weight: 300; color: rgb(37, 86, 160); font-variant: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">Charge using Card ID</h1>
    
        <div>
            
            1. Charge using a card ID<br />
            <br />
            Customer ID:<br />
            <asp:TextBox ID="tb_custId" runat="server" Width="418px" ReadOnly="True">cust_0CDCC1FC-F947-4698-93AE-0A30F6DDD1EE</asp:TextBox>
            <br />
            <br />
            Select a card ID to charge to [AutoCapture=N]:<br />
            <asp:DropDownList ID="dropdown_cardIDs" runat="server" Height="21px" Width="418px">
            </asp:DropDownList>
&nbsp;<br />
            <asp:Button ID="but_chargeUsingCardId" runat="server" OnClick="but_chargeUsingCardId_Click" Text="Charge Card" />
            <br />
            <br />
            Response:<br />
            <asp:TextBox ID="tb_chargeRsp" runat="server" Height="238px" ReadOnly="True" TextMode="MultiLine" Width="900px"></asp:TextBox>
            <br />
            <br />
            
        </div>
<hr />
        <p style="box-sizing: border-box; line-height: 25px; margin: 20px 0px; color: rgb(49, 59, 75); font-family: 'Open Sans', Helvetica, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">
            This endpoint creates a<span class="Apple-converted-space">&nbsp;</span><em class="" style="box-sizing: border-box; font-weight: 600; font-style: normal;">Card Charge</em><span class="Apple-converted-space">&nbsp;</span>using Card Id.</p>
        <p style="box-sizing: border-box; line-height: 25px; margin: 20px 0px; color: rgb(49, 59, 75); font-family: 'Open Sans', Helvetica, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">
            To charge a credit card, you create a new charge object. If your API key is in test mode (ie: prefix is<span class="Apple-converted-space">&nbsp;</span><code class="" style="box-sizing: border-box; line-height: 25px; padding: 3px; border-radius: 3px; font-family: 'Source Code Pro'; background-color: rgb(223, 234, 250);">sk_test_</code>), the supplied card won&#39;t actually be charged, though everything else will occur as if in live mode. Please refer to the card number table to simulate real events.</p>
        <div class="httpRequest" style="box-sizing: border-box; color: rgb(49, 59, 75); font-family: 'Open Sans', Helvetica, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">
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
                        <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);"><code class="" style="box-sizing: border-box; line-height: 25px; padding: 0px; border-radius: 3px; font-family: 'Source Code Pro'; background: none;">https://sandbox.checkout.com/api2/v2/charges/card</code></td>
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
        <h3 style="box-sizing: border-box; margin: 20px 0px; -webkit-font-smoothing: antialiased; font-style: normal; font-family: 'Open Sans', Helvetica, sans-serif; font-size: 15px; color: rgb(49, 59, 75); font-weight: bold; font-variant: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">Request Payload Fields</h3>
        <table id="cardWithIdTable" cellpadding="1" cellspacing="1" class="jsonTable" style="box-sizing: border-box; margin: 20px 0px; width: 920px; max-width: 100%; border-collapse: separate; border-radius: 4px; border-spacing: 1px; overflow: hidden; color: rgb(49, 59, 75); font-family: 'Open Sans', Helvetica, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(197, 209, 230);">
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
                    <td style="box-sizing: border-box; font-weight: 600; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);"><b style="box-sizing: border-box;">autoCapTime</b></td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">Delayed capture time in hours between 0 and 168 inclusive that corresponds to 7 days (7x24). E.g. 0.5 interpreted as 30 mins.</td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">decimal</td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">no</td>
                </tr>
                <tr style="box-sizing: border-box; height: 36px;">
                    <td style="box-sizing: border-box; font-weight: 600; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);"><b style="box-sizing: border-box;">autoCapture</b></td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">Accepted values either &#39;y&#39; or &#39;n&#39;. Default is is set to &#39;y&#39;. Defines if the charge will be authorised (&#39;n&#39;) or captured (&#39;y&#39;). Authorisations will expire in 7 days.</td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">string</td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">no</td>
                </tr>
                <tr style="box-sizing: border-box; height: 36px;">
                    <td style="box-sizing: border-box; font-weight: 600; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);"><b style="box-sizing: border-box;">chargeMode</b></td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">A valid charge mode: 1 for No 3D, 2 for 3D, 3 Local Payment. Default is 1 if not provided.</td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">integer</td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">no</td>
                </tr>
                <tr style="box-sizing: border-box; height: 36px;">
                    <td style="box-sizing: border-box; font-weight: 600; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);"><b style="box-sizing: border-box;">email or customerId</b></td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">The email address or customer id of the customer</td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">string</td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">yes, either email or customerId required.</td>
                </tr>
                <tr style="box-sizing: border-box; height: 36px;">
                    <td style="box-sizing: border-box; font-weight: 600; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);"><b style="box-sizing: border-box;">description</b></td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">A description that can be added to this object.</td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">string</td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">no</td>
                </tr>
                <tr style="box-sizing: border-box; height: 36px;">
                    <td style="box-sizing: border-box; font-weight: 600; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);"><b style="box-sizing: border-box;">value</b></td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">Charges with 0 value not allowed. The value should be a positive integer in small currency units (eg: 100 cents for $1). You don’t need to worry if the currency does not support decimals. We will do the conversions for you. Max length 6 digits.</td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">integer</td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">yes</td>
                </tr>
                <tr style="box-sizing: border-box; height: 36px;">
                    <td style="box-sizing: border-box; font-weight: 600; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);"><b style="box-sizing: border-box;">currency</b></td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">Three-letter ISO currency code representing the currency in which the charge was made. (refer to<a href="http://developers.checkout.com/docs/server/api-reference/other-codes/currency-code-and-names" style="box-sizing: border-box; text-decoration: none; font-weight: 600; color: rgb(48, 117, 221);">Currency Code and Names</a>)</td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">string</td>
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
                    <td style="box-sizing: border-box; font-weight: 600; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);"><b style="box-sizing: border-box;">riskCheck</b></td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">This option allows the merchant to bypass all risk checks configured on the system including blacklist if set to false. It is not available by default to all merchants, but only upon request to checkout.</td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">boolean</td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">no</td>
                </tr>
                <tr style="box-sizing: border-box; height: 36px;">
                    <td style="box-sizing: border-box; font-weight: 600; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);"><b style="box-sizing: border-box;">cardId</b></td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">The card id, prefixed with card_. Uniquely identifies this particular card number. The system uses this attribute, and so can you, to check whether two customers are using the same card. Card Id is created only when a charge is successful (10000 or 10100). Either on charge or customer endpoint.</td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">string</td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">yes</td>
                </tr>
                <tr style="box-sizing: border-box; height: 36px;">
                    <td style="box-sizing: border-box; font-weight: 600; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);"><b style="box-sizing: border-box;">products</b></td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">An array of Product details</td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">array</td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">no</td>
                </tr>
                <tr style="box-sizing: border-box; height: 36px;">
                    <td style="box-sizing: border-box; font-weight: 600; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);"><span class="products_property tab" style="box-sizing: border-box;">description</span></td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">Description of the product.Max of 500 characters.</td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">string</td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">no</td>
                </tr>
                <tr style="box-sizing: border-box; height: 36px;">
                    <td style="box-sizing: border-box; font-weight: 600; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);"><span class="products_property tab" style="box-sizing: border-box;">image</span></td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">image link to product on merchant website.</td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">string</td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">no</td>
                </tr>
                <tr style="box-sizing: border-box; height: 36px;">
                    <td style="box-sizing: border-box; font-weight: 600; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);"><span class="products_property tab" style="box-sizing: border-box;">name</span></td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">Name of product. Max of 100 characters.</td>
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
                    <td style="box-sizing: border-box; font-weight: 600; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);"><span class="products_property tab" style="box-sizing: border-box;">shippingCost</span></td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">Shipping costs. Max of 6 digits.</td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">decimal</td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">no</td>
                </tr>
                <tr style="box-sizing: border-box; height: 36px;">
                    <td style="box-sizing: border-box; font-weight: 600; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);"><span class="products_property tab" style="box-sizing: border-box;">sku</span></td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">Stock Unit Identifier.Unique product identifier. Max length of 100 characters.</td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">string</td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">no</td>
                </tr>
                <tr style="box-sizing: border-box; height: 36px;">
                    <td style="box-sizing: border-box; font-weight: 600; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);"><span class="products_property tab" style="box-sizing: border-box;">trackingUrl</span></td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">Third party tracking system url. Max length of 255 characters.</td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">string</td>
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
        <blockquote style="box-sizing: border-box; position: relative; padding: 5px 10px 5px 35px; margin: 0px; border: 1px solid rgb(237, 127, 150); border-radius: 3px; line-height: 25px; color: rgb(49, 59, 75); font-family: 'Open Sans', Helvetica, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background: white;">
            When using<span class="Apple-converted-space">&nbsp;</span><strong style="box-sizing: border-box;">cardId</strong><span class="Apple-converted-space">&nbsp;</span>to create a Card Charge, you don&#39;t need to include the<span class="Apple-converted-space">&nbsp;</span><strong style="box-sizing: border-box;">cardToken</strong><span class="Apple-converted-space">&nbsp;</span>field, or<span class="Apple-converted-space">&nbsp;</span><strong style="box-sizing: border-box;">full card details</strong><span class="Apple-converted-space">&nbsp;</span>as they will be ignored.<span class="Apple-converted-space">&nbsp;</span><br style="box-sizing: border-box;" />
            If you create a charge request with a card id which is not associated with the customer. The charge request will fail.<br style="box-sizing: border-box;" />
            For the charge to be processed successfully, the email specified in the charge and the email associated with the customer for the card should be the same.</blockquote>
    
    </div>
    </form>
</body>
</html>
