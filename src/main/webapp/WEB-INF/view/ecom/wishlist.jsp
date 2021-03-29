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
        <div class="ht__bradcaump__area" style="background: rgba(0, 0, 0, 0) url(/img/banner/banner3.png) no-repeat scroll  center / cover ;">
            <div class="ht__bradcaump__wrap">
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <div class="bradcaump__inner text-center">
                                <h2 class="bradcaump-title">Wishlist</h2>
                                <nav class="bradcaump-inner">
                                    <a class="breadcrumb-item" href="/hatkhola/index">Home</a>
                                    <span class="brd-separetor">/</span>
                                    <span class="breadcrumb-item active">Wishlist</span>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="wishlist-area ptb--120 bg__white">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="wishlist-content">
                            <form action="#">
                                <div class="wishlist-table table-responsive">
                                    <table id="wishtable">
                                        <thead>
                                            <tr>
                                                <th class="product-remove"><span class="nobr">Remove</span></th>
                                                <th class="product-thumbnail">Image</th>
                                                <th class="product-name"><span class="nobr">Product Name</span></th>
                                                <th class="product-price"><span class="nobr"> Unit Price </span></th>
                                                <th class="product-stock-stauts"><span class="nobr"> Stock Status </span></th>
                                                <th class="product-add-to-cart"><span class="nobr">Add To Cart</span></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:if test = "${wishlist.size()==0}">
                                                <tr>
                                                    <td colspan="6" style="font-size: 20px;color:red">No item in wish list.</td>
                                                </tr>
                                            </c:if>
                                            <c:forEach var="wish" items="${wishlist}"  varStatus="status" >
                                                <tr>
                                                    <td class="product-remove"><a href="javascript:void(0);" onclick="deleterow(this,${wish.id})">×</a></td>
                                                    <td class="product-thumbnail"><a href="quickview/${wish.product.id}"><img src="/img/products/${wish.product.image}" alt="" /></a></td>
                                                    <td class="product-name"><a href="#">${wish.product.productName}</a></td>
                                                    <td class="product-price"><span class="amount">${wish.product.newPrice}</span></td>
                                                    <td class="product-stock-status"><span class="wishlist-in-stock">In Stock</span></td>
                                                    <td class="product-add-to-cart"><a href="javascript:void(0);" onclick="addtocarts(this,${wish.product.id},${wish.id})"> Add to Cart</a></td>
                                                </tr>  
                                            </c:forEach>
                                        </tbody>
                                        <tfoot>
                                            <tr>,
                                                <td colspan="6">
                                                    <div class="wishlist-share">
                                                        <h4 class="wishlist-share-title">Share on:</h4>
                                                        <div class="social-icon">
                                                            <ul>
                                                                <li><a href="#"><i class="zmdi zmdi-rss"></i></a></li>
                                                                <li><a href="#"><i class="zmdi zmdi-vimeo"></i></a></li>
                                                                <li><a href="#"><i class="zmdi zmdi-tumblr"></i></a></li>
                                                                <li><a href="#"><i class="zmdi zmdi-pinterest"></i></a></li>
                                                                <li><a href="#"><i class="zmdi zmdi-linkedin"></i></a></li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
                                        </tfoot>
                                    </table>
                                </div>  
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="alertbox">
            <div class="alertcontent">
                <h4>Successfully Added To Cart</h4>
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
        <script>
                function addtocarts(r, id, cid) {

                    var xhttp = new XMLHttpRequest();
                    xhttp.onreadystatechange = function () {
                        if (this.readyState == 4 && this.status == 200) {
                            console.log(this.responseText);
                            document.getElementById('alertbox').style.display = "block";
                        }
                    };
                    xhttp.open("POST", "http://localhost:8080/cart", true);
                    xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
                    xhttp.send("id=" + id + "&quantity=1");
                    deleterow(r, cid);

                }

                function deleterow(r, id) {
                    var i = r.parentNode.parentNode.rowIndex;
                    document.getElementById("wishtable").deleteRow(i);

                    var xhttp = new XMLHttpRequest();
                    xhttp.onreadystatechange = function () {
                        if (this.readyState == 4 && this.status == 200) {
                            console.log(this.responseText);
                        }
                    };
                    xhttp.open("POST", "http://localhost:8080/wishlist/delete/" + id, true);
                    xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
                    xhttp.send();
                }
                function hide() {
                    document.getElementById('alertbox').style.display = "none";
                }
        </script>
    </body>
</html>
