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
            <div class="container">
                <div class="htc__login__register  ptb--130" >
                    <div class="container">
                        <div class="row">
                            <div class="col-md-6 ml-auto mr-auto">
                                <ul class="login__register__menu nav justify-contend-center" role="tablist">
                                    <li role="presentation" class="login active"><a class="active" href="#login" role="tab" data-toggle="tab">Login</a></li>
                                    <li role="presentation" class="register"><a href="#register" role="tab" data-toggle="tab">Register</a></li>
                                </ul>
                            </div>
                        </div>
                        <!-- Start Login Register Content -->
                        <div class="row tab-content">
                            <div class="col-md-6  ml-auto mr-auto">
                                <div class="htc__login__register__wrap">
                                    <!-- Start Single Content -->
                                    <div id="login" role="tabpanel" class="single__tabs__panel tab-pane active">
                                        <form class="login" action="login" method="post" id="login-form">
                                            <input class="form-control" name="username" type="text" placeholder="User Name*">
                                            <input class="form-control" type="password" name="password" placeholder="Password*">
                                        </form>
                                        <div class="tabs__checkbox">
                                            <input type="checkbox">
                                            <span> Remember me</span>
                                            <span class="forget"><a href="#">Forget Pasword?</a></span>
                                        </div>
                                        <div class="htc__login__btn mt--30">
                                            <button class="btn btn-success"  type="submit" form="login-form">Sign Up</button>
                                        </div>
                                        <div class="htc__social__connect">
                                            <h2>Or Login With</h2>
                                            <ul class="htc__soaial__list">
                                                <li><a class="bg--twitter" href="https://twitter.com/devitemsllc" target="_blank"><i class="zmdi zmdi-twitter"></i></a></li>

                                                <li><a class="bg--instagram" href="https://www.instagram.com/devitems/" target="_blank"><i class="zmdi zmdi-instagram"></i></a></li>

                                                <li><a class="bg--facebook" href="https://www.facebook.com/devitems/?ref=bookmarks" target="_blank"><i class="zmdi zmdi-facebook"></i></a></li>

                                                <li><a class="bg--googleplus" href="https://plus.google.com/" target="_blank"><i class="zmdi zmdi-google-plus"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <!-- End Single Content -->
                                    <!-- Start Single Content -->
                                    <div id="register" role="tabpanel" class="single__tabs__panel tab-pane">
                                        <form action="registeruser" method="POST" id="user-form">
                                            <div class="form-group">
                                                <label> Name:</label>
                                                <input name="customername" type="text" class="form-control" />
                                            </div>
                                            <div class="form-group">
                                                <label> Email:</label>
                                                <input name="email" type="email" class="form-control" />
                                            </div>
                                            <div class="form-group">
                                                <label>Contact:</label>
                                                <input name="contactno" type="text" class="form-control" />
                                            </div>
                                            <div class="form-group">
                                                <label>User Name</label>
                                                <input name="username" type="text" class="form-control" />
                                            </div>
                                            <div class="form-group">
                                                <label for="pwd">Password:</label>
                                                <input name="password" type="password" class="form-control" id="pwd">
                                            </div>
                                        </form>
                                        <div class="htc__login__btn">
                                            <button class="btn btn-success"  type="submit" form="user-form">Sign Up</button>
                                        </div>
                                        <div class="htc__social__connect">
                                            <h2>Or Login With</h2>
                                            <ul class="htc__soaial__list">
                                                <li><a class="bg--twitter" href="https://twitter.com/devitemsllc" target="_blank"><i class="zmdi zmdi-twitter"></i></a></li>
                                                <li><a class="bg--instagram" href="https://www.instagram.com/devitems/" target="_blank"><i class="zmdi zmdi-instagram"></i></a></li>
                                                <li><a class="bg--facebook" href="https://www.facebook.com/devitems/?ref=bookmarks" target="_blank"><i class="zmdi zmdi-facebook"></i></a></li>
                                                <li><a class="bg--googleplus" href="https://plus.google.com/" target="_blank"><i class="zmdi zmdi-google-plus"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <!-- End Single Content -->
                                </div>
                            </div>
                        </div>
                        <!-- End Login Register Content -->
                    </div>
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
