<%@ Page Language="C#" AutoEventWireup="true" CodeFile="verify_start.aspx.cs" Inherits="veryfycharge" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Payment using 3D</title>
    <script src="http://code.jquery.com/jquery-1.10.2.js"></script>
    <script>
        window.CKOConfig = {
            debugMode: true,
            publicKey: 'pk_test_67b6e002-7cf4-4bea-80b7-89b8e0650c92', //'pk_test_1fd03f77-aa3d-4c6e-81af-b9357fee8b67',
            paymentToken: '<%=sPayTok()%>',
            customerEmail: 'user@email.com',
            customerName: 'Demo User',
            value: 100,
            currency: 'USD',
            useCurrencyCode: true,
            countryCode: 'CN',
            paymentMode: 'mixed',
            widgetContainerSelector: '.payment-form',
            logoUrl: "https://checkout.com/wp-content/uploads/Logo_blue_v2.png",
            //lpCode: 'lpp_12', // specify this for one LP payment
            forceMobileRedirect: true,
            styling: {
                themeColor: '#f00',
                widgetColor: '#f00',
                buttonColor: '#fff',
                buttonLabelColor: '#00f',
                iconColor: '#000',
                widgetIconSize: 'medium',
                formButtonColorLabel: '000',
                overlayShade: 'light',
                overlayOpacity: '1.0'
            },
            cardVerificationRequired: function (event) {
                document.getElementById('cko-3d-redirectUrl').value = event.data.redirectUrl;
                $('#payment-form').trigger('submit');
                //Checkout.continueFlow(); // commenting this line out will stop the flow, as by default.
            },
            lpCharged: function (event) {
                document.getElementById('cko-lp-redirectUrl').value = event.data.redirectUrl;
                $('#payment-form').trigger('submit');
            },
            cardCharged: function (event) {
                document.getElementById('cko-payment-token').value = event.data.paymentToken;
                document.getElementById('payment-tokenform').submit();
            }
        };
    </script>
</head>
<body>
    <form method="post" class="payment-form" id="payment-form" action="redirectPage.aspx">
        <script src="https://sandbox.checkout.com/js/v1/checkout.js"></script>
        <input type="hidden" id="cko-lp-redirectUrl" name="cko-lp-redirectUrl" />
        <input type="hidden" id="cko-3d-redirectUrl" name="cko-3d-redirectUrl" />
    </form>
    <form method="post" class="payment-tokenform" id="payment-tokenform" action="verify.aspx">
        <input type="hidden" id="cko-payment-token" name="cko-payment-token" />
    </form>
</body>
</html>
