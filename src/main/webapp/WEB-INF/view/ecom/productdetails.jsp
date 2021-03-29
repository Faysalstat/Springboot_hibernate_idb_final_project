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
        <title>Hatkhola</title>
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

        <!-- Start Our Product Area -->
        <section class="htc__product__area ptb--30 bg__white">
            <div class="container">
                <div class="htc__product__container">
                    <!-- End Single Product -->
                    <div class="modal-body">
                        <div class="modal-product">
                            <!-- Start product images -->
                            <div class="product-images">
                                <div class="main-image images">
                                    <img id="qimg" alt="big images" src="/img/products/${product.image}" width="500px" height="500px">
                                </div>
                            </div>
                            <!-- end product images -->
                            <div class="product-info">
                                <h1>${product.productName}</h1>
                                <div class="rating__and__review">
                                    <ul class="rating">
                                        <li><span class="ti-star"></span></li>
                                        <li><span class="ti-star"></span></li>
                                        <li><span class="ti-star"></span></li>
                                        <li><span class="ti-star"></span></li>
                                        <li><span class="ti-star"></span></li>
                                    </ul>
                                    <div class="review">
                                        <a href="#">4 customer reviews</a>
                                    </div>
                                </div>
                                <div class="price-box-3">
                                    <div class="s-price-box">
                                        <span class="new-price">${product.newPrice} BDT</span>
                                        <span class="old-price">${product.oldPrice} BDT</span>
                                    </div>
                                </div>
                                <div class="quick-desc">
                                    ${product.details}
                                </div>
                                <div class="select__color">
                                    <h2>Select color</h2>
                                    <ul class="color__list">
                                        <li class="red"><a title="Red" href="#">Red</a></li>
                                        <li class="gold"><a title="Gold" href="#">Gold</a></li>
                                        <li class="orange"><a title="Orange" href="#">Orange</a></li>
                                        <li class="orange"><a title="Orange" href="#">Orange</a></li>
                                    </ul>
                                </div>
                                <div class="select__size">
                                    <h2>Select size</h2>
                                    <ul class="color__list">
                                        <li class="l__size"><a title="L" href="#">L</a></li>
                                        <li class="m__size"><a title="M" href="#">M</a></li>
                                        <li class="s__size"><a title="S" href="#">S</a></li>
                                        <li class="xl__size"><a title="XL" href="#">XL</a></li>
                                        <li class="xxl__size"><a title="XXL" href="#">XXL</a></li>
                                    </ul>
                                </div>
                                <div class="social-sharing">
                                    <div class="widget widget_socialsharing_widget">
                                        <h3 class="widget-title-modal">Share this product</h3>
                                        <ul class="social-icons">
                                            <li><a target="_blank" title="rss" href="#" class="rss social-icon"><i class="zmdi zmdi-rss"></i></a></li>
                                            <li><a target="_blank" title="Linkedin" href="#" class="linkedin social-icon"><i class="zmdi zmdi-linkedin"></i></a></li>
                                            <li><a target="_blank" title="Pinterest" href="#" class="pinterest social-icon"><i class="zmdi zmdi-pinterest"></i></a></li>
                                            <li><a target="_blank" title="Tumblr" href="#" class="tumblr social-icon"><i class="zmdi zmdi-tumblr"></i></a></li>
                                            <li><a target="_blank" title="Pinterest" href="#" class="pinterest social-icon"><i class="zmdi zmdi-pinterest"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="addtocart-btn">
                                    <a href="/hatkhola/cartlist" onclick="addtocarts(${product.id}, false)">Add to cart</a>
                                </div>
                            </div><!-- .product-info -->
                        </div><!-- .modal-product -->
                    </div><!-- .modal-body -->


                    <div class="row">
                        <div class="col-sm-7">
                            <hr/>
                            <div class="review-block">
                                <div class="row">
                                    <div class="col-sm-3">
                                        <img src="http://dummyimage.com/60x60/666/ffffff&text=No+Image" class="img-rounded">
                                        <div class="review-block-name"><a href="#">nktailor</a></div>
                                        <div class="review-block-date">January 29, 2016<br/>1 day ago</div>
                                    </div>
                                    <div class="col-sm-9">
                                        <div class="review-block-rate">
                                            <button type="button" class="btn btn-warning btn-xs" aria-label="Left Align">
                                                <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                                            </button>
                                            <button type="button" class="btn btn-warning btn-xs" aria-label="Left Align">
                                                <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                                            </button>
                                            <button type="button" class="btn btn-warning btn-xs" aria-label="Left Align">
                                                <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                                            </button>
                                            <button type="button" class="btn btn-default btn-grey btn-xs" aria-label="Left Align">
                                                <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                                            </button>
                                            <button type="button" class="btn btn-default btn-grey btn-xs" aria-label="Left Align">
                                                <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                                            </button>
                                        </div>
                                        <div class="review-block-title">this was nice in buy</div>
                                        <div class="review-block-description">this was nice in buy. this was nice in buy. this was nice in buy. this was nice in buy this was nice in buy this was nice in buy this was nice in buy this was nice in buy</div>
                                    </div>
                                </div>
                                <hr/>
                                <div class="row">
                                    <div class="col-sm-3">
                                        <img src="http://dummyimage.com/60x60/666/ffffff&text=No+Image" class="img-rounded">
                                        <div class="review-block-name"><a href="#">nktailor</a></div>
                                        <div class="review-block-date">January 29, 2016<br/>1 day ago</div>
                                    </div>
                                    <div class="col-sm-9">
                                        <div class="review-block-rate">
                                            <button type="button" class="btn btn-warning btn-xs" aria-label="Left Align">
                                                <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                                            </button>
                                            <button type="button" class="btn btn-warning btn-xs" aria-label="Left Align">
                                                <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                                            </button>
                                            <button type="button" class="btn btn-warning btn-xs" aria-label="Left Align">
                                                <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                                            </button>
                                            <button type="button" class="btn btn-default btn-grey btn-xs" aria-label="Left Align">
                                                <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                                            </button>
                                            <button type="button" class="btn btn-default btn-grey btn-xs" aria-label="Left Align">
                                                <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                                            </button>
                                        </div>
                                        <div class="review-block-title">this was nice in buy</div>
                                        <div class="review-block-description">this was nice in buy. this was nice in buy. this was nice in buy. this was nice in buy this was nice in buy this was nice in buy this was nice in buy this was nice in buy</div>
                                    </div>
                                </div>
                                <hr/>
                                <div class="row">
                                    <div class="col-sm-3">
                                        <img src="http://dummyimage.com/60x60/666/ffffff&text=No+Image" class="img-rounded">
                                        <div class="review-block-name"><a href="#">nktailor</a></div>
                                        <div class="review-block-date">January 29, 2016<br/>1 day ago</div>
                                    </div>
                                    <div class="col-sm-9">
                                        <div class="review-block-rate">
                                            <button type="button" class="btn btn-warning btn-xs" aria-label="Left Align">
                                                <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                                            </button>
                                            <button type="button" class="btn btn-warning btn-xs" aria-label="Left Align">
                                                <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                                            </button>
                                            <button type="button" class="btn btn-warning btn-xs" aria-label="Left Align">
                                                <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                                            </button>
                                            <button type="button" class="btn btn-default btn-grey btn-xs" aria-label="Left Align">
                                                <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                                            </button>
                                            <button type="button" class="btn btn-default btn-grey btn-xs" aria-label="Left Align">
                                                <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                                            </button>
                                        </div>
                                        <div class="review-block-title">this was nice in buy</div>
                                        <div class="review-block-description">this was nice in buy. this was nice in buy. this was nice in buy. this was nice in buy this was nice in buy this was nice in buy this was nice in buy this was nice in buy</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </section>
        <hd:ecomcustomfooter/>
        <div id="alertbox">
            <div class="alertcontent">
                <h4>Order Places Successfully</h4>
                <button onclick="hide();return false;" style="text-align: center" class="btn btn-success">Ok</button>
            </div>
        </div>

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
