<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UpdateCard.aspx.cs" Inherits="card_UpdateCard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Update Card</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h1 style="box-sizing: border-box; margin: 10px 0px 30px; -webkit-font-smoothing: antialiased; font-style: normal; font-family: 'Open Sans Light', Helvetica, sans-serif; font-size: 24px; font-weight: 300; color: rgb(37, 86, 160); font-variant: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">Update Card</h1>
    
        <div>
            
            1. Select a customer to update a card for
            <br />
            (Customers from the last 1 month are populated here)<br />
        <asp:DropDownList ID="dropdown_customerlist" runat="server" Height="18px" Width="277px" AutoPostBack="True" OnSelectedIndexChanged="dropdown_customerlist_SelectedIndexChanged" ViewStateMode="Enabled" EnableViewState="true">
        </asp:DropDownList>
            <br />
            <br />
            <br />
            2.
            Select the card to update<br />
            <asp:DropDownList ID="dropdown_testCard" runat="server" Width="418px">
            </asp:DropDownList>
            <br />
            <asp:CheckBox ID="cb_defaultCard" runat="server" Text="Set as Default Card" />
            <br />
            <br />
            <br />
            3. Set the billing address<br />
            <br />
            Name on Card (Leave blank if no change intended)<br />
            <asp:TextBox ID="tb_nameOnCard" runat="server" Width="303px"></asp:TextBox>
            <br />
            Address Line 1
            <br />
            <asp:TextBox ID="tb_addrLine1" runat="server" Width="303px">123 Collyer Quay #11-12</asp:TextBox>
            <br />
            Address Line 2
            <br />
            <asp:TextBox ID="tb_addrLine2" runat="server" Width="303px">ABC Building</asp:TextBox>
            <br />
            Postcode<br />
            <asp:TextBox ID="tb_postcode" runat="server" Width="303px">112223</asp:TextBox>
&nbsp;<br />
            City<br />
            <asp:TextBox ID="tb_city" runat="server" Width="303px">Singapore</asp:TextBox>
&nbsp;<br />
            State<br />
            <asp:TextBox ID="tb_state" runat="server" Width="303px">Singapore</asp:TextBox>
            <br />
            Country<br />
            <asp:TextBox ID="tb_country" runat="server" Width="303px">SG</asp:TextBox>
