﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="uc002.aspx.cs" Inherits="verifycharge" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Use Case 002</title>
    <script src="http://code.jquery.com/jquery-1.10.2.js"></script>
    <script>
        window.CKOConfig = {
            debugMode: true,
            publicKey: 'pk_test_1fd03f77-aa3d-4c6e-81af-b9357fee8b67',
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
            //forceMobileRedirect: true,
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
            ready: function (event) {
                Checkout.setCustomVerificationCallback(function () {
                    redirectUrl = Checkout.getRedirectionUrl();

                    // Call form validation with customer function say validate() which return either true so the LB can be initiated or false to do something else such as let user know of issue.
                    alert("Do validation.");

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
            }
        };
    </script>
</head>
<body>
    <div id="widgetholder">
        <form method="post" class="payment-tokenform" id="payment-tokenform" action="verify_uc002.aspx">
            <input type="hidden" id="cko-payment-token" name="cko-payment-token" />
        </form>
        <form id="payment-form">
            <script src="https://sandbox.checkout.com/js/v1/checkout.js"></script>
            <input type="hidden" id="cko-lp-redirectUrl" name="cko-lp-redirectUrl" />
            <input type="hidden" id="cko-3d-redirectUrl" name="cko-3d-redirectUrl" />
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
