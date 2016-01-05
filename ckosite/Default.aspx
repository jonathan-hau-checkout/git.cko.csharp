<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CKO API Test Site</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <strong>Charges:</strong><br />
        <asp:HyperLink ID="link_ChargeWithFullCardDetails" runat="server" NavigateUrl="~/charges/ChargeUsingFullCardDetails.aspx">Charge with Full Card Details</asp:HyperLink>
        <br />
        <asp:HyperLink ID="link_ChargeWithCardId" runat="server" NavigateUrl="~/charges/ChargeUsingCardId.aspx">Charge with Card ID</asp:HyperLink>
        <br />
        Charge with Card Token<br />
        <asp:HyperLink ID="link_captureCardChargeWithDefaultCard" runat="server" NavigateUrl="~/charges/ChargeUsingDefaultCard.aspx">Charge with Default Card</asp:HyperLink>
        <br />
        <asp:HyperLink ID="link_captureCardChargeWithCardID" runat="server" NavigateUrl="~/charges/CaptureCardChargeUsingCardId.aspx">Capture Card Charge with Card ID</asp:HyperLink>
        <br />
        <asp:HyperLink ID="link_refundCardCharge0" runat="server" NavigateUrl="~/charges/RefundCardCharge.aspx">Refund Card Charge</asp:HyperLink>
        <br />
        <asp:HyperLink ID="link_voidCardCharge" runat="server" NavigateUrl="~/charges/VoidCardCharge.aspx">Void Card Charge</asp:HyperLink>
        <br />
        <br />
        <strong>Cards:</strong><br />
        <asp:HyperLink ID="link_createCard" runat="server" NavigateUrl="~/cards/CreateCard.aspx">Create Card</asp:HyperLink>
        <br />
        Update Card<br />
        Get Card<br />
        <asp:HyperLink ID="link_getCardList" runat="server" NavigateUrl="~/cards/GetCardList.aspx">Get Card List</asp:HyperLink>
        <br />
        Delete Card<br />
        <br />
        <strong>Customers:</strong><br />
        <asp:HyperLink ID="link_createCustomer" runat="server" NavigateUrl="~/customers/CreateCustomer.aspx">Create Customer</asp:HyperLink>
        <br />
        Update Customer<br />
        Get Customer<br />
        Get Customer List (implied in &quot;Charge with Default Card&quot;)<br />
        Delete Customer<br />
        <br />
        <strong>Tokens:</strong><br />
        <asp:HyperLink ID="link_createPaymentToken" runat="server" NavigateUrl="~/tokens/CreatePaymentToken.aspx">Create Payment Token</asp:HyperLink>
        <br />
        Update Token<br />
        <br />
    
    </div>
        <br />
        <br />
        <br />
        <br />
    </form>
    <p>
        &nbsp;</p>
</body>
</html>
