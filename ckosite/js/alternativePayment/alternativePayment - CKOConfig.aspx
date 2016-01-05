<%@ Page Language="C#" AutoEventWireup="true" CodeFile="alternativePayment - CKOConfig.aspx.cs" Inherits="tokens_LoadJS" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Alternative Payment</title>
    <script src="http://code.jquery.com/jquery-1.10.2.js"></script>
    <script>
        var isLoaded = false;
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

                console.log(event);

                //if (isLoaded) {
                    document.getElementById('cko-cc-redirectUrl').value = event.data.redirectUrl;
                    $('#payment-form').trigger('submit');
                //}

                isLoaded = true;
                //$("#target").submit();
                //window.location.href = event.data.redirectUrl; //redirect url set in hub
            }
        };
    </script>
</head>
<body>
    <form method="post" class="payment-form" id="payment-form" action="redirectPage.aspx">  
        <script src="https://sandbox.checkout.com/js/v1/checkout.js"></script>    
        <input type="hidden" id="cko-cc-redirectUrl" name="cko-cc-redirectUrl"/>
    </form>
</body>
</html>
