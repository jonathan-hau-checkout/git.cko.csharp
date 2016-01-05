<%@ Page Language="C#" AutoEventWireup="true" CodeFile="cc_3D.aspx.cs" Inherits="cc_3D" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Payment using 3D</title>
        <style>
        #header {
            background-color: black;
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
    <script src="http://code.jquery.com/jquery-1.10.2.js"></script>
    <script>
        window.CKOConfig = {
            debugMode: true,
            //chargeMode: 2,
            publicKey: 'pk_test_67b6e002-7cf4-4bea-80b7-89b8e0650c92', //'pk_test_1fd03f77-aa3d-4c6e-81af-b9357fee8b67',
            paymentToken: '<%=sPayTok()%>',
            customerEmail: 'user@email.com',
            customerName: 'Demo User',
            value: 100,
            currency: 'USD',
            useCurrencyCode: true,
            countryCode: 'CN',
            paymentMode: 'card',
            widgetContainerSelector: '.payment-form',
            logoUrl: "https://checkout.com/wp-content/uploads/Logo_blue_v2.png",
            //lpCode: 'lpp_12', // specify this for one LP payment
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
            cardVerificationRequired: function (event) {
                document.getElementById('cko-3d-redirectUrl').value = event.data.redirectUrl;
                $('#payment-form').trigger('submit');
                //Checkout.continueFlow(); // commenting this line out will stop the flow, as by default.
            },
            lpCharged: function (event) {
                document.getElementById('cko-lp-redirectUrl').value = event.data.redirectUrl;
                $('#payment-form').trigger('submit');
            }
        };
    </script>

</head>
<body>
    <div id="section">
        <form method="post" class="payment-form" id="payment-form" action="redirectPage.aspx">
            <script src="https://sandbox.checkout.com/js/v1/checkout.js"></script>
            <input type="hidden" id="cko-lp-redirectUrl" name="cko-lp-redirectUrl" />
            <input type="hidden" id="cko-3d-redirectUrl" name="cko-3d-redirectUrl" />
        </form>
    </div>
</body>
</html>
