<%@ Page Language="C#" AutoEventWireup="true" CodeFile="redirectPage.aspx.cs" Inherits="alternativePayment_redirectPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Pre-Payment Info Page</title>
</head>
<body>
    <form id="form1" runat="server" style="height:500px">
        <input type="hidden" id="cko-lp-redirectUrl" name="cko-lp-redirectUrl" value="<%= Request.Form["cko-lp-redirectUrl"] %>"/>
        <input type="hidden" id="cko-3d-redirectUrl" name="cko-3d-redirectUrl" value="<%= Request.Form["cko-3d-redirectUrl"] %>"/>
        <p><strong>Pre-Payment Info Page</strong></p>
    <div>
        This page is optional. It can be used to display some information for the user before directing them to the next step.<br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Proceed" OnClick="Button1_Click" />
    </div>
    </form>
</body>
</html>
