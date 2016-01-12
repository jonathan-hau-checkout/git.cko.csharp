<%@ Page Language="C#" AutoEventWireup="true" CodeFile="riskMismatch.aspx.cs" Inherits="RiskMismatch" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Mismatch Simulations</title>
    <style type="text/css">

        .auto-style1 {
            width: 741px;
            height: 451px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h1 style="box-sizing: border-box; margin: 10px 0px 30px; -webkit-font-smoothing: antialiased; font-style: normal; font-family: 'Open Sans Light', Helvetica, sans-serif; font-size: 24px; font-weight: 300; color: rgb(37, 86, 160); font-variant: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">Mismatch Simulations</h1>
    
        <div>
            
            1. Fill in some details<br />
            <br />
            Name:<br />
            <asp:TextBox ID="tb_custName" runat="server" Width="418px">Mr Test</asp:TextBox>
            <br />
            <br />
            Email:<br />
            <asp:TextBox ID="tb_custEmail" runat="server" Width="418px">a@internet.com</asp:TextBox>
            <br />
            <br />
            Select Test Card:<br />
            <asp:DropDownList ID="dropdown_testCard" runat="server" Width="418px">
                <asp:ListItem Value="Visa01">Visa | 4242424242424242 | Exp 0618 | CVV 100</asp:ListItem>
                <asp:ListItem Value="Visa02">Visa | 4543474002249996 | Exp 0617 | CVV 956</asp:ListItem>
                <asp:ListItem Value="Master01">Master | 5436031030606378 | Exp 0617 | CVV 257</asp:ListItem>
                <asp:ListItem Value="Amex01">Amex | 345678901234564 | Exp 0617 | CVV 1051</asp:ListItem>
                <asp:ListItem Value="Amex02">Amex | 378282246310005 | Exp 0618 | CVV 1000</asp:ListItem>
                <asp:ListItem Value="Diners01">Diners | 30123456789019 | Exp 0617 | CVV 257</asp:ListItem>
                <asp:ListItem Value="Jcb01">JCB | 3530111333300000 | Exp 0618 | CVV 100</asp:ListItem>
                <asp:ListItem Value="Discover01">Discover | 6011111111111117 | Exp 0618 | CVV 100</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            Value:<br />
            <asp:TextBox ID="tb_value" runat="server" Width="200px">100</asp:TextBox>
            <br />
            <br />
            Currency:<br />
            <asp:TextBox ID="tb_currency" runat="server" Width="200px">SGD</asp:TextBox>
            <br />
            <br />
            Billing Descriptor:<br />
            - City
            (max 13 characters)<br />
            <asp:TextBox ID="tb_descriptorCity" runat="server" Width="300px">Singapore</asp:TextBox>
            <br />
            - Name (First 21 characters are safe from truncation)<br />
            <asp:TextBox ID="tb_descriptorName" runat="server" Width="300px">Jonathan Toys</asp:TextBox>
            <br />
            <br />
            <asp:CheckBox ID="cb_autocap" runat="server" Text="Autocapture?" />
            <br />
            <br />
            <br />
            2. Let&#39;s simulate ...<br />
            <br />
            <asp:DropDownList ID="dd_shipCountry" runat="server" Height="16px" Width="153px">
                <asp:ListItem Value="AU">Australia</asp:ListItem>
                <asp:ListItem Value="BE">Belgium</asp:ListItem>
                <asp:ListItem Value="CN">China</asp:ListItem>
                <asp:ListItem Value="JP">Japan</asp:ListItem>
                <asp:ListItem Value="SG">Singapore</asp:ListItem>
                <asp:ListItem Value="UK">United Kingdom</asp:ListItem>
                <asp:ListItem Value="US">United States</asp:ListItem>
            </asp:DropDownList>
&nbsp;Shipping Country&nbsp;&nbsp;&nbsp;
            <br />
            <asp:DropDownList ID="dd_billCountry" runat="server" Height="16px" Width="153px">
                <asp:ListItem Value="AU">Australia</asp:ListItem>
                <asp:ListItem Value="BE">Belgium</asp:ListItem>
                <asp:ListItem Value="CN">China</asp:ListItem>
                <asp:ListItem Value="JP">Japan</asp:ListItem>
                <asp:ListItem Value="SG">Singapore</asp:ListItem>
                <asp:ListItem Value="UK">United Kingdom</asp:ListItem>
                <asp:ListItem Value="US">United States</asp:ListItem>
            </asp:DropDownList>
&nbsp;Billing Country<br />
            <asp:DropDownList ID="dd_binCountry" runat="server" Height="16px" Width="153px">
                <asp:ListItem Value="AU">Australia</asp:ListItem>
                <asp:ListItem Value="BE">Belgium</asp:ListItem>
                <asp:ListItem Value="CN">China</asp:ListItem>
                <asp:ListItem Value="JP">Japan</asp:ListItem>
                <asp:ListItem Value="SG">Singapore</asp:ListItem>
                <asp:ListItem Value="UK">United Kingdom</asp:ListItem>
                <asp:ListItem Value="US">United States</asp:ListItem>
            </asp:DropDownList>
&nbsp;BIN Country (not used at the moment. Not sure how to simulate this.)<br />
            <asp:DropDownList ID="dd_ipCountry" runat="server" Height="16px" Width="153px">
                <asp:ListItem Value="14.137.128.0">Australia</asp:ListItem>
                <asp:ListItem Value="31.31.128.0">Belgium</asp:ListItem>
                <asp:ListItem Value="14.144.0.0">China</asp:ListItem>
                <asp:ListItem Value="14.128.64.0">Japan</asp:ListItem>
                <asp:ListItem Value="118.200.158.50">Singapore</asp:ListItem>
                <asp:ListItem Value="5.10.16.0">United Kingdom</asp:ListItem>
                <asp:ListItem Value="13.128.0.0">United States</asp:ListItem>
            </asp:DropDownList>
&nbsp;IP Country<br />
            <asp:DropDownList ID="dd_phoneBillCountry" runat="server" Height="16px" Width="153px">
                <asp:ListItem Value="61">Australia</asp:ListItem>
                <asp:ListItem Value="32">Belgium</asp:ListItem>
                <asp:ListItem Value="86">China</asp:ListItem>
                <asp:ListItem Value="81">Japan</asp:ListItem>
                <asp:ListItem Value="65">Singapore</asp:ListItem>
                <asp:ListItem Value="44">United Kingdom</asp:ListItem>
                <asp:ListItem Value="1">United States</asp:ListItem>
            </asp:DropDownList>
&nbsp;Billing Phone Country<br />
            <asp:DropDownList ID="dd_phoneShipCountry" runat="server" Height="16px" Width="153px">
                <asp:ListItem Value="61">Australia</asp:ListItem>
                <asp:ListItem Value="32">Belgium</asp:ListItem>
                <asp:ListItem Value="86">China</asp:ListItem>
                <asp:ListItem Value="81">Japan</asp:ListItem>
                <asp:ListItem Value="65">Singapore</asp:ListItem>
                <asp:ListItem Value="44">United Kingdom</asp:ListItem>
                <asp:ListItem Value="1">United States</asp:ListItem>
            </asp:DropDownList>
&nbsp;Shipping Phone Country<br />
            <br />
            <br />
            <asp:Button ID="but_chargeUsingCardId" runat="server" OnClick="but_chargeUsingCardId_Click" Text="Simulate!" />
            <br />
            <br />
            <br />
            <br />
            3. Response<br />
            <br />
            <asp:TextBox ID="tb_chargeRsp" runat="server" Height="238px" ReadOnly="True" TextMode="MultiLine" Width="900px"></asp:TextBox>
            <br />
            <br />
            
            <img alt="" class="auto-style1" src="images/riskMismatch.png" /><br />
            <br />
            
        </div>
<hr />
    
    </div>
    </form>
    </body>
</html>
