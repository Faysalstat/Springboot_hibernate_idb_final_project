<%-- 
    Document   : cartlist
    Created on : Apr 22, 2020, 5:16:40 PM
    Author     : Faysal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="hd" uri="/tlds/myTags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html class="no-js" lang="zxx">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Cart-Hatkhola</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- Place favicon.ico in the root directory -->
        <link rel="shortcut icon" type="image/x-icon" href="/ecom/images/favicon.ico">
        <link rel="apple-touch-icon" href="apple-touch-icon.png">

        <!-- Bootstrap Fremwork Main Css -->
        <link rel="stylesheet" href="/ecom/css/bootstrap.min.css">
        <!-- All Plugins css -->
        <link rel="stylesheet" href="/ecom/css/plugins.css">
        <!-- Theme shortcodes/elements style -->
        <link rel="stylesheet" href="/ecom/css/shortcode/shortcodes.css">
        <!-- Theme main style -->
        <link rel="stylesheet" href="/ecom/css/style.css">
        <!-- Responsive css -->
        <link rel="stylesheet" href="/ecom/css/responsive.css">
        <!-- User style -->
        <link rel="stylesheet" href="/ecom/css/custom.css">

        <!-- Modernizr JS -->
        <script src="/ecom/js/vendor/modernizr-2.8.3.min.js"></script>
    </head>

    <body>

        <!-- Start Header Style -->
        <hd:ecomcustomhead/>
        <!-- End Header Style -->
        <div class="ht__bradcaump__area" style="background: rgba(0, 0, 0, 0) url(images/bg/2.jpg) no-repeat scroll center center / cover ;">
            <div class="ht__bradcaump__wrap">
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <div class="bradcaump__inner text-center">
                                <h2 class="bradcaump-title">Cart</h2>
                                <nav class="bradcaump-inner">
                                    <a class="breadcrumb-item" href="/hatkhola/index">Home</a>
                                    <span class="brd-separetor">/</span>
                                    <span class="breadcrumb-item active">Cart</span>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="cart-main-area  bg__white">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-sm-12 col-12">
                        <form action="#">               
                            <div class="table-content table-responsive">
                                <table id="carttable">
                                    <thead>
                                        <tr>
                                            <th class="product-thumbnail">Image</th>
                                            <th class="product-name">Product</th>
                                            <th class="product-price">Price</th>
                                            <th class="product-quantity">Quantity</th>
                                            <th class="product-subtotal">Total</th>
                                            <th class="product-remove">Remove</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:if test = "${cartlist.size()==0}">
                                                <tr>
                                                    <td colspan="6" style="font-size: 20px;color:red">No item in Cart list.</td>
                                                </tr>
                                        </c:if>
                                        <c:forEach var="cart" items="${cartlist}"  varStatus="status" >
                                            <tr>
                                                <td class="product-thumbnail"><a href="#"><img src="/img/products/${cart.product.image}" alt="product img" /></a></td>
                                                <td class="product-name"><a href="#">${cart.product.productName}</a></td>
                                                <td class="product-price"><span class="amount">${cart.product.newPrice} BDT</span></td>
                                                <td class="product-quantity"><input id="quantity_${status.index}" type="number" value="${cart.quantity}" onchange="subTotal(${status.index},${cart.product.newPrice})" /></td>
                                                <td class="product-subtotal" id="subtotal_${status.index}">${cart.quantity * cart.product.newPrice} BDT</td>
                                                <td class="product-remove"><a href="javascript:void(0);" onclick="deleterow(this,${cart.id})">X</a></td>
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>

                            </div>
                            <div class="row">
                                <div class="col-md-8 col-sm-12">
                                    <div class="buttons-cart">
                                        <input type="button" value="Update Cart" onclick="updatecartlist()" />
                                        <a href="/hatkhola/shop">Continue Shopping</a>
                                    </div>


                                    <div class="coupon">
                                        <h3>Coupon</h3>
                                        <p>Enter your coupon code if you have one.</p>
                                        <input type="text" placeholder="Coupon code" />
                                        <input type="submit" value="Apply Coupon" />
                                    </div>
                                </div>
                                <div class="col-md-4 col-sm-12 ">
                                    <div class="cart_totals">
                                        <h2>Cart Totals</h2>
                                        <table>
                                            <tbody>
                                                <tr class="cart-subtotal">
                                                    <th>Subtotal</th>
                                                    <td><span id="stotal" class="amount">£215.00</span></td>
                                                </tr>
                                                <tr class="shipping">
                                                    <th>Shipping</th>
                                                    <td>
                                                        <ul id="shipping_method">
                                                            <li>
                                                                <input type="radio" /> 
                                                                <label>
                                                                    Flat Rate: <span class="amount">100 BDT</span>
                                                                </label>
                                                            </li>
                                                            <li>
                                                                <input type="radio" /> 
                                                                <label>
                                                                    Free Shipping
                                                                </label>
                                                            </li>
                                                            <li></li>
                                                        </ul>
                                                        <p><a class="shipping-calculator-button" href="#">Calculate Shipping</a></p>
                                                    </td>
                                                </tr>
                                                <tr class="order-total">
                                                    <th>Total</th>
                                                    <td>
                                                        <strong><span id="ftotal" class="amount">£215.00</span></strong>
                                                    </td>
                                                </tr>                                           
                                            </tbody>
                                        </table>
                                        <div class="wc-proceed-to-checkout">
                                            <a href="/hatkhola/checkout">Proceed to Checkout</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </form> 
                    </div>
                </div>
            </div>
        </div>
        <div id="alertbox">
            <div class="alertcontent">
                <h4>Order Places Successfully</h4>
            <button onclick="hide();return false;" style="text-align: center" class="btn btn-success">Ok</button>
            </div>
        </div>
        <!--footer start-->
        <hd:ecomcustomfooter/>
        <!--footer end-->
        <!-- jquery latest version -->
        <script src="/ecom/js/vendor/jquery-1.12.4.min.js"></script>
        <!-- Bootstrap Framework js -->
        <script src="/ecom/js/popper.min.js"></script>
        <script src="/ecom/js/bootstrap.min.js"></script>
        <!-- All js plugins included in this file. -->
        <script src="/ecom/js/plugins.js"></script>
        <!-- Main js file that contents all jQuery plugins activation. -->
        <script src="/ecom/js/main.js"></script>
        <script src="/ecom/js/customclasses.js"></script>
        <script>
                                            var subtotalinit = 0;
            <c:forEach var="cart" items="${cartlist}"  varStatus="status" >
                                            subtotalinit += ${cart.quantity * cart.product.newPrice};
            </c:forEach>
                                            document.getElementById('stotal').innerHTML = subtotalinit + " BDT";
                                            document.getElementById('ftotal').innerHTML = subtotalinit + 100 + " BDT";
                                            function updatecartlist() {
                                                var list = new Array();
                                                var subtotal = 0;
            <c:forEach var="cart" items="${cartlist}"  varStatus="status" >
                                                var quantity = parseInt(document.getElementById('quantity_${status.index}').value);
                                                list.push(new Cart(${cart.id}, null, null, quantity));
                                                subtotal += (${cart.product.newPrice} * quantity);
            </c:forEach>
                                                var json = JSON.stringify(list);
                                                var xhttp = new XMLHttpRequest();
                                                xhttp.onreadystatechange = function () {
                                                    if (this.readyState == 4 && this.status == 200) {
                                                        console.log(this.responseText);
                                                    }
                                                };
                                                xhttp.open("POST", "http://localhost:8080/cart/update", true);
                                                xhttp.setRequestHeader("Content-Type", "application/json");
                                                xhttp.setRequestHeader("Access-Control-Allow-Origin", "*");
                                                xhttp.send(json);
                                                document.getElementById('stotal').innerHTML = subtotal + " BDT";
                                                document.getElementById('ftotal').innerHTML = subtotal + 100 + " BDT";
                                            }
        </script>
        <script>
            function subTotal(id, price) {
                var qnt = document.getElementById("quantity_" + id).value;
                document.getElementById("subtotal_" + id).innerHTML = parseInt(qnt) * price + " BDT";
            }

            function deleterow(r, id) {
                var i = r.parentNode.parentNode.rowIndex;
                document.getElementById("carttable").deleteRow(i);

                var xhttp = new XMLHttpRequest();
                xhttp.onreadystatechange = function () {
                    if (this.readyState == 4 && this.status == 200) {
                        console.log(this.responseText);
                        alert("Product " + JSON.parse(this.responseText).status);
                    }
                };
                xhttp.open("POST", "http://localhost:8080/cart/delete/" + id, true);
                xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
                xhttp.send();
            }
        </script>
    </body>
</html>
