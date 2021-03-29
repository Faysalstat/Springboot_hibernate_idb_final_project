<%-- 
    Document   : all_product
    Created on : Mar 29, 2020, 4:31:45 PM
    Author     : Faysal
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="model.Customer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="hd" uri="/tlds/myTags"%>
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
        <link href="/dash/lib/advanced-datatable/css/demo_page.css" rel="stylesheet" />
        <link href="/dash/lib/advanced-datatable/css/demo_table.css" rel="stylesheet" />
        <link rel="stylesheet" href="/dash/lib/advanced-datatable/css/DT_bootstrap.css" />
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

            <!-- **********************************************************************************************************************************************************
                MAIN CONTENT
                *********************************************************************************************************************************************************** -->
            <!--main content start-->
            <section id="main-content">
                <section class="wrapper" >
                    <h3><i class="fa fa-angle-right"></i> Advanced Table Example</h3>
                    <div class="row mb">
                        <!-- page start-->
                        <div class="content-panel" style="padding-bottom: 45px;">
                            <div class="adv-table" style="padding: 20px">
                                <table id="dtBasicExample" class="table table-striped table-bordered table-sm" cellspacing="0" width="100%">
                                    <thead>
                                        <tr>
                                            <th class="th-sm">#Sn

                                            </th>
                                            <th class="th-sm">Product Name

                                            </th>
                                            <th class="th-sm">Cost Price

                                            </th>
                                            <th class="th-sm">Selling Price

                                            </th>
                                            <th class="th-sm">Quantity

                                            </th>
                                            <th class="th-sm">Vendor

                                            </th>
                                            <th class="th-sm">Action

                                            </th>
                                        </tr>
                                    </thead>




                                    <tbody>
                                        <c:forEach var="product" items="${productlist}"  varStatus="status" >
                                            <tr>
                                                <td>${status.index + 1}</td>
                                                <td>${product.productName}</td>
                                                <td>${product.costPrice}</td>
                                                <td>${product.newPrice}</td>
                                                <td>${product.quantity}</td>
                                                <td>Faysal Ahmad</td>
                                                <td>
                                                    <a href="<c:url value="viewproduct"/>"><button class="btn btn-success btn-xs" data-toggle="modal" data-target="#myModal"><i class="fa fa-info"></i></button></a>
                                                    <a href="editproduct/${product.id}"><button class="btn btn-primary btn-xs"><i class="fa fa-pencil"></i></button></a>
                                                    <a href="delete/${product.id}">
                                                      <button class="btn btn-danger btn-xs"><i class="fa fa-trash-o "></i></button> 
                                                    </a>
                                                </td>
                                            </tr>
                                        </c:forEach>

                                    </tbody>
                                    
                                </table>
                            </div>
                        </div>
                        <!-- page end-->
                    </div>
                    <!-- /row -->
                </section>
                <!-- /wrapper -->
            </section>
            <!-- /MAIN CONTENT -->
            <!--main content end-->


            <!--footer start-->
            <footer class="site-footer">
                <div class="text-center">
                    <p>
                        &copy; Copyrights <strong>Dashio</strong>. All Rights Reserved
                    </p>
                    <div class="credits">
                        <!--
                          You are NOT allowed to delete the credit link to TemplateMag with free version.
                          You can delete the credit link only if you bought the pro version.
                          Buy the pro version with working PHP/AJAX contact form: https://templatemag.com/dashio-bootstrap-admin-template/
                          Licensing information: https://templatemag.com/license/
                        -->
                        Created with Dashio template by <a href="https://templatemag.com/">TemplateMag</a>
                    </div>
                    <a href="advanced_table.html#" class="go-top">
                        <i class="fa fa-angle-up"></i>
                    </a>
                </div>
            </footer>
            <!--footer end-->
            
        </section>
        <!-- js placed at the end of the document so the pages load faster -->
        <script src="/dash/lib/jquery/jquery.min.js"></script>
        <script type="text/javascript" language="javascript" src="/dash/lib/advanced-datatable/js/jquery.js"></script>
        <script src="/dash/lib/bootstrap/js/bootstrap.min.js"></script>
        <script class="include" type="text/javascript" src="/dash/lib/jquery.dcjqaccordion.2.7.js"></script>
        <script src="/dash/lib/jquery.scrollTo.min.js"></script>
        <script src="/dash/lib/jquery.nicescroll.js" type="text/javascript"></script>
        <script type="text/javascript" language="javascript" src="/dash/lib/advanced-datatable/js/jquery.dataTables.js"></script>
        <script type="text/javascript" src="/dash/lib/advanced-datatable/js/DT_bootstrap.js"></script>
        <!--common script for all pages-->
        <script src="/dash/lib/common-scripts.js"></script>
        <!--script for this page-->
        <script type="text/javascript">
            $(document).ready(function () {
                $('#dtBasicExample').DataTable();
                $('.dataTables_length').addClass('bs-select');
            });
        </script>
    </body>
</html>
