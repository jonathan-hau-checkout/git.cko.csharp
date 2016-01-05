<%@ Page Language="C#" AutoEventWireup="true" CodeFile="whatever2.aspx.cs" Inherits="veryfycharge" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>button id + verification</title>
    <script src="http://code.jquery.com/jquery-1.10.2.js"></script>
    <script>
        reload = false;

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
            renderMode: 2,
            widgetContainerSelector: '.payment-form',
            logoUrl: "https://checkout.com/wp-content/uploads/Logo_blue_v2.png",
            //lpCode: 'lpp_12', // specify this for one LP payment
            forceMobileRedirect: true,
            payButtonSelector: "#btnOpen",
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
            ready: function(event){
                Checkout.setCustomVerificationCallback(function () {
                    redirectUrl = Checkout.getRedirectionUrl();

                    // Call form validation
                    // validate();
                    alert("Do valudation.");

                    return true; // Display ligthbox
                    // return false; // Lightbox is not opened
                });
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
            },
            paymentTokenExpired: function () {
                reload = true;
            },
            lightboxDeactivated: function () {
                if (reload) {
                    window.location.reload();
                }
            }
        };
    </script>
</head>
<body>
    <div id="widgetholder">
        <form id="payment-form">
            <script src="https://sandbox.checkout.com/js/v1/checkout.js"></script>

        </form>
    </div>
    <div id="paybuttonholder">
        <input id="btnOpen" type="button" value="Pay Now" disabled />
        <script>
            var btn = document.getElementById("btnOpen");
            btn.disabled = false;
        </script>
    </div>


</body>
</html>
