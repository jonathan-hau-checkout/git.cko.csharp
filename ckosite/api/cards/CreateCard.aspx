<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CreateCard.aspx.cs" Inherits="card_CreateCard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Create Card</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h1 style="box-sizing: border-box; margin: 10px 0px 30px; -webkit-font-smoothing: antialiased; font-style: normal; font-family: 'Open Sans Light', Helvetica, sans-serif; font-size: 24px; font-weight: 300; color: rgb(37, 86, 160); font-variant: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">Create New Card</h1>
    
        <div>
            
            1. Select a customer to create a card for<br />
        <asp:DropDownList ID="dropdown_customerlist" runat="server" Height="18px" Width="277px" OnSelectedIndexChanged="dropdown_customerlist_SelectedIndexChanged">
        </asp:DropDownList>
            <br />
            <br />
            <br />
            2.
            Select a test card to assign to the selected customer<br />
            <asp:DropDownList ID="dropdown_testCard" runat="server" Width="418px">
                <asp:ListItem Value="Visa01">Visa | 4242424242424242 | Exp 0618 | CVV 100</asp:ListItem>
                <asp:ListItem Value="Visa02">Visa | 4543474002249996 | Exp 0617 | CVV 956</asp:ListItem>
                <asp:ListItem Value="Master01">Master | 5436031030606378 | Exp 0617 | CVV 257</asp:ListItem>
                <asp:ListItem Value="Amex01">Amex | 345678901234564 | Exp 0618 | CVV 1051</asp:ListItem>
                <asp:ListItem Value="Amex02">Amex | 378282246310005 | Exp 0618 | CVV 1000</asp:ListItem>
                <asp:ListItem Value="Diners01">Diners | 30123456789019 | Exp 0617 | CVV 257</asp:ListItem>
                <asp:ListItem Value="Jcb01">JCB | 3530111333300000 | Exp 0618 | CVV 100</asp:ListItem>
                <asp:ListItem Value="Discover01">Discover | 6011111111111117 | Exp 0618 | CVV 100</asp:ListItem>
            </asp:DropDownList>
            <br />
            <asp:CheckBox ID="cb_defaultCard" runat="server" Text="Set as Default Card" />
            <br />
            <br />
            <br />
            3. Set the billing address<br />
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
        <asp:Button ID="but_createCard" runat="server" OnClick="but_createCard_Click" Text="Create Card" />
            <br />
            <br />
            <br />
            2. Response<br />
            <br />
            <asp:TextBox ID="tb_createRsp" runat="server" Height="238px" ReadOnly="True" TextMode="MultiLine" Width="900px"></asp:TextBox>
            
        </div>
        <br />
        <p style="box-sizing: border-box; line-height: 25px; margin: 20px 0px; color: rgb(49, 59, 75); font-family: 'Open Sans', Helvetica, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">
            This endpoint creates a new<span class="Apple-converted-space">&nbsp;</span><strong style="box-sizing: border-box;">Card</strong>.</p>
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
                            <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);"><code class="" style="box-sizing: border-box; line-height: 25px; padding: 0px; border-radius: 3px; font-family: 'Source Code Pro'; background: none;">https://sandbox.checkout.com/api2/v2/customers/{customerId}/cards</code></td>
                        </tr>
                        <tr style="box-sizing: border-box; height: 36px;">
                            <td style="box-sizing: border-box; font-weight: 600; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">Http Method:</td>
                            <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);"><code class="" style="box-sizing: border-box; line-height: 25px; padding: 0px; border-radius: 3px; font-family: 'Source Code Pro'; background: none;">POST</code></td>
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
                <table id="customerIdTable" cellpadding="1" cellspacing="1" class="jsonTable" style="box-sizing: border-box; margin: 20px 0px; width: 920px; max-width: 100%; border-collapse: separate; border-radius: 4px; border-spacing: 1px; overflow: hidden; background-color: rgb(197, 209, 230);">
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
                            <td style="box-sizing: border-box; font-weight: 600; line-height: 25px; font-size: 13px; padding: 2px 8px; border-bottom-left-radius: 4px; background-color: rgb(255, 255, 255);"><b style="box-sizing: border-box;">customerId</b></td>
                            <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">The customer id (prefixed with cust_)</td>
                            <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">string</td>
                            <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; border-bottom-right-radius: 4px; background-color: rgb(255, 255, 255);">yes</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <h3 id="payload-fields" style="box-sizing: border-box; margin: 20px 0px; -webkit-font-smoothing: antialiased; font-style: normal; font-family: 'Open Sans', Helvetica, sans-serif; font-size: 15px; color: rgb(49, 59, 75); font-weight: bold; font-variant: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">Request Payload Fields</h3>
        <table id="createCardTable" cellpadding="1" cellspacing="1" class="jsonTable" style="box-sizing: border-box; margin: 20px 0px; width: 920px; max-width: 100%; border-collapse: separate; border-radius: 4px; border-spacing: 1px; overflow: hidden; color: rgb(49, 59, 75); font-family: 'Open Sans', Helvetica, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(197, 209, 230);">
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
                    <td style="box-sizing: border-box; font-weight: 600; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);"><b style="box-sizing: border-box;">number</b></td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">The card number as string without separators e.g. 4242424242424242. Max length of 19 characters</td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">string</td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">yes</td>
                </tr>
                <tr style="box-sizing: border-box; height: 36px;">
                    <td style="box-sizing: border-box; font-weight: 600; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);"><b style="box-sizing: border-box;">expiryMonth</b></td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">Two digit number representing the card’s expiration month</td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">integer</td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">yes</td>
                </tr>
                <tr style="box-sizing: border-box; height: 36px;">
                    <td style="box-sizing: border-box; font-weight: 600; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);"><b style="box-sizing: border-box;">expiryYear</b></td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">Two or four digit number representing the card’s expiration year</td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">integer</td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">yes</td>
                </tr>
                <tr style="box-sizing: border-box; height: 36px;">
                    <td style="box-sizing: border-box; font-weight: 600; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);"><b style="box-sizing: border-box;">cvv</b></td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">Card security code. 3 digits, except for Amex (4 digits).</td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">integer</td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">yes</td>
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
                    <td style="box-sizing: border-box; font-weight: 600; line-height: 25px; font-size: 13px; padding: 2px 8px; border-bottom-left-radius: 4px; background-color: rgb(255, 255, 255);"><b style="box-sizing: border-box;">defaultCard</b></td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">The card associated with this request will be set as default card of the customer when this parameter set to true.</td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">boolean</td>
                    <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; border-bottom-right-radius: 4px; background-color: rgb(255, 255, 255);">no</td>
                </tr>
            </tbody>
        </table>
        <h3 id="response" style="box-sizing: border-box; margin: 20px 0px; -webkit-font-smoothing: antialiased; font-style: normal; font-family: 'Open Sans', Helvetica, sans-serif; font-size: 15px; color: rgb(49, 59, 75); font-weight: bold; font-variant: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">Response</h3>
        <p style="box-sizing: border-box; line-height: 25px; margin: 20px 0px; color: rgb(49, 59, 75); font-family: 'Open Sans', Helvetica, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">
            Returns a Card response object if the request is successful. Returns an error if something goes wrong.</p>
        <p style="box-sizing: border-box; line-height: 25px; margin: 20px 0px; color: rgb(49, 59, 75); font-family: 'Open Sans', Helvetica, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">
            &nbsp;</p>
    
    </div>
    </form>
</body>
</html>
