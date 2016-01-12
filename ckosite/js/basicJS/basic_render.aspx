<%@ Page Language="C#" AutoEventWireup="true" CodeFile="basic_render.aspx.cs" Inherits="basicjs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Basic JS Integration</title>
    <script src="https://sandbox.checkout.com/js/v1/checkout.js"></script>
    <script src="http://code.jquery.com/jquery-1.10.2.js"></script>
</head>

<body>
    <form id="form1" runat="server" class="payment-form">
        <script>
            Checkout.render({
                debugMode: false,                   //set to true to see console messages
                renderMode: 0,                      //0 = All, 1 = Pay Button Only, 2 = Icons Only. Default: 0 (3 is undocumented which displays link buttons only)
                publicKey: 'pk_test_67b6e002-7cf4-4bea-80b7-89b8e0650c92',
                paymentToken: '<%=sPayTok()%>',
                customerEmail: 'new_customer@email.com',   //autopopulated into email field
                customerName: 'Customer New Year',
                value: 100,                         // omitting this will not render the widget properly. see http://developers.checkout.com/docs/server/api-reference/charges/simulator for simluating different values.
                countryCode: 'CN',
                currency: 'USD',
                customerIp: '118.200.158.51',
                widgetContainerSelector: '.payment-form',
                logoUrl: "https://checkout.com/wp-content/uploads/Logo_White_v2.png",
                title: 'Payment Title',
                subtitle: 'This is subtitle',
                //forceRedirect: true,              // lightbox opens in new page if true, and subsequent success/failure redirects to page specified in hub
                //forceMobileRedirect: true,
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
                    //Checkout.open();
                    console.log('*** ready ***'); //console messages can be viewed in chrome dev tools console
                    $("#butVerifyCharge").hide();
                },
                cardCharged: function (event) {
                    console.log('*** card charged ***');
                    $("#butVerifyCharge").show();
                    //window.location.href = event.data.redirectUrl; //redirect url set in hub
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
                    $("#butVerifyCharge").hide();
                }
            });
        </script>
        <asp:Button ID="butVerifyCharge" runat="server" Text="Verify Charge" OnClick="butVerifyCharge_Click" Visible="true" Enabled="true" />
    </form>
</body>
</html>

