<%@ Page Language="C#" AutoEventWireup="true" CodeFile="checkoutkit.aspx.cs" Inherits="veryfycharge" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Checkoutkit</title>
    <script src="http://code.jquery.com/jquery-1.10.2.js"></script>
    <script>
            window.CKOConfig = {
                debugMode: true,
                publicKey: 'pk_test_67b6e002-7cf4-4bea-80b7-89b8e0650c92', //'pk_test_1fd03f77-aa3d-4c6e-81af-b9357fee8b67',
                customerEmail: 'user@email.com',
                ready: function (event) {
                    console.log("CheckoutKit.js is ready");
                    CheckoutKit.monitorForm('.card-form', CheckoutKit.CardFormModes.CARD_TOKENISATION);
                },
                apiError: function (event) {
                    // ...
                    console.log(event);
                }
            };
    </script>
</head>
<body>
<form class="card-form" method="POST" action="returnpage.aspx">
    <input data-checkout="email-address" name="email-address" type="email" placeholder="Email address">
    <input data-checkout="card-number" type="text" placeholder="Credit card number">
    <input data-checkout="card-name" type="text" placeholder="Name on card">
    <input data-checkout="expiry-month" type="text" placeholder="MM">
    <input data-checkout="expiry-year" type="text" placeholder="YY">
    <input data-checkout="cvv" type="text" placeholder="CVV">
    <br />
    <input type="submit" value="Pay Now">
</form>
    <form id="payment-form">
        <script async src="https://sandbox.checkout.com/js/v1/checkoutkit.js"></script>
    </form>

</body>
</html>
