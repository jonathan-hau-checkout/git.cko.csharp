<%@ Page Language="C#" AutoEventWireup="true" CodeFile="callback_fail.aspx.cs" Inherits="alternativePayment_callback" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Failed Payment</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="Failed reason:"></asp:Label>
        <br />
    
        <asp:TextBox ID="tb_chargeRsp" runat="server" Height="343px" ReadOnly="True" TextMode="MultiLine" Width="773px"></asp:TextBox>
    
    </div>
    </form>
</body>
</html>
