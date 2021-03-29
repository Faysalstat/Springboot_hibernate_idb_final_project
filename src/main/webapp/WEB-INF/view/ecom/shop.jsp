<%-- 
    Document   : shop
    Created on : Apr 18, 2020, 3:38:01 PM
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
    <title>Shop Page- Hatkhola</title>
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
        <!-- End Offset Wrapper -->
        <!-- Start Bradcaump area -->
        <div class="ht__bradcaump__area" style="background: rgba(0, 0, 0, 0) url(/img/banner/bannerslim.jpg) no-repeat scroll center center / cover ;">
            <div class="ht__bradcaump__wrap">
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <div class="bradcaump__inner text-center">
                                <h2 class="bradcaump-title">Shop Page</h2>
                                <nav class="bradcaump-inner">
                                  <a class="breadcrumb-item" href="index.html">Home</a>
                                  <span class="brd-separetor">/</span>
                                  <span class="breadcrumb-item active">Shop Page</span>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Bradcaump area --> 
        <!-- Start Our Product Area -->
        <section class="htc__product__area shop__page ptb--130 bg__white">
            <div class="container">
                <div class="htc__product__container">
                    <!-- Start Product MEnu -->
                    <div class="row">
                        <div class="col-md-12">
                            <div class="filter__menu__container">
                                <div class="product__menu">
                                    <button data-filter="*"  class="is-checked">All</button>
                                    <button data-filter=".cat--1">Furnitures</button>
                                    <button data-filter=".cat--2">Bags</button>
                                    <button data-filter=".cat--3">Decoration</button>
                                    <button data-filter=".cat--4">Accessories</button>
                                </div>
                                <div class="filter__box">
                                    <a class="filter__menu" href="#">filter</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Start Filter Menu -->
                    <div class="filter__wrap">
                        <div class="filter__cart">
                            <div class="filter__cart__inner">
                                <div class="filter__menu__close__btn">
                                    <a href="#"><i class="zmdi zmdi-close"></i></a>
                                </div>
                                <div class="filter__content">
                                    <!-- Start Single Content -->
                                    <div class="fiter__content__inner">
                                        <div class="single__filter">
                                            <h2>Sort By</h2>
                                            <ul class="filter__list">
                                                <li><a href="#default">Default</a></li>
                                                <li><a href="#accessories">Accessories</a></li>
                                                <li><a href="#bags">Bags</a></li>
                                                <li><a href="#chair">Chair</a></li>
                                                <li><a href="#decoration">Decoration</a></li>
                                                <li><a href="#fashion">Fashion</a></li>
                                            </ul>
                                        </div>
                                        
                                        <div class="single__filter">
                                            <h2>Size</h2>
                                            <ul class="filter__list">
                                                <li><a href="#xxl">XXL</a></li>
                                                <li><a href="#xl">XL</a></li>
                                                <li><a href="#x">X</a></li>
                                                <li><a href="#l">L</a></li>
                                                <li><a href="#m">M</a></li>
                                                <li><a href="#s">S</a></li>
                                            </ul>
                                        </div>
                                        

                                        <div class="single__filter">
                                            <h2>Tags</h2>
                                            <ul class="filter__list">
                                                <li><a href="#">All</a></li>
                                                <li><a href="#">Accessories</a></li>
                                                <li><a href="#">Bags</a></li>
                                                <li><a href="#">Chair</a></li>
                                                <li><a href="#">Decoration</a></li>
                                                <li><a href="#">Fashion</a></li>
                                            </ul>
                                        </div>
                                        

                                        <div class="single__filter">
                                            <h2>Price</h2>
                                            <ul class="filter__list">
                                                <li><a href="#">$0.00 - $50.00</a></li>
                                                <li><a href="#">$50.00 - $100.00</a></li>
                                                <li><a href="#">$100.00 - $150.00</a></li>
                                                <li><a href="#">$150.00 - $200.00</a></li>
                                                <li><a href="#">$300.00 - $500.00</a></li>
                                                <li><a href="#">$500.00 - $700.00</a></li>
                                            </ul>
                                        </div>
                                        


                                        <div class="single__filter">
                                            <h2>Color</h2>
                                            <ul class="filter__list sidebar__list">
                                                <li class="black"><a href="#"><i class="zmdi zmdi-circle"></i>Black</a></li>
                                                <li class="blue"><a href="#"><i class="zmdi zmdi-circle"></i>Blue</a></li>
                                                <li class="brown"><a href="#"><i class="zmdi zmdi-circle"></i>Brown</a></li>
                                                <li class="red"><a href="#"><i class="zmdi zmdi-circle"></i>Red</a></li>
                                                <li class="orange"><a href="#"><i class="zmdi zmdi-circle"></i>Orange</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <!-- End Single Content -->
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- End Filter Menu -->
                    <!-- End Product MEnu -->
<div class="row product__list">
                        <!-- Start Single Product -->
                        <c:forEach var="product" items="${productlist}"  varStatus="status" >
                            <div class="col-md-3 single__pro col-lg-3 col-md-4 ${product.category} col-sm-12">
                                <div class="product foo">
                                    <div class="product__inner">
                                        <div class="pro__thumb">
                                            <a href="#">
                                                <img src="/img/products/${product.image}" alt="product images" width="255px" height="255px">
                                            </a>
                                        </div>
                                            
                                        <div class="product__hover__info">
                                            <ul class="product__action">
                                                <li><a title="Quick View"  href="quickview/${product.id}"><span class="ti-plus"></span></a></li>
                                                <li><a title="Add TO Cart" href="javascript:void(0);" ><span onclick="addtocarts(${product.id},false)" class="ti-shopping-cart"></span></a></li>
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
                    

                    <!-- Start Load More BTn -->
                    <div class="row mt--60">
                        <div class="col-md-12">
                            <div class="htc__loadmore__btn">
                                <a href="#">load more</a>
                            </div>
                        </div>
                    </div>
                    <!-- End Load More BTn -->
                </div>
            </div>
        </section>
        <!-- End Our Product Area -->
        <!-- Start Footer Area -->
        <hd:ecomcustomfooter/>
        <!-- End Footer Area -->
    </div>
    <!-- Body main wrapper end -->
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
