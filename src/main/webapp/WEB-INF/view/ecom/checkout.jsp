<%-- 
    Document   : checkout
    Created on : Apr 22, 2020, 5:42:22 PM
    Author     : Faysal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="hd" uri="/tlds/myTags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Checkout- Hatkhola</title>
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
        <!-- Start Bradcaump area -->
        <div class="ht__bradcaump__area" style="background: rgba(0, 0, 0, 0) url(/img/banner/checkout.jpg) no-repeat scroll center center / cover ;">
            <div class="ht__bradcaump__wrap">
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <div class="bradcaump__inner text-center">
                                <h2 class="bradcaump-title">Checkout</h2>
                                <nav class="bradcaump-inner">
                                    <a class="breadcrumb-item" href="index.html">Home</a>
                                    <span class="brd-separetor">/</span>
                                    <span class="breadcrumb-item active">Checkout</span>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Bradcaump area -->

        <!-- Start Checkout Area -->
        <section class="our-checkout-area ptb--120 bg__white">
            <div class="container">
                <div class="row">
                    <div class="col-md-8 col-lg-8">
                        <div class="ckeckout-left-sidebar">
                            <!-- Start Checkbox Area -->
                            <div class="checkout-form">
                                <h2 class="section-title-3">Billing details</h2>
                                <div class="checkout-form-inner">
                                    <div class="single-checkout-box select-option mt--40">
                                        <select id="dist" onchange = "populate(this.id)">
                                            <option value="">District*</option>
                                            <option value="dhaka">Dhaka</option>
                                            <option value="bogura">Bogura</option>
                                            <option value="rangpur">Rangpur</option>
                                        </select>
                                        <input id="houseno" type="text" placeholder="House NO*"/>
                                    </div>
                                    <div class="single-checkout-box ">
                                        <select id="city" >
                                            <option value="">Select City</option>
                                        </select>
                                        <input id="roadno" type="text" placeholder="Road NO*">
                                    </div>
                                    <div class="single-checkout-box">
                                        <textarea id="fulladress" name="fulladdress" placeholder="Full Address Here*"></textarea>
                                    </div>
                                    <div class="single-checkout-box">
                                        <input id="contact" type="text" placeholder="Contact No*">
                                    </div>
                                </div>
                            </div>

                            <div class="our-payment-sestem">
                                <h2 class="section-title-3">We  Accept :</h2>
                                <ul class="payment-menu">
                                    <li><a href="#"><img src="/ecom/images/payment/cash.png" alt="payment-img" width="100px" height="100px"></a></li>
                                    <li onclick="payWithPaystack();return 0;"><a href="#"><img src="/ecom/images/payment/visa.png" alt="payment-img" width="100px" height="100px"></a></li>
                                    <li><a href="#"><img src="/ecom/images/payment/bkash.jpg" alt="payment-img" width="100px" height="100px"></a></li>
                                </ul>
                                <div class="checkout-btn">
                                    <button class="btn btn-success" onclick="orderNow()">CONFIRM & BUY NOW</button>
                                    <!--<a class="ts-btn btn-light btn-large hover-theme" href="javascript:void(0);" onclick="orderNow()">CONFIRM & BUY NOW</a>-->
                                </div>    
                            </div>
                            <!-- End Payment Way -->
                        </div>
                    </div>
                    <div class="col-md-4 col-lg-4">
                        <div class="checkout-right-sidebar">
                            <div class="our-important-note">
                                <h2 class="section-title-3">Note :</h2>
                                <p class="note-desc">Lorem ipsum dolor sit amet, consectetur adipisici elit, sed do eiusmod tempor incididunt ut laborekf et dolore magna aliqua.</p>
                                <ul class="important-note">
                                    <li><a href="#"><i class="zmdi zmdi-caret-right-circle"></i>Lorem ipsum dolor sit amet, consectetur nipabali</a></li>
                                    <li><a href="#"><i class="zmdi zmdi-caret-right-circle"></i>Lorem ipsum dolor sit amet</a></li>
                                    <li><a href="#"><i class="zmdi zmdi-caret-right-circle"></i>Lorem ipsum dolor sit amet, consectetur nipabali</a></li>
                                    <li><a href="#"><i class="zmdi zmdi-caret-right-circle"></i>Lorem ipsum dolor sit amet, consectetur nipabali</a></li>
                                    <li><a href="#"><i class="zmdi zmdi-caret-right-circle"></i>Lorem ipsum dolor sit amet</a></li>
                                </ul>
                            </div>
                            <div class="puick-contact-area mt--60">
                                <h2 class="section-title-3">Quick Contract</h2>
                                <a href="phone:+8801722889963">+88 01900 939 500</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <div id="alertbox">
            <div class="alertcontent">
                <h4>Order Places Successfully</h4>
                <button onclick="hide();return false;" style="text-align: center" class="btn btn-success">Ok</button>
            </div>
        </div>
        <!-- End Checkout Area -->

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
        <script src="/ecom/js/custom.js"></script>

        <script type="text/javascript">
                    if (document.getElementById("dist").value == "") {
                        document.getElementById("city").disabled = true;
                    }

                    function populate(s) {
                        var s = document.getElementById(s);
                        var arr = ["|Select District"];
                        var arrbodura = ["sadar|Sadar", "shibganj|Shibganj", "shajahanpur|Shajahanpur"];
                        var arrdhaka = ["mirpur|Mirpur", "Uttora|uttora", "mohammadpur|Mohammadpur"];
                        var arrrangpur = ["sadar|Sadar", "kaunia|Kaunia", "saidpur|Saidpur"];
                        if (s.value == "bogura") {
                            generatecity(arrbodura);
                        }
                        if (s.value == "") {
                            document.getElementById("city").disabled = true;
                            generatecity(arr);
                        }
                        if (s.value == "dhaka") {
                            generatecity(arrdhaka);
                        }
                        if (s.value == "rangpur") {
                            generatecity(arrrangpur);
                        }

                    }
                    function generatecity(arr) {
                        var s1 = document.getElementById('city');
                        document.getElementById("city").disabled = false;
                        for (var option in arr) {
                            var pair = arr[option].split("|");
                            var new_op = document.createElement("option");
                            new_op.value = pair[0];
                            new_op.innerHTML = pair[1];
                            s1.options.add(new_op);
                        }
                    }



                    var paymentMethod = "Cash On Delevery";
                    function orderNow() {
                        var dist = document.getElementById('dist').value;
                        var city = document.getElementById('city').value;
                        var houseno = document.getElementById('houseno').value;
                        var road = document.getElementById('roadno').value;
                        var fulladdress = document.getElementById('fulladress').value;
                        var contact = document.getElementById('contact').value;
                        var add = fulladdress + ". H:" + houseno + ", Road: " + road + ".<br> " + city + ", " + dist;
            <c:forEach var="cart" items="${cartlist}"  varStatus="status" >
                        checkout(new Order(new Product(${cart.product.id}),${cart.quantity}, paymentMethod, add, contact),${cart.id});
            </c:forEach>
                    }

                    function checkout(order, cartid) {
                        var json = JSON.stringify(order);
                        var xhttp = new XMLHttpRequest();
                        xhttp.onreadystatechange = function () {
                            if (this.readyState === 4 && this.status === 200) {
                                console.log(this.responseText);
                                document.getElementById('alertbox').style.display = "block";
                                deletefromcart(cartid);
                            }
                        };
                        xhttp.open("POST", "http://localhost:8080/hatkhola/placeorder", true);
                        xhttp.setRequestHeader("Content-Type", "application/json");
                        xhttp.setRequestHeader("Access-Control-Allow-Origin", "*");
                        xhttp.send(json);
                    }
                    function deletefromcart(id) {
                        var xhttp = new XMLHttpRequest();
                        xhttp.onreadystatechange = function () {
                            if (this.readyState === 4 && this.status === 200) {
                                console.log(this.responseText);
                            }
                        };
                        xhttp.open("POST", "http://localhost:8080/cart/delete/" + id, true);
                        xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
                        xhttp.send();
                    }


                    function hide() {
                        document.getElementById('alertbox').style.display = "none";
                    }
        </script> 
        <script src="https://js.paystack.co/v1/inline.js"></script>
        <script>
                    function payWithPaystack() {
                        var ref = '' + Math.floor((Math.random() * 1000000000) + 1);
                        var handler = PaystackPop.setup({
                            key: 'pk_test_c7a3e3051884eceae0a3abc5b8a613bc8504402f',
                            email: '${customer.email}',
                            amount: ${totalpayment} * 100,
                            currency: 'NGN',
                            name: '${customer.customername}',
                            ref: ref, // generates a pseudo-unique reference. Please replace with a reference you generated. Or remove the line entirely so our API will generate one for you
                            metadata: {
                                custom_fields: [
                                    {
                                        display_name: "Mobile Number",
                                        variable_name: "mobile_number",
                                        value: "+2348012345678"
                                    }
                                ]
                            },
                            callback: function (response) {
                                var xhttp = new XMLHttpRequest();
                                xhttp.onreadystatechange = function () {
                                    if (this.readyState == 4 && this.status == 200) {
//                                        location.reload();
                                        console.log(this.responseText);

                                    }
                                };
                                xhttp.open("POST", "/order/paymentsuccess/" + ref, true);
                                xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
                                xhttp.send();
                            },
                            onClose: function () {
                                alert('window closed');
                            }
                        });
                        handler.openIframe();
                    }
        </script>

    </body>
</html>
