<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Customer"%>
<%@taglib prefix="hd" uri="/tlds/myTags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="Dashboard">
        <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
        <title>Order Management</title>

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
        <link href="/dash/css/custom.css" rel="stylesheet">
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
            <section id="main-content">
                <section class="wrapper">
                    <h3><i class="fa fa-angle-right"></i> Order Report</h3>
                    <!-- SIMPLE TO DO LIST -->
                    <div class="row mt">
                        <div class="col-md-12">
                            <div class="white-panel pn" style="height: 360px;">
                                <div class="panel-heading">
                                    <div class="pull-left">
                                        <h5><i class="fa fa-tasks"></i> Todo List - Basic Style</h5>
                                    </div>
                                    <br>
                                </div>
                                <div class="custom-check goleft mt">
                                    
                                    <div class="col-md-3">
                                        <div class="orderbox order-bg-2">
                                            <h2>Pending</h2>
                                            <hr>
                                            <span class="label">Total:</span><span class="total">${pending}</span>
                                        </div>
                                    </div>
                                        <div class="col-md-3">
                                        <div class="orderbox order-bg-4">
                                            <h2>Processing</h2>
                                            <hr>
                                            <span class="label">Total:</span><span class="total">${processing}</span>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="orderbox order-bg-3">
                                            <h2>Shipping</h2>
                                            <hr>
                                            <span class="label">Total:</span><span class="total">${shipping}</span>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="orderbox order-bg-4">
                                            <h2>Delivered</h2>
                                            <hr>
                                            <span class="label">Total:</span><span class="total">${delivered}</span>
                                        </div>
                                    </div>
                                    <div class="col-md-3" style="margin-top: 10px;">
                                        <div class="orderbox order-bg-5">
                                            <h2>Canceled</h2>
                                            <hr>
                                            <span class="label">Total:</span><span class="total">${canceled}</span>
                                        </div>
                                    </div>
                                </div>


                            </div>
                            <!-- /table-responsive -->
                        </div>
                        <!--/ White-panel -->
                    </div>
                    <!-- /col-md-12 -->
                    </div>
                    <!--  row -->
                    <!-- COMPLEX TO DO LIST -->
                    <div class="panel-heading">
                        <div class="pull-left">
                            <h2><i class="fa fa-hourglass"></i> Pending Order</h2>
                        </div>
                        <br>
                    </div>
                    <div class="row mt ">
                        <div class="col-md-12">
                            <div class="white-panel" style="height: 100%;text-align: left">
                                <section class="task-panel tasks-widget">
                                    <div class="panel-body">
                                        <div class="task-content">
                                            <ul class="task-list" id="myList">
                                                <c:forEach var="order" items="${orderlist}"  varStatus="status" >
                                                    <c:choose>
                                                        <c:when test="${order.status eq 'Pending'}">
                                                            <li>
                                                                <div class="task-title row">
                                                                    <div class="col-md-1"><h1>#${status.index +1} </h1></div>
                                                                    <div class="col-md-7">
                                                                        <span class="task-title-sp" style="font-size: 20px;">Order No: # ${order.orderId}</span>
                                                                        <h3>Product Name: ${order.product.productName} </h3>
                                                                        <h4>Quantity: <span>${order.quantity} pcs</span></h4>
                                                                        <h4>Customer Name: ${order.customer.customername}</h4>
                                                                        <h5>Address:</h5>
                                                                        <p>${order.address}</p>
                                                                    </div>
                                                                    <div class="col-md-4">
                                                                        <button type="button" class="btn btn-theme" onclick="startProcessing(${order.id})"><i class="fa fa-check"> </i> Confirm</button>
                                                                        <button type="button" class="btn btn-theme02"><i class="fa fa-pencil"></i> Edit</button>
                                                                        <button type="button" class="btn btn-theme04" onclick="cancelOrder(${order.id})"><i class="fa fa-trash-o"></i> Cancel</button>
                                                                    </div>
                                                                </div>
                                                                <hr>
                                                            </li>
                                                        </c:when>
                                                    </c:choose>
                                                </c:forEach>
                                            </ul>
                                        </div>
                                    </div>
                                </section>
                            </div>

                        </div>
                        <!-- /col-md-12-->
                    </div>
                    <!-- /row -->
                    <!-- SORTABLE TO DO LIST -->
                    <div class="panel-heading">
                        <div class="pull-left" >
                            <h2><i class="fa fa-hourglass"></i> Order To Shipping</h2>
                        </div>
                        <br>
                    </div>
                    <div class="row mt">
                        <div class="col-md-12">
                            <div class="white-panel" style="height: 100%;text-align: left">
                                <section class="task-panel tasks-widget">
                                    <div class="panel-body">
                                        <div class="task-content">
                                            <ul class="task-list">
                                                <c:forEach var="order" items="${orderlist}"  varStatus="status" >
                                                    <c:if test = "${order.status == 'Processing'}">
                                                        <li>
                                                            <div class="task-title row">
                                                                <div class="col-md-1"><h1>#${status.index +1} </h1></div>
                                                                <div class="col-md-7">
                                                                    <span class="task-title-sp" style="font-size: 20px;">Order No: # ${order.orderId}</span>
                                                                    <h3>Product Name: ${order.product.productName} </h3>
                                                                    <h4>Quantity: <span>${order.quantity} pcs</span></h4>
                                                                    <h4>Customer Name: ${order.customer.customername}</h4>
                                                                    <h5>Address:</h5>
                                                                    <p>${order.address}</p>
                                                                </div>
                                                                <div class="col-md-4">
                                                                    <button type="button" class="btn btn-theme" onclick="startShipping(${order.id})"><i class="fa fa-check"> </i> Confirm</button>
                                                                    <button type="button" class="btn btn-theme02" onclick="editOrder(${order.id})"><i class="fa fa-pencil"></i> Edit</button>
                                                                    <button type="button" class="btn btn-theme04" onclick="cancelOrder(${order.id})"><i class="fa fa-trash-o"></i> Cancel</button>
                                                                </div>
                                                            </div>
                                                            <hr>
                                                        </li>
                                                    </c:if>
                                                </c:forEach>
                                            </ul>
                                        </div>
                                    </div>
                                </section>
                            </div>
                        </div>
                        <!-- /col-md-12-->
                    </div>
                    <div class="panel-heading">
                        <div class="pull-left" >
                            <h2><i class="fa fa-hourglass"></i> Order To deliver</h2>
                        </div>
                        <br>
                    </div>
                    <div class="row mt">
                        <div class="col-md-12">
                            <div class="white-panel" style="height: 100%;text-align: left">
                                <section class="task-panel tasks-widget">
                                    <div class="panel-body">
                                        <div class="task-content">
                                            <ul class="task-list">
                                                <c:forEach var="order" items="${orderlist}"  varStatus="status" >
                                                    <c:if test = "${order.status == 'Shipping'}">
                                                        <li>
                                                            <div class="task-title row">
                                                                <div class="col-md-1"><h1>#${status.index +1} </h1></div>
                                                                <div class="col-md-7">
                                                                    <span class="task-title-sp" style="font-size: 20px;">Order No: # ${order.orderId}</span>
                                                                    <h3>Product Name: ${order.product.productName} </h3>
                                                                    <h4>Quantity: <span>${order.quantity} pcs</span></h4>
                                                                    <h4>Customer Name: ${order.customer.customername}</h4>
                                                                    <h5>Address:</h5>
                                                                    <p>${order.address}</p>
                                                                </div>
                                                                <div class="col-md-4">
                                                                    <button type="button" class="btn btn-theme" onclick="startDeliver(${order.id})"><i class="fa fa-check"> </i> Confirm</button>
                                                                    <button type="button" class="btn btn-theme02" onclick="editOrder(${order.id})"><i class="fa fa-pencil"></i> Edit</button>
                                                                    <button type="button" class="btn btn-theme04" onclick="cancelOrder(${order.id})"><i class="fa fa-trash-o"></i> Cancel</button>
                                                                </div>
                                                            </div>
                                                            <hr>
                                                        </li>
                                                    </c:if>
                                                </c:forEach>
                                            </ul>
                                        </div>
                                    </div>
                                </section>
                            </div>
                        </div>
                        <!-- /col-md-12-->
                    </div>
                    <!-- /row -->
                </section>
                <!-- /wrapper -->
            </section>
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
        </section>
        <script>
            function cancelOrder(id) {
                var xhttp = new XMLHttpRequest();
                xhttp.onreadystatechange = function () {
                    if (this.readyState == 4 && this.status == 200) {
                        console.log(this.responseText);
                        location.reload();
                    }

                };
                xhttp.open("POST", "http://localhost:8080/order/cancel/" + id, true);
                xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
                xhttp.send();

            }
            function startProcessing(id) {
                var xhttp = new XMLHttpRequest();
                xhttp.onreadystatechange = function () {
                    if (this.readyState == 4 && this.status == 200) {
                        console.log(this.responseText);
                        location.reload();
                    }

                };
                xhttp.open("POST", "http://localhost:8080/order/process/" + id, true);
                xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
                xhttp.send();

            }
            function startDeliver(id) {
                var xhttp = new XMLHttpRequest();
                xhttp.onreadystatechange = function () {
                    if (this.readyState == 4 && this.status == 200) {
                        console.log(this.responseText);
                        location.reload();
                    }

                };
                xhttp.open("POST", "http://localhost:8080/order/deliver/" + id, true);
                xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
                xhttp.send();

            }
            function startShipping(id) {
                var xhttp = new XMLHttpRequest();
                xhttp.onreadystatechange = function () {
                    if (this.readyState == 4 && this.status == 200) {
                        console.log(this.responseText);
                        location.reload();
                    }

                };
                xhttp.open("POST", "http://localhost:8080/order/shipping/" + id, true);
                xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
                xhttp.send();

            }
        </script>
    </body>
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
</html>