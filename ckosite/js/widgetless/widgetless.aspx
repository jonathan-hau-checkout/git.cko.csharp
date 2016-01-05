<%@ Page Language="C#" AutoEventWireup="true" CodeFile="widgetless.aspx.cs" Inherits="tokens_LoadJS" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Widgetless Page</title>
    <script src="https://sandbox.checkout.com/js/v1/checkout.js"></script>
    <style>
        #header {
            background-color: blue;
            color: white;
            text-align: center;
            padding: 5px;
        }

        #nav {
            line-height: 30px;
            background-color: #eeeeee;
            height: 300px;
            width: 100px;
            float: left;
            padding: 5px;
        }

        #section {
            width: 600px;
            text-align: center;
            padding: 10px;
        }

        #footer {
            background-color: black;
            color: white;
            clear: both;
            text-align: center;
            padding: 5px;
        }
    </style>
</head>
<body>
    <div id="header">
        <form method="post" class="payment-form">
            <img src="/images/product_glasses.png" />
            <br />
            <br />
            <script>
                Checkout.configure({
                    debugMode: false,
                    renderMode: 1, // doesn't really matter here since we are not showing the widget
                    publicKey: 'pk_test_67b6e002-7cf4-4bea-80b7-89b8e0650c92', //'pk_test_1fd03f77-aa3d-4c6e-81af-b9357fee8b67',
                    paymentToken: '<%=sPayTok()%>',
                    customerEmail: 'user101@email.com',
                    customerName: 'Demo User',
                    value: 100,
                    countryCode: 'CN',
                    currency: 'USD',
                    widgetContainerSelector: '.payment-form',
                    logoUrl: "https://checkout.com/wp-content/uploads/Logo_blue_v2.png",
                    title: 'My Checkout Form',
                    subtitle: 'Please enter payment details!',
                    useCurrencyCode: true,
                    paymentMode: 'mixed', //localpayment,card
                    showMobileIcons: true,
                    styling: {
                        themeColor: '#00f',
                        widgetColor: '#00f',
                        buttonColor: '#000',
                        buttonLabelColor: '#fff',
                        iconColor: '#000',
                        widgetIconSize: 'medium',
                        formButtonColorLabel: '000',
                        overlayShade: 'light',
                        overlayOpacity: '1.0'
                    },
                    ready: function (event) {
                    },
                    cardCharged: function (event) {
                        console.log(event);
                    },
                    cardChargeFailed: function (event) {
                        window.location.href = event.data.redirectUrl; //redirect url set in hub
                    },
                    lightboxDeactivated: function (event) {
                        console.log('LB deactivated.')
                    },
                    cardVerificationRequired: function (event) {
                        console.log('card verification required')
                    },
                    lpCharged: function (event) {
                        console.log(event)
                    },
                    paymentTokenExpired: function (event) {
                        console.log(event)
                    }
                });
            </script>

            This could be a specific product page or on a page where final payment is ready to be made. 
            <br />
            Widget is not shown here. 
            <br />
            Click the button to show the payment lightbox.<br />
            <br />

            <input id="btnOpen" type="button" onclick="Checkout.open()" value="Pay Now" disabled />

            <script>
                var btn = document.getElementById("btnOpen");
                console.log(btn);
                btn.disabled = false;
            </script>

        </form>
    </div>
</body>
</html>
