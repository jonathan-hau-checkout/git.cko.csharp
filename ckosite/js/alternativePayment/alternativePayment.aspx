<%@ Page Language="C#" AutoEventWireup="true" CodeFile="alternativePayment.aspx.cs" Inherits="tokens_LoadJS" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="https://sandbox.checkout.com/js/v1/checkout.js"></script>
</head>
<body>
    <form method="post" class="payment-form">
        <script>
            Checkout.render({
                debugMode: true,
                renderMode: 0,
                publicKey: 'pk_test_67b6e002-7cf4-4bea-80b7-89b8e0650c92', //'pk_test_1fd03f77-aa3d-4c6e-81af-b9357fee8b67',
                paymentToken: '<%=sPayTok()%>',
                customerEmail: 'user1@email.com',
                customerName: 'Demo User',
                value: 100,
                countryCode: 'CN',
                currency: 'USD',
                widgetContainerSelector: '.payment-form',
                logoUrl: "https://checkout.com/wp-content/uploads/Logo_blue_v2.png",
                title: 'Payment Title',
                subtitle: 'This is subtitle',
                useCurrencyCode: true,
                paymentMode: 'mixed',
                showMobileIcons: true,
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
                lpCharged: function (event) {
                    window.location.href = event.data.redirectUrl; //redirect url set in hub
                }
            });
        </script>
    </form>
</body>
</html>
