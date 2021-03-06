﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CaptureCardChargeUsingAuthChargeId.aspx.cs" Inherits="CaptureCardCharge" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Capture Card Charge using Card ID</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h1 style="box-sizing: border-box; margin: 10px 0px 30px; -webkit-font-smoothing: antialiased; font-style: normal; font-family: 'Open Sans Light', Helvetica, sans-serif; font-size: 24px; font-weight: 300; color: rgb(37, 86, 160); font-variant: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">Capture Card Charge using AuthCap ID</h1>
    
        <div>
            
            Auth Charge ID:<br />
            <asp:TextBox ID="tb_authChargeId" runat="server" Width="418px"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="but_captureCharge" runat="server" OnClick="but_captureCharge_Click" Text="Capture Card Charge" />
            <br />
            <br />
            Response:<br />
            <asp:TextBox ID="tb_captureChargeRsp" runat="server" Height="238px" ReadOnly="True" TextMode="MultiLine" Width="900px"></asp:TextBox>
            <br />
            <br />
            
        </div>
<hr />
        <p style="box-sizing: border-box; line-height: 25px; margin: 20px 0px; color: rgb(49, 59, 75); font-family: 'Open Sans', Helvetica, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">
            This endpoint captures the payment of an existing, authorised,<span class="Apple-converted-space">&nbsp;</span><strong style="box-sizing: border-box;">Card Charge</strong>. This is the second half of the two-step payment flow, where first you authorized a transaction (created a charge with the capture option set to false). Authorised payments expire exactly seven days after they are created. If they are not captured by that point in time, they will be marked as refunded and will no longer be capturable.</p>
        <div style="box-sizing: border-box; color: rgb(49, 59, 75); font-family: 'Open Sans', Helvetica, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">
            <div class="httpRequest" style="box-sizing: border-box;">
                <h3 style="box-sizing: border-box; margin: 20px 0px; -webkit-font-smoothing: antialiased; font-style: normal; font-family: 'Open Sans', Helvetica, sans-serif; font-size: 15px; color: rgb(49, 59, 75); font-weight: bold;">Request</h3>
                <table class="jsonTable" style="box-sizing: border-box; margin: 20px 0px; width: 920px; max-width: 100%; border-collapse: separate; border-radius: 4px; border-spacing: 1px; overflow: hidden; background-color: rgb(197, 209, 230);">
                    <thead style="box-sizing: border-box;">
                        <tr style="box-sizing: border-box; height: 36px;">
                            <th colspan="2" style="box-sizing: border-box; font-weight: bold; color: rgb(255, 255, 255); font-size: 13px; height: 36px; padding: 2px 8px; background-color: rgb(169, 179, 195);">Http Request</th>
                        </tr>
                    </thead>
                    <tbody style="box-sizing: border-box;">
                        <tr style="box-sizing: border-box; height: 36px;">
                            <td style="box-sizing: border-box; font-weight: 600; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">Uri:</td>
                            <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);"><code class="" style="box-sizing: border-box; line-height: 25px; padding: 0px; border-radius: 3px; font-family: 'Source Code Pro'; background: none;">https://sandbox.checkout.com/api2/v2/charges/{chargeId}/capture</code></td>
                        </tr>
                        <tr style="box-sizing: border-box; height: 36px;">
                            <td style="box-sizing: border-box; font-weight: 600; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">Http Method:</td>
                            <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);"><code class="" style="box-sizing: border-box; line-height: 25px; padding: 0px; border-radius: 3px; font-family: 'Source Code Pro'; background: none;">POST</code></td>
                        </tr>
                        <tr style="box-sizing: border-box; height: 36px;">
                            <td style="box-sizing: border-box; font-weight: 600; line-height: 25px; font-size: 13px; padding: 2px 8px; border-bottom-left-radius: 4px; background-color: rgb(255, 255, 255);">Header Required:</td>
                            <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; border-bottom-right-radius: 4px; background-color: rgb(255, 255, 255);"><code class="" style="box-sizing: border-box; line-height: 25px; padding: 0px; border-radius: 3px; font-family: 'Source Code Pro'; background: none;">SECRET KEY</code></td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <h3 id="H12" style="box-sizing: border-box; margin: 20px 0px; -webkit-font-smoothing: antialiased; font-style: normal; font-family: 'Open Sans', Helvetica, sans-serif; font-size: 15px; color: rgb(49, 59, 75); font-weight: bold;">Uri Resources</h3>
            <table id="refundChargeTable" cellpadding="1" cellspacing="1" class="jsonTable" style="box-sizing: border-box; margin: 20px 0px; width: 920px; max-width: 100%; border-collapse: separate; border-radius: 4px; border-spacing: 1px; overflow: hidden; background-color: rgb(197, 209, 230);">
                <thead style="box-sizing: border-box;">
                    <tr style="box-sizing: border-box; height: 36px;">
                        <th style="box-sizing: border-box; font-weight: bold; color: rgb(255, 255, 255); font-size: 13px; height: 36px; padding: 2px 8px; background-color: rgb(169, 179, 195);">FieldName</th>
                        <th style="box-sizing: border-box; font-weight: bold; color: rgb(255, 255, 255); font-size: 13px; height: 36px; padding: 2px 8px; background-color: rgb(169, 179, 195);">Description</th>
                        <th style="box-sizing: border-box; font-weight: bold; color: rgb(255, 255, 255); font-size: 13px; height: 36px; padding: 2px 8px; background-color: rgb(169, 179, 195);">Type</th>
                        <th style="box-sizing: border-box; font-weight: bold; color: rgb(255, 255, 255); font-size: 13px; height: 36px; padding: 2px 8px; background-color: rgb(169, 179, 195);">required</th>
                    </tr>
                </thead>
                <tbody style="box-sizing: border-box;">
                    <tr style="box-sizing: border-box; height: 36px;">
                        <td style="box-sizing: border-box; font-weight: 600; line-height: 25px; font-size: 13px; padding: 2px 8px; border-bottom-left-radius: 4px; background-color: rgb(255, 255, 255);"><b style="box-sizing: border-box;">chargeId</b></td>
                        <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">The charge id prefixed with charge_ or charge_test_</td>
                        <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">string</td>
                        <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; border-bottom-right-radius: 4px; background-color: rgb(255, 255, 255);">yes</td>
                    </tr>
                </tbody>
            </table>
        </div>
    
    </div>
    </form>
    <h3 id="H13" style="box-sizing: border-box; margin: 20px 0px; -webkit-font-smoothing: antialiased; font-style: normal; font-family: 'Open Sans', Helvetica, sans-serif; font-size: 15px; color: rgb(49, 59, 75); font-weight: bold; font-variant: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">Request Payload Fields</h3>
    <table id="captureChargePayLoadsTable" cellpadding="1" cellspacing="1" class="jsonTable" style="box-sizing: border-box; margin: 20px 0px; width: 920px; max-width: 100%; border-collapse: separate; border-radius: 4px; border-spacing: 1px; overflow: hidden; color: rgb(49, 59, 75); font-family: 'Open Sans', Helvetica, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(197, 209, 230);">
        <thead style="box-sizing: border-box;">
            <tr style="box-sizing: border-box; height: 36px;">
                <th style="box-sizing: border-box; font-weight: bold; color: rgb(255, 255, 255); font-size: 13px; height: 36px; padding: 2px 8px; background-color: rgb(169, 179, 195);">FieldName</th>
                <th style="box-sizing: border-box; font-weight: bold; color: rgb(255, 255, 255); font-size: 13px; height: 36px; padding: 2px 8px; background-color: rgb(169, 179, 195);">Description</th>
                <th style="box-sizing: border-box; font-weight: bold; color: rgb(255, 255, 255); font-size: 13px; height: 36px; padding: 2px 8px; background-color: rgb(169, 179, 195);">Type</th>
                <th style="box-sizing: border-box; font-weight: bold; color: rgb(255, 255, 255); font-size: 13px; height: 36px; padding: 2px 8px; background-color: rgb(169, 179, 195);">required</th>
            </tr>
        </thead>
        <tbody style="box-sizing: border-box;">
            <tr style="box-sizing: border-box; height: 36px;">
                <td style="box-sizing: border-box; font-weight: 600; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);"><b style="box-sizing: border-box;">value</b></td>
                <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">Default is authorisation charge amount if not specified. A positive integer (without decimal separator) representing how much going to be captured. You can capture up to the original amount that was authorized only once.</td>
                <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">integer</td>
                <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">no</td>
            </tr>
            <tr style="box-sizing: border-box; height: 36px;">
                <td style="box-sizing: border-box; font-weight: 600; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);"><b style="box-sizing: border-box;">trackId</b></td>
                <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">Order tracking id generated by the merchant. Max length of 100 characters.</td>
                <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">string</td>
                <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">no</td>
            </tr>
            <tr style="box-sizing: border-box; height: 36px;">
                <td style="box-sizing: border-box; font-weight: 600; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);"><b style="box-sizing: border-box;">description</b></td>
                <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">A description that can be added to this object.</td>
                <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">string</td>
                <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">no</td>
            </tr>
            <tr style="box-sizing: border-box; height: 36px;">
                <td style="box-sizing: border-box; font-weight: 600; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);"><b style="box-sizing: border-box;">products</b></td>
                <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">An array of Product details</td>
                <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">array</td>
                <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">no</td>
            </tr>
            <tr style="box-sizing: border-box; height: 36px;">
                <td style="box-sizing: border-box; font-weight: 600; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);"><span class="products_property tab" style="box-sizing: border-box;">description</span></td>
                <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">Description of the product.Max of 500 characters.</td>
                <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">string</td>
                <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">no</td>
            </tr>
            <tr style="box-sizing: border-box; height: 36px;">
                <td style="box-sizing: border-box; font-weight: 600; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);"><span class="products_property tab" style="box-sizing: border-box;">image</span></td>
                <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">image link to product on merchant website.</td>
                <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">string</td>
                <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">no</td>
            </tr>
            <tr style="box-sizing: border-box; height: 36px;">
                <td style="box-sizing: border-box; font-weight: 600; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);"><span class="products_property tab" style="box-sizing: border-box;">name</span></td>
                <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">Name of product. Max of 100 characters.</td>
                <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">string</td>
                <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">no</td>
            </tr>
            <tr style="box-sizing: border-box; height: 36px;">
                <td style="box-sizing: border-box; font-weight: 600; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);"><span class="products_property tab" style="box-sizing: border-box;">price</span></td>
                <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">Product price per unit. Max. of 6 digits.</td>
                <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">decimal</td>
                <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">no</td>
            </tr>
            <tr style="box-sizing: border-box; height: 36px;">
                <td style="box-sizing: border-box; font-weight: 600; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);"><span class="products_property tab" style="box-sizing: border-box;">quantity</span></td>
                <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">Units of the product to be shipped. Max length of 3 digits.</td>
                <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">integer</td>
                <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">no</td>
            </tr>
            <tr style="box-sizing: border-box; height: 36px;">
                <td style="box-sizing: border-box; font-weight: 600; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);"><span class="products_property tab" style="box-sizing: border-box;">shippingCost</span></td>
                <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">Shipping costs. Max of 6 digits.</td>
                <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">decimal</td>
                <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">no</td>
            </tr>
            <tr style="box-sizing: border-box; height: 36px;">
                <td style="box-sizing: border-box; font-weight: 600; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);"><span class="products_property tab" style="box-sizing: border-box;">sku</span></td>
                <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">Stock Unit Identifier.Unique product identifier. Max length of 100 characters.</td>
                <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">string</td>
                <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">no</td>
            </tr>
            <tr style="box-sizing: border-box; height: 36px;">
                <td style="box-sizing: border-box; font-weight: 600; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);"><span class="products_property tab" style="box-sizing: border-box;">trackingUrl</span></td>
                <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">Third party tracking system url. Max length of 255 characters.</td>
                <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">string</td>
                <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">no</td>
            </tr>
            <tr style="box-sizing: border-box; height: 36px;">
                <td style="box-sizing: border-box; font-weight: 600; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);"><b style="box-sizing: border-box;">metadata</b></td>
                <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">A hash of FieldName and value pairs e.g. {&#39;keys1&#39;: &#39;Value1&#39;}. Max length of key(s) and value(s) is 100 each. A max. of 10 KVP are allowed.</td>
                <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">hash</td>
                <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">no</td>
            </tr>
            <tr style="box-sizing: border-box; height: 36px;">
                <td style="box-sizing: border-box; font-weight: 600; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);"><b style="box-sizing: border-box;">udf1</b></td>
                <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">User defined field 1, max. 100 characters</td>
                <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">string</td>
                <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">no</td>
            </tr>
            <tr style="box-sizing: border-box; height: 36px;">
                <td style="box-sizing: border-box; font-weight: 600; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);"><b style="box-sizing: border-box;">udf2</b></td>
                <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">User defined field 2, max. 100 characters</td>
                <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">string</td>
                <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">no</td>
            </tr>
            <tr style="box-sizing: border-box; height: 36px;">
                <td style="box-sizing: border-box; font-weight: 600; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);"><b style="box-sizing: border-box;">udf3</b></td>
                <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">User defined field 3, max. 100 characters</td>
                <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">string</td>
                <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">no</td>
            </tr>
            <tr style="box-sizing: border-box; height: 36px;">
                <td style="box-sizing: border-box; font-weight: 600; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);"><b style="box-sizing: border-box;">udf4</b></td>
                <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">User defined field 4, max. 100 characters</td>
                <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">string</td>
                <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">no</td>
            </tr>
            <tr style="box-sizing: border-box; height: 36px;">
                <td style="box-sizing: border-box; font-weight: 600; line-height: 25px; font-size: 13px; padding: 2px 8px; border-bottom-left-radius: 4px; background-color: rgb(255, 255, 255);"><b style="box-sizing: border-box;">udf5</b></td>
                <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">User defined field 5, max. 100 characters</td>
                <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; background-color: rgb(255, 255, 255);">string</td>
                <td style="box-sizing: border-box; font-weight: normal; line-height: 25px; font-size: 13px; padding: 2px 8px; border-bottom-right-radius: 4px; background-color: rgb(255, 255, 255);">no</td>
            </tr>
        </tbody>
    </table>
</body>
</html>
