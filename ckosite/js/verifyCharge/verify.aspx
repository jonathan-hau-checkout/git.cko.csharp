<%@ Page Language="C#" AutoEventWireup="true" CodeFile="verify.aspx.cs" Inherits="basicJS_verify" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Payment Charge Verification</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Verify charge response<br />
            <asp:TextBox ID="tb_verifyCharge" runat="server" Height="240px" ReadOnly="True" TextMode="MultiLine" Width="688px"></asp:TextBox>

        </div>
    </form>
</body>
</html>