&nbsp;<br />
            Phone CountryCode
            <br />
            <asp:TextBox ID="tb_phoneCountryCode" runat="server" Width="303px">65</asp:TextBox>
            <br />
            Phone Number
            <br />
            <asp:TextBox ID="tb_phoneNumber" runat="server" Width="303px">9876543</asp:TextBox>
            <br />
            <br />
        <asp:Button ID="but_updateCard" runat="server" OnClick="but_updateCard_Click" Text="Update Card" />
            <br />
            <br />
            <br />
            2. Response<br />
            <br />
            <asp:TextBox ID="tb_updateRsp" runat="server" Height="238px" ReadOnly="True" TextMode="MultiLine" Width="900px"></asp:TextBox>
            
        </div>
        <br />
        <br />
        <p style="box-sizing: border-box; line-height: 25px; margin: 20px 0px; color: rgb(49, 59, 75); font-family: 'Open Sans', Helvetica, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">
            This endpoint updates an existing<span class="Apple-converted-space">&nbsp;</span><strong style="box-sizing: border-box;">Card</strong>.</p>
        <p style="box-sizing: border-box; line-height: 25px; margin: 20px 0px; color: rgb(49, 59, 75); font-family: 'Open Sans', Helvetica, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">
            If you need to update only some card details, like the billing address or expiration date, you can do so without having to re-enter the full card details. When you update a card, Checkout will automatically validate the card.</p>
        <div style="box-sizing: border-box; color: rgb(49, 59, 75); font-family: 'Open Sans', Helvetica, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">
            <div class="httpRequest" style="box-sizing: border-box;">
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
                            <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);"><code class="" style="box-sizing: border-box; line-height: 25px; padding: 0px; border-radius: 3px; font-family: 'Source Code Pro'; background: none;">https://sandbox.checkout.com/api2/v2/customers/{customerId}/cards/{cardId}</code></td>
                        </tr>
                        <tr style="box-sizing: border-box; height: 36px;">
                            <td style="box-sizing: border-box; font-weight: 600; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">Http Method:</td>
                            <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);"><code class="" style="box-sizing: border-box; line-height: 25px; padding: 0px; border-radius: 3px; font-family: 'Source Code Pro'; background: none;">PUT</code></td>
                        </tr>
                        <tr style="box-sizing: border-box; height: 36px;">
                            <td style="box-sizing: border-box; font-weight: 600; line-height: 25px; font-size: 13px; padding: 2px 8px; border-bottom-left-radius: 4px; background-color: rgb(255, 255, 255);">Request Header Required:</td>
                            <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; border-bottom-right-radius: 4px; background-color: rgb(255, 255, 255);"><code class="" style="box-sizing: border-box; line-height: 25px; padding: 0px; border-radius: 3px; font-family: 'Source Code Pro'; background: none;">SECRET KEY</code></td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div class="httpRequest" style="box-sizing: border-box;">
                <h3 style="box-sizing: border-box; margin: 20px 0px; -webkit-font-smoothing: antialiased; font-style: normal; font-family: 'Open Sans', Helvetica, sans-serif; font-size: 15px; color: rgb(49, 59, 75); font-weight: bold;">Uri Resources</h3>
                <table id="customer_cardIDTable" cellpadding="1" cellspacing="1" class="jsonTable" style="box-sizing: border-box; margin: 20px 0px; width: 920px; max-width: 100%; border-collapse: separate; border-radius: 4px; border-spacing: 1px; overflow: hidden; background-color: rgb(197, 209, 230);">
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
                            <td style="box-sizing: border-box; font-weight: 600; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);"><b style="box-sizing: border-box;">customerId</b></td>
                            <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">The customer id (prefixed with cust<em class="" style="box-sizing: border-box; font-weight: 600; font-style: normal;">)</em></td>
                            <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">string</td>
                            <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">yes</td>
                        </tr>
                        <tr style="box-sizing: border-box; height: 36px;">
                            <td style="box-sizing: border-box; font-weight: 600; line-height: 25px; font-size: 13px; padding: 2px 8px; border-bottom-left-radius: 4px; background-color: rgb(255, 255, 255);"><b style="box-sizing: border-box;">cardId</b></td>
                            <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">The card id, prefixed with card. Uniquely identifies this particular card number. The system uses this attribute, and so can you, to check whether two customers are using the same card. Card Id is created only when a charge is successful (10000 or 10100). Either on charge or customer endpoint.</td>
                            <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">string</td>
                            <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; border-bottom-right-radius: 4px; background-color: rgb(255, 255, 255);">yes</td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div style="box-sizing: border-box;">
                <h3 id="payload-fields" style="box-sizing: border-box; margin: 20px 0px; -webkit-font-smoothing: antialiased; font-style: normal; font-family: 'Open Sans', Helvetica, sans-serif; font-size: 15px; color: rgb(49, 59, 75); font-weight: bold;">Request Payload Fields</h3>
                <table id="updateCardTable" cellpadding="1" cellspacing="1" class="jsonTable" style="box-sizing: border-box; margin: 20px 0px; width: 920px; max-width: 100%; border-collapse: separate; border-radius: 4px; border-spacing: 1px; overflow: hidden; background-color: rgb(197, 209, 230);">
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
                            <td style="box-sizing: border-box; font-weight: 600; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);"><b style="box-sizing: border-box;">name</b></td>
                            <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">Full name of the card holder. Max length of 100 characters.</td>
                            <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">string</td>
                            <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">no</td>
                        </tr>
                        <tr style="box-sizing: border-box; height: 36px;">
                            <td style="box-sizing: border-box; font-weight: 600; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);"><b style="box-sizing: border-box;">expiryMonth</b></td>
                            <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">Two digit number representing the card’s expiration month</td>
                            <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">integer</td>
                            <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">no</td>
                        </tr>
                        <tr style="box-sizing: border-box; height: 36px;">
                            <td style="box-sizing: border-box; font-weight: 600; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);"><b style="box-sizing: border-box;">expiryYear</b></td>
                            <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">Two or four digit number representing the card’s expiration year</td>
                            <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">integer</td>
                            <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">no</td>
                        </tr>
                        <tr style="box-sizing: border-box; height: 36px;">
                            <td style="box-sizing: border-box; font-weight: 600; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);"><b style="box-sizing: border-box;">billingDetails</b></td>
                            <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">Billing address details for the card holder</td>
                            <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">object</td>
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
                            <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">Country code for the phone number of the card holder e.g. 44 for United Kingdom. Please refer to<span class="Apple-converted-space">&nbsp;</span><a href="http://developers.checkout.com/docs/server/api-reference/other-codes/currency-code-and-names" style="box-sizing: border-box; text-decoration: none; font-weight: 600; color: rgb(48, 117, 221);">Country ISO and Code</a><span class="Apple-converted-space">&nbsp;</span>section in the Other Codes menu option.</td>
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
                            <td style="box-sizing: border-box; font-weight: 600; line-height: 25px; font-size: 13px; padding: 2px 8px; border-bottom-left-radius: 4px; background-color: rgb(255, 255, 255);"><b style="box-sizing: border-box;">defaultCard</b></td>
                            <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">The card associated with this request will be set as default card of the customer when this parameter set to true.</td>
                            <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">boolean</td>
                            <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; border-bottom-right-radius: 4px; background-color: rgb(255, 255, 255);">no</td>
                        </tr>
                    </tbody>
                </table>
                <h3 id="response" style="box-sizing: border-box; margin: 20px 0px; -webkit-font-smoothing: antialiased; font-style: normal; font-family: 'Open Sans', Helvetica, sans-serif; font-size: 15px; color: rgb(49, 59, 75); font-weight: bold;">Response</h3>
                <p style="box-sizing: border-box; line-height: 25px; margin: 20px 0px;">
                    Returns an Ok response object if the request is successful. Returns an error if something goes wrong.</p>
                <pre class="language-json" style="box-sizing: border-box; position: relative; padding: 20px; color: black; font-family: 'Source Code Pro'; direction: ltr; text-align: left; white-space: pre; word-spacing: normal; word-break: normal; line-height: 1.5; font-size: 13px; tab-size: 4; margin: 0px; border: 1px solid rgb(197, 209, 230); border-radius: 4px; overflow: visible; background-color: white;"><button class="copy-to-clipboard" data-original-title="Copy to clipboard" data-toggle="tooltip" style="box-sizing: border-box; position: absolute; top: 0px; right: 0px; padding: 5px; border-style: none none solid solid; border-left-width: 1px; border-left-color: rgb(197, 209, 230); border-bottom-width: 1px; border-bottom-color: rgb(197, 209, 230); border-bottom-left-radius: 4px; cursor: pointer; font-size: 12px; background: none;" title="">Copy</button><code class="language-json" style="box-sizing: border-box; line-height: 1.5; padding: 0px; border-radius: 3px; font-family: 'Source Code Pro'; color: black; direction: ltr; text-align: left; white-space: pre; word-spacing: normal; word-break: normal; font-size: 13px; tab-size: 4; max-height: inherit; height: 57px; display: block; overflow: auto; background: none;"><span class="token punctuation" style="box-sizing: border-box; color: rgb(95, 99, 100);">{</span><span class="token json-key" style="box-sizing: border-box;">
&quot;message&quot;</span><span class="token punctuation" style="box-sizing: border-box; color: rgb(95, 99, 100);">:</span> <span class="token json-string" style="box-sizing: border-box; color: rgb(47, 156, 10);">&quot;ok&quot;</span>
<span class="token punctuation" style="box-sizing: border-box; color: rgb(95, 99, 100);">}</span></code></pre>
            </div>
        </div>
    
    </div>
    </form>
</body>
</html>
