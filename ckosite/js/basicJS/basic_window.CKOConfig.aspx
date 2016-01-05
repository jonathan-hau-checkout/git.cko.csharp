<%@ Page Language="C#" AutoEventWireup="true" CodeFile="basic_window.CKOConfig.aspx.cs" Inherits="tokens_LoadJS" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Basic JS - window.CKOConfig</title>
    <script>
        window.CKOConfig = {
            debugMode: false,                   //set to true to see console messages
            renderMode: 0,                      //0 = All, 1 = Pay Button Only, 2 = Icons Only. Default: 0 (3 is undocumented which displays link buttons only)
            publicKey: 'pk_test_67b6e002-7cf4-4bea-80b7-89b8e0650c92',
            paymentToken: '<%=sPayTok()%>',
            customerEmail: 'new_customer@email.com',   //autopopulated into email field
            customerName: 'Customer New Year',
            value: 100,                         // omitting this will not render the widget properly. see http://developers.checkout.com/docs/server/api-reference/charges/simulator for simluating different values.
            countryCode: 'CN',
            currency: 'USD',
            widgetContainerSelector: '.payment-form',
            logoUrl: "https://checkout.com/wp-content/uploads/Logo_White_v2.png",
            title: 'Payment Title',
            subtitle: 'This is subtitle',
            //forceRedirect: true,              // lightbox opens in new page if true, and subsequent success/failure redirects to page specified in hub
            //forceMobileRedirect: false,       // see notes
            useCurrencyCode: true,              //shows currency symbol if false
            paymentMode: 'mixed',               //customises the payment mode: mixed , card, localpayment. Default: mixed
            showMobileIcons: true,
            //lpCode: 'lpp_16',                   //if specified, shows only payment by the corresponding AP pay button. Overwrites paymentMode.
            styling: {
                themeColor: '#f00',             //lightbox top column color
                widgetColor: '#0f0',            //widget container color
                buttonColor: '#000',            //widget button color
                buttonLabelColor: '#00f',       //widget and lightbox button text color for now, because formButtonColorLabel is not working
                iconColor: '#f00',              //lightbox (email, cc, expiry, cvv) icon color
                widgetIconSize: 'medium',       //available sizes: small, medium,large. Default: small
                formButtonColorLabel: '#0f0',   //not working at the moment. 
                formButtonColor: '#f00',        //lightbox button color
                overlayShade: 'light',          //dark or light. Default: dark
                overlayOpacity: '1.0'           //a number between 0.7 and 1. Default: 0.8 but now working at the moment
            },
            ready: function (event) {
                //Checkout.open(); //possible to open the LB when the page is ready
                console.log('*** ready ***'); //console messages can be viewed in chrome dev tools console
            },
            cardCharged: function (event) {
                console.log('*** card charged ***');
            },
            cardChargeFailed: function (event) {
                //window.location.href = event.data.redirectUrl; //redirect url set in hub
            },
            lightboxDeactivated: function (event) {
                console.log('*** LB deactivated ***');
            },
            cardVerificationRequired: function (event) {
                console.log('*** card verification required ***')
            },
            lpCharged: function (event) {
                console.log('*** LP charged ***')
            },
            paymentTokenExpired: function (event) {
                console.log('*** payment token expired ***')
            },
            widgetRendered: function (event) {
                console.log('*** widget rendered ***')
            }
        };
    </script>
</head>
<body>
    <form method="post" class="payment-form">  
        <script src="https://sandbox.checkout.com/js/v1/checkout.js"></script>    
    </form>
</body>
</html>