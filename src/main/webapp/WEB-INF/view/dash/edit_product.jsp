
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Customer"%>
<%@taglib prefix="hd" uri="/tlds/myTags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="Dashboard">
        <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
        <title>Dashio - Bootstrap Admin Template</title>

        <!-- Favicons -->
        <link href="/dash/img/favicon.png" rel="icon">
        <link href="/dash/img/apple-touch-icon.png" rel="apple-touch-icon">

        <!-- Bootstrap core CSS -->
        <link href="/dash/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <!--external css-->
        <link href="/dash/lib/font-awesome/css/font-awesome.css" rel="stylesheet" />
        <link rel="stylesheet" type="text/css" href="/dash/lib/bootstrap-fileupload/bootstrap-fileupload.css" />
        <link rel="stylesheet" type="text/css" href="/dash/lib/bootstrap-datepicker/css/datepicker.css" />
        <link rel="stylesheet" type="text/css" href="/dash/lib/bootstrap-daterangepicker/daterangepicker.css" />
        <link rel="stylesheet" type="text/css" href="/dash/lib/bootstrap-timepicker/compiled/timepicker.css" />
        <link rel="stylesheet" type="text/css" href="/dash/lib/bootstrap-datetimepicker/datertimepicker.css" />
        <!-- Custom styles for this template -->
        <link href="/dash/css/style.css" rel="stylesheet">
        <link href="/dash/css/style-responsive.css" rel="stylesheet">
    </head>

    <body>
        <%
            Customer admin = (Customer) session.getAttribute("admin");

            if (admin == null || !admin.getUserrole().equals("ADMIN")) {
                response.sendRedirect("login");
            }
        %>
        <section id="container">
            <hd:customheader/>
            <hd:customaside/>

            <script>
                function uploadImage() {
                    var formData = new FormData();
                    var fileSelect = document.getElementById("fileSelect");
                    if (fileSelect.files && fileSelect.files.length === 1) {
                        var file = fileSelect.files[0];
                        formData.set("image", file, file.name);
                    }
                    var request = new XMLHttpRequest();
                    request.onreadystatechange = function () {
                        if (this.readyState === 4 && this.status === 200) {
                            var img = JSON.parse(this.responseText);
                            document.getElementById("img").src = "/img/products/" + img.iname;
                            document.getElementById("input-image").value = img.iname;
                        }
                    };
                    request.open('POST', "<c:url value="/product/upload"/>");
                    request.send(formData);
                }
            </script>
            <section id="main-content" >
                <section class="wrapper" style="padding-left:0;" >
                    <div class="row">
                        <div class="col-lg-9">
                            <div class="form-panel">
                                <h2 class="mb">Add Product</h2>
                                <form action="<c:url value="/dashboard/updateproduct"/>" method="POST" id="editproducts" modelAttribute="product">
                                    <input type="hidden" name="id" value="${product.id}"/>
                                    <input type="hidden" name="review" value="${product.review}"/>
                                    <input type="hidden" name="suantitysold" value="${product.quantitysold}"/>
                                    <input id="input-image" name="image" type="hidden" value="${product.image}"/>
                                    <div class="form-group">
                                        <label>Product ID:</label>
                                        <input type="text" class="form-control" id="product_id" value="${product.productId}" 
                                               name="productId" >
                                    </div>
                                    <div class="form-group">
                                        <label>Product Name:</label>
                                        <input type="text" class="form-control" id="product_name" value="${product.productName}" placeholder="Enter Product Name"
                                               name="productName" >
                                    </div>
                                    <div class="form-group">
                                        <label>Select Category:</label>
                                        <select class="form-control" id="category" value="${product.category}" name="category" >
                                            <option>furniture</option>
                                            <option>bags</option>
                                            <option>shoe</option>
                                            <option>accessories</option>
                                        </select>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Cost Price:</label>
                                                <input type="number" value="${product.costPrice}" class="form-control" id="cost_price"
                                                       placeholder="Enter Cost Price" name="costPrice" >
                                            </div>
                                            <div class="form-group">
                                                <label>Old Price:</label>
                                                <input type="number" value="${product.oldPrice}" class="form-control" id="old_price" placeholder="Enter Old Price"
                                                       name="oldPrice" >
                                            </div>
                                            <div class="form-group">
                                                <label>New Price:</label>
                                                <input type="number" value="${product.newPrice}" class="form-control" id="new_price" placeholder="Enter New Price"
                                                       name="newPrice" >
                                            </div>
                                            <div class="form-group">
                                                <label>Quantity:</label>
                                                <input type="number" value="${product.quantity}" class="form-control" id="quantity" placeholder="Enter New Quantity"
                                                       name="quantity" >
                                            </div>
                                            
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <div class="form-group last">
                                                    <label>Image Upload</label>
                                                    <div class="fileupload fileupload-new" data-provides="fileupload">
                                                        <div class="fileupload-new thumbnail" style="width: 250px; height: 150px;">
                                                            <img id="img" src="/img/products/${product.image}" width="250" height="150" alt="image" />
                                                        </div>
                                                        <div class="fileupload-preview fileupload-exists thumbnail" style="max-width: 200px; max-height: 150px; line-height: 20px;"></div>
                                                        <div>
                                                            <span class="btn btn-theme02 btn-file">
                                                                <span class="fileupload-new"><i class="fa fa-paperclip"></i> Select image</span>
                                                                <input type="file" class="default" id="fileSelect" />
                                                            </span>
                                                            <button class="btn btn-theme02 btn-file" onclick="uploadImage();return false">
                                                                <span class="fileupload-new"><i class="fa fa-upload"></i> Upload image</span>
                                                            </button>
                                                            <a href="advanced_form_components.html#" class="btn btn-theme04 fileupload-exists" data-dismiss="fileupload"><i class="fa fa-trash-o"></i> Remove</a>
                                                        </div>
                                                    </div>

                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label>Details:</label>
                                        <textarea class="form-control" rows="5"  id="comment" name="details" >${product.details}</textarea>
                                    </div>
                                    <div class="form-group">
                                        <button type="submit" form="editproducts" value="Submit" class="btn btn-primary btn-lg btn-block">Submit</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class="col-lg-3 ds">
                                         
                        </div>
                    </div>
                </section>
            </section>


            <!--main content end-->
            <!--footer start-->
            <footer class="site-footer">
                <div class="text-center">
                    <p>
                        &copy; Copyrights <strong>Hatkhola</strong>. All Rights Reserved
                    </p>
                    <a href="index.html#" class="go-top">
                        <i class="fa fa-angle-up"></i>
                    </a>
                </div>
            </footer>
            <!--footer end-->
        </section>


        <!-- js placed at the end of the document so the pages load faster -->
        <script src="/dash/lib/jquery/jquery.min.js"></script>
        <script src="/dash/lib/bootstrap/js/bootstrap.min.js"></script>
        <script class="include" type="text/javascript" src="/dash/lib/jquery.dcjqaccordion.2.7.js"></script>
        <script src="/dash/lib/jquery.scrollTo.min.js"></script>
        <script src="/dash/lib/jquery.nicescroll.js" type="text/javascript"></script>
        <script src="/dash/lib/jquery.sparkline.js"></script>
        <!--common script for all pages-->
        <script src="/dash/lib/common-scripts.js"></script>
        <script type="text/javascript" src="/dash/lib/gritter/js/jquery.gritter.js"></script>
        <script type="text/javascript" src="/dash/lib/gritter-conf.js"></script>
        <!--script for this page-->
        <script src="/dash/lib/sparkline-chart.js"></script>
        <script src="/dash/lib/zabuto_calendar.js"></script>
        <script type="text/javascript">
                                                                $(document).ready(function () {
                                                                    var unique_id = $.gritter.add({
                                                                        // (string | mandatory) the heading of the notification
                                                                        title: 'Welcome to Dashio!',
                                                                        // (string | mandatory) the text inside the notification
                                                                        text: 'Hover me to enable the Close Button. You can hide the left sidebar clicking on the button next to the logo.',
                                                                        // (string | optional) the image to display on the left
                                                                        image: '/dash/img/ui-sam.jpg',
                                                                        // (bool | optional) if you want it to fade out on its own or just sit there
                                                                        sticky: false,
                                                                        // (int | optional) the time you want it to be alive for before fading out
                                                                        time: 8000,
                                                                        // (string | optional) the class name you want to apply to that specific message
                                                                        class_name: 'my-sticky-class'
                                                                    });

                                                                    return false;
                                                                });
        </script>
        <script type="application/javascript">
            $(document).ready(function() {
            $("#date-popover").popover({
            html: true,
            trigger: "manual"
            });
            $("#date-popover").hide();
            $("#date-popover").click(function(e) {
            $(this).hide();
            });

            $("#my-calendar").zabuto_calendar({
            action: function() {
            return myDateFunction(this.id, false);
            },
            action_nav: function() {
            return myNavFunction(this.id);
            },
            ajax: {
            url: "show_data.php?action=1",
            modal: true
            },
            legend: [{
            type: "text",
            label: "Special event",
            badge: "00"
            },
            {
            type: "block",
            label: "Regular event",
            }
            ]
            });
            });

            function myNavFunction(id) {
            $("#date-popover").hide();
            var nav = $("#" + id).data("navigation");
            var to = $("#" + id).data("to");
            console.log('nav ' + nav + ' to: ' + to.month + '/' + to.year);
            }
        </script>
    </body>
</html>
