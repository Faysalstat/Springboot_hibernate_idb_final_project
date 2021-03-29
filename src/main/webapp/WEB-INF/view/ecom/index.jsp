<%-- 
    Document   : index
    Created on : Apr 17, 2020, 7:19:53 PM
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
        <title>Hatkhola-Home</title>
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

        <!-- Body main wrapper start -->
        <div class="wrapper">
            <!-- Start Header Style -->
            <hd:ecomcustomhead/>
            <!-- End Header Style -->
            <!-- Start Single Slide -->
        </div>      
        
            <div class="container">
                <div style="border-radius: 5px;margin: 30px 0;">
                    <img src="/img/banner/banner2.jpg" class="img-rounded" alt="Cinque Terre" height="100%" width="100%">
                </div>
            </div>
       
        <!-- End Single Slide -->

        <!-- Start Slider Area -->
        <!-- Start Our Product Area -->
        <section class="htc__product__area ptb--30 bg__white">
            <div class="container">
                <div class="htc__product__container">
                    <!-- Start Product MEnu -->
                    <div class="row">
                        <div class="col-md-12">
                            <div class="product__menu">
                                <button data-filter="*"  class="is-checked">All</button>
                                <button data-filter=".furniture">Furniture</button>
                                <button data-filter=".bags">Bags</button>
                                <button data-filter=".shoe">Shoe</button>
                                <button data-filter=".accessories">Accessories</button>
                            </div>
                        </div>
                    </div>
                    <!-- End Product MEnu -->
                    <div class="row product__list">
                        <!-- Start Single Product -->
                        <c:forEach var="product" items="${productlist}"  varStatus="status" >
                            <div class="col-md-3 single__pro col-lg-3 col-md-4 ${product.category} col-sm-12">
                                <div class="product foo">
                                    <div class="product__inner">
                                        <div class="pro__thumb">
                                            <div id="add-alert${product.id}" class="img-center">Addedd Successdully</div>
                                            <a href="#">
                                                <img src="/img/products/${product.image}" alt="product images" width="255px" height="255px">
                                            </a>
                                        </div>
                                        <div class="product__hover__info">
                                            <ul class="product__action">
                                                <li><a title="Quick View"  href="quickview/${product.id}"><span class="ti-plus"></span></a></li>
                                                <li><a title="Add TO Cart" href="javascript:void(0);" ><span onclick="addtocarts(${product.id}, false)" class="ti-shopping-cart"></span></a></li>
                                            </ul>
                                        </div>

                                        <div class="add__to__wishlist">
                                            <a data-toggle="tooltip" title="Add To Wishlist" class="add-to-cart" href="javascript:void(0);"><span onclick="addtowishlist(${product.id})" class="ti-heart"></span></a>
                                        </div>

                                    </div>
                                    <div class="product__details">
                                        <h2><a href="product-details.html">${product.productName}</a></h2>
                                        <ul class="product__price">
                                            <li class="old__price">${product.oldPrice} BDT</li>
                                            <li class="new__price">${product.newPrice} BDT</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </section>
        <!-- End Our Product Area -->
        <!-- Start Footer Area -->
        <hd:ecomcustomfooter/>
        <!-- End Footer Area -->
    </div>
    <!-- Body main wrapper end -->
    <!-- QUICKVIEW PRODUCT -->
    <hd:ecomproductview/>
    <!-- END QUICKVIEW PRODUCT -->
    <!-- Placed js at the end of the document so the pages load faster -->

    <!-- jquery latest version -->
    <script src="/ecom/js/vendor/jquery-1.12.4.min.js"></script>
    <!-- Bootstrap Framework js -->
    <script src="/ecom/js/popper.min.js"></script>
    <script src="/ecom/js/bootstrap.min.js"></script>
    <!-- All js plugins included in this file. -->
    <script src="/ecom/js/plugins.js"></script>
    <!-- Main js file that contents all jQuery plugins activation. -->
    <script src="/ecom/js/main.js"></script>
    <script src="/ecom/js/custom.js"></script>


</body>

</html>
