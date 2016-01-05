<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Checkout.js Demo</title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:HyperLink ID="link_simpleJsMixedPayment" runat="server" Target="_blank" NavigateUrl="~/js/basicJS/LoadJS.aspx">Simple JS - Mixed Payment</asp:HyperLink>
        <br />
        <br />
        <asp:HyperLink ID="link_simpleJsCardOnly" runat="server" Target="_blank" NavigateUrl="~/js/basicJS/LoadJS - Card Only.aspx">Simple JS - Card Payment Only</asp:HyperLink>
        <br />
        <br />
        <asp:HyperLink ID="link_simpleJsAPOnly" runat="server" Target="_blank" NavigateUrl="~/js/basicJS/LoadJS - AP Only.aspx">Simple JS - AP Only</asp:HyperLink>
        <br />
        <br />
        <asp:HyperLink ID="link_3D" runat="server" Target="_blank" NavigateUrl="~/js/3d/cc_3D.aspx">Using 3D</asp:HyperLink>
        <br />
        <br />
        <asp:HyperLink ID="link_widgetless" runat="server" Target="_blank" NavigateUrl="~/js/basicJS/widgetless.aspx">Widgetless</asp:HyperLink>
        <br />
        <br />
        <asp:HyperLink ID="link_apFlow" runat="server" Target="_blank" NavigateUrl="~/js/alternativePayment/alternativePayment - Render.aspx">Payment Flow</asp:HyperLink>
        <br />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" Target="_blank" NavigateUrl="~/js/checkoutkit/checkoutkit.aspx">Checkout Kit</asp:HyperLink>
    </form>
    <link href="js/3d/cc_3D.aspx" title="test" />
</body>
    
</html>
