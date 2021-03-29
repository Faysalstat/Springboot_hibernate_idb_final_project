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
        <title>Wishlist-Hatkhola</title>
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
        <div class="container-fluid">
            <div class="page-header" style="text-align: center;margin:30px;">
                <h1>Track Your Orders</h1>   
                <hr>
            </div>
            <div class="container">
                <div class="jumbotron" style="padding:0 2rem;background-color:#FFF;">
                    <!--<table class="tracktable" style="border-collapse: collapse;">-->
                        <c:forEach var="order" items="${orders}" varStatus="status">
                            <div class="row trackrow">
                                <div class="col-md-1 spans">
                                    <span class="dot"></span>
                                    <span class="sqline"></span>
                                </div>
                                <div class="col-md-7">
                                    <div class="track">
                                        <h3># ${status.index +1}</h3>
                                        <h1>Order ID: ${order.orderId}</h1>      
                                        <h4>Product Name :<span class="tkspan"> ${order.product.productName}</span></h4>
                                        <h4>Quantity : <span class="tkspan"> ${order.quantity}</span></h4>
                                        <h4>Delivery Status : <span class="tkspan">${order.status}</span></h4>
                                    </div>
                                </div>
                                    <div class="col-md-4">
                                         <div class="track">
                                        <h2>Address</h2>
                                        <p>${order.address}</p>
                                        <h4>Contact : <span class="tkspan"> ${order.contact}</span></h4>
                                    </div>
                                    </div>
                            </div>
<!--                            <tr style="padding-top:-5px">
                                <td style="overflow: hidden;">
                                    <span class="dot"></span>
                                    <span class="sqline"></span>
                                </td>
                                <td>
                                    <div class="track">
                                        <h3># $ {status.index +1}</h3>
                                        <h1>Order ID: $ {order.orderId}</h1>      
                                        <h4>Product Name :<span class="tkspan"> $ {order.product.productName}</span></h4>
                                        <h4>Quantity : <span class="tkspan"> $ {order.quantity}</span></h4>
                                        <h4>Delivery Status : <span class="tkspan">$ {order.status}</span></h4>
                                    </div>
                                </td>
                                <td>
                                    <div class="track">
                                        <h2>Address</h2>
                                        <p>$ { order.address}</p>
                                        <h4>Contact : <span class="tkspan"> $ { order.contact}</span></h4>
                                    </div>

                                </td>
                            </tr>-->
                        </c:forEach>

                        <!--                        <tr>
                                                    <td>
                                                        <span class="dot"></span>
                                                        <span class="sqline"></span>
                                                    </td>
                                                    <td>
                                                        <div class="track">
                                                             <h3>#2</h3>
                                                            <h1>Order ID: UD03234938</h1>      
                                                            <h4>Product Name :<span class="tkspan"> Chair</span></h4>
                                                            <h4>Quantity : <span class="tkspan"> 3</span></h4>
                                                            <h4>Delivery Status : <span class="tkspan">Pending</span></h4>
                                                        </div>
                                                    </td>
                                                </tr>-->
                    <!--</table>-->
                </div>
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
    </body>
</html>
