<%-- 
    Document   : home
    Created on : Mar 29, 2020, 12:53:40 AM
    Author     : Faysal
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="hd" uri="/tlds/myTags"%>
<%@page import="model.Customer"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="Dashboard">
        <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
        <title>Hatkhola-Dashboard</title>
        <!-- Bootstrap core CSS -->
        <link href="/dash/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <!--external css-->
        <link href="/dash/lib/font-awesome/css/font-awesome.css" rel="stylesheet" />
        <link rel="stylesheet" type="text/css" href="/dash/css/zabuto_calendar.css">
        <link rel="stylesheet" type="text/css" href="/dash/lib/gritter/css/jquery.gritter.css" />
        <!-- Custom styles for this template -->
        <link href="/dash/css/style.css" rel="stylesheet">
        <link href="/dash/css/style-responsive.css" rel="stylesheet">
        <script src="/dash/lib/chart-master/Chart.js"></script>

    </head>

    <body>
        <%
            Customer admin = (Customer) session.getAttribute("admin");

            if (admin == null || !admin.getUserrole().equals("ADMIN")) {
                response.sendRedirect("login");
            }
        %>
        <section id="container">
            <!-- **********************************************************************************************************************************************************
                TOP BAR CONTENT & NOTIFICATIONS
                *********************************************************************************************************************************************************** -->
            <!--header start-->
            <hd:customheader/>
            <hd:customaside/>
            <!--sidebar end-->
            <!--main content start-->


            <!-- **************************************** -->
            <section id="main-content">
                <section class="wrapper">
                    <div class="row">
                        <div class="col-lg-9 main-chart">
                            <!--CUSTOM CHART START -->
                            <div class="border-head">
                                <h3>Monthly Sales</h3>
                            </div>


                            <div class="custom-bar-chart">
                                <ul class="y-axis">
                                    <li><span>100.00</span></li>
                                    <li><span>80.00</span></li>
                                    <li><span>60.00</span></li>
                                    <li><span>40.00</span></li>
                                    <li><span>20.00</span></li>
                                    <li><span>0.00</span></li>
                                </ul>

                                <!-- value inside div should be changed -->
                                <div class="bar">
                                    <div class="title">JAN</div>
                                    <div class="value tooltips" data-original-title="${jan/10}" data-toggle="tooltip" data-placement="top">${jan}%</div>
                                </div>
                                <div class="bar ">
                                    <div class="title">FEB</div>
                                    <div class="value tooltips" data-original-title="${feb/10}" data-toggle="tooltip" data-placement="top">${feb}%</div>
                                </div>
                                <div class="bar ">
                                    <div class="title">MAR</div>
                                    <div class="value tooltips" data-original-title="${mar/10}" data-toggle="tooltip" data-placement="top">${mar}%</div>
                                </div>
                                <div class="bar ">
                                    <div class="title">APR</div>
                                    <div class="value tooltips" data-original-title="${apr/10}" data-toggle="tooltip" data-placement="top">${apr}%</div>
                                </div>
                                <div class="bar">
                                    <div class="title">MAY</div>
                                    <div class="value tooltips" data-original-title="${may/10}" data-toggle="tooltip" data-placement="top">${may}%</div>
                                </div>
                                <div class="bar ">
                                    <div class="title">JUN</div>
                                    <div class="value tooltips" data-original-title="${jun/10}" data-toggle="tooltip" data-placement="top">${jun}%</div>
                                </div>
                                <div class="bar">
                                    <div class="title">JUL</div>
                                    <div class="value tooltips" data-original-title="${jul/10}" data-toggle="tooltip" data-placement="top">${jul}%</div>
                                </div>
                                <div class="bar">
                                    <div class="title">AUG</div>
                                    <div class="value tooltips" data-original-title="${aug/10}" data-toggle="tooltip" data-placement="top">${aug}%</div>
                                </div>
                                <div class="bar">
                                    <div class="title">SEP</div>
                                    <div class="value tooltips" data-original-title="${sep/10}" data-toggle="tooltip" data-placement="top">${sep}%</div>
                                </div>
                                <div class="bar">
                                    <div class="title">OCT</div>
                                    <div class="value tooltips" data-original-title="${oct/10}" data-toggle="tooltip" data-placement="top">${oct}%</div>
                                </div>
                                <div class="bar">
                                    <div class="title">NOV</div>
                                    <div class="value tooltips" data-original-title="${nov/10}" data-toggle="tooltip" data-placement="top">${nov}%</div>
                                </div>
                                <div class="bar">
                                    <div class="title">DEC</div>
                                    <div class="value tooltips" data-original-title="${dec/10}" data-toggle="tooltip" data-placement="top">${dec}%</div>
                                </div>
                            </div>
                            <!--custom chart end-->
                            <div class="row mt">
                                <!-- SERVER STATUS PANELS -->
                                <!-- /col-md-4 -->
                                <div class="col-md-12 col-sm-12 mb">
                                    <!-- REVENUE PANEL -->
                                    <div class="green-panel pn">
                                        <div class="green-header">
                                            <h5>REVENUE</h5>
                                        </div>
                                        <div class="chart mt">
                                            <div class="sparkline" data-type="line" data-resize="true" data-height="75" data-width="90%" data-line-width="1" data-line-color="#fff" data-spot-color="#fff" data-fill-color="" data-highlight-line-color="#fff" data-spot-radius="4" data-data="[${jan},${feb},${mar},${apr},${may},${jun},${jul},${aug},${sep},${oct},${nov},${dec}]"></div>
                                        </div>
                                        <p class="mt"><b>$ ${total}</b><br/>Yearly Income</p>
                                    </div>
                                </div>

                                <!-- /col-md-4 -->
                            </div>
                            <!-- /row -->
                            <div class="row">
                                <!-- WEATHER PANEL -->

                                <!-- /col-md-4-->
                                <div class="col-md-4 mb">
                                    <div class="weather pn">
                                        <i class="fa fa-cloud fa-4x"></i>
                                        <h2>11º C</h2>
                                        <h4>BUDAPEST</h4>
                                    </div>
                                </div>
                                <!-- DIRECT MESSAGE PANEL -->
                                <div class="col-md-8 mb">
                                    <div class="message-p pn">
                                        <div class="message-header">
                                            <h5>DIRECT MESSAGE</h5>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-3 centered hidden-sm hidden-xs">
                                                <img src="/dash/img/ui-danro.jpg" class="img-circle" width="65">
                                            </div>
                                            <div class="col-md-9">
                                                <p>
                                                <name>Dan Rogers</name>
                                                sent you a message.
                                                </p>
                                                <p class="small">3 hours ago</p>
                                                <p class="message">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.</p>
                                                <form class="form-inline" role="form">
                                                    <div class="form-group">
                                                        <input type="text" class="form-control" id="exampleInputText" placeholder="Reply Dan">
                                                    </div>
                                                    <button type="submit" class="btn btn-default">Send</button>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- /Message Panel-->
                                </div>
                                <!-- /col-md-8  -->
                            </div>



                            <div class="row">
                                <h1 style="margin-left: 15px;">Top Sales of the Month</h1>
                                <hr style="width: 95%;margin-left: 15px; border:2px solid" />

                                <c:forEach var="product" items="${productlist}"  varStatus="status" >
                                    <c:choose>
                                        <c:when test="${status.index < 6}">
                                            <div class="col-lg-4 col-md-4 col-sm-4 mb">
                                                <div class="product-panel-2 pn">
                                                    <div class="badge badge-hot bg-info">HOT</div>
                                                    <img src="/img/products/${product.image}" style="height:137px;width:224px;" alt="">
                                                    <h5 class="mt">${product.productName}</h5>
                                                    <h6>TOTAL SALES: ${product.newPrice*product.quantitysold}</h6>
                                                    <button class="btn btn-small btn-info">FULL REPORT</button>
                                                </div>
                                            </div>
                                        </c:when>
                                    </c:choose>
                                </c:forEach>
                            </div>
                            <!-- /col-lg-9 END SECTION MIDDLE -->
                            <!-- **********************************************************************************************************************************************************
                                RIGHT SIDEBAR CONTENT
                                *********************************************************************************************************************************************************** -->
                            <div class="col-lg-3 ds">
                                <!--COMPLETED ACTIONS DONUTS CHART-->
                                <div class="donut-main">
                                    <h4>COMPLETED ACTIONS & PROGRESS</h4>
                                    <canvas id="newchart" height="130" width="130"></canvas>
                                    <script>
                                        var doughnutData = [{
                                                value: 70,
                                                color: "#4ECDC4"
                                            },
                                            {
                                                value: 30,
                                                color: "#fdfdfd"
                                            }
                                        ];
                                        var myDoughnut = new Chart(document.getElementById("newchart").getContext("2d")).Doughnut(doughnutData);
                                    </script>
                                </div>
                                <!--NEW EARNING STATS -->
                                <div class="panel terques-chart">
                                    <div class="panel-body">
                                        <div class="chart">
                                            <div class="centered">
                                                <span>TODAY EARNINGS</span>
                                                <strong>$ 890,00 | 15%</strong>
                                            </div>
                                            <br>
                                            <div class="sparkline" data-type="line" data-resize="true" data-height="75" data-width="90%" data-line-width="1" data-line-color="#fff" data-spot-color="#fff" data-fill-color="" data-highlight-line-color="#fff" data-spot-radius="4" data-data="[200,135,667,333,526,996,564,123,890,564,455]"></div>
                                        </div>
                                    </div>
                                </div>
                                <!--new earning end-->
                                <!-- RECENT ACTIVITIES SECTION -->
                                <h4 class="centered mt">RECENT ACTIVITY</h4>
                                <!-- First Activity -->
                                <div class="desc">
                                    <div class="thumb">
                                        <span class="badge bg-theme"><i class="fa fa-clock-o"></i></span>
                                    </div>
                                    <div class="details">
                                        <p>
                                        <muted>Just Now</muted>
                                        <br/>
                                        <a href="#">Paul Rudd</a> purchased an item.<br/>
                                        </p>
                                    </div>
                                </div>
                                <!-- Second Activity -->
                                <div class="desc">
                                    <div class="thumb">
                                        <span class="badge bg-theme"><i class="fa fa-clock-o"></i></span>
                                    </div>
                                    <div class="details">
                                        <p>
                                        <muted>2 Minutes Ago</muted>
                                        <br/>
                                        <a href="#">James Brown</a> subscribed to your newsletter.<br/>
                                        </p>
                                    </div>
                                </div>
                                <!-- Third Activity -->
                                <div class="desc">
                                    <div class="thumb">
                                        <span class="badge bg-theme"><i class="fa fa-clock-o"></i></span>
                                    </div>
                                    <div class="details">
                                        <p>
                                        <muted>3 Hours Ago</muted>
                                        <br/>
                                        <a href="#">Diana Kennedy</a> purchased a year subscription.<br/>
                                        </p>
                                    </div>
                                </div>
                                <!-- Fourth Activity -->
                                <div class="desc">
                                    <div class="thumb">
                                        <span class="badge bg-theme"><i class="fa fa-clock-o"></i></span>
                                    </div>
                                    <div class="details">
                                        <p>
                                        <muted>7 Hours Ago</muted>
                                        <br/>
                                        <a href="#">Brando Page</a> purchased a year subscription.<br/>
                                        </p>
                                    </div>
                                </div>
                                <!-- USERS ONLINE SECTION -->
                                <h4 class="centered mt">TEAM MEMBERS ONLINE</h4>
                                <!-- First Member -->
                                <div class="desc">
                                    <div class="thumb">
                                        <img class="img-circle" src="/dash/img/ui-divya.jpg" width="35px" height="35px" align="">
                                    </div>
                                    <div class="details">
                                        <p>
                                            <a href="#">DIVYA MANIAN</a><br/>
                                        <muted>Available</muted>
                                        </p>
                                    </div>
                                </div>
                                <!-- Second Member -->
                                <div class="desc">
                                    <div class="thumb">
                                        <img class="img-circle" src="/dash/img/ui-sherman.jpg" width="35px" height="35px" align="">
                                    </div>
                                    <div class="details">
                                        <p>
                                            <a href="#">DJ SHERMAN</a><br/>
                                        <muted>I am Busy</muted>
                                        </p>
                                    </div>
                                </div>
                                <!-- Third Member -->
                                <div class="desc">
                                    <div class="thumb">
                                        <img class="img-circle" src="/dash/img/ui-danro.jpg" width="35px" height="35px" align="">
                                    </div>
                                    <div class="details">
                                        <p>
                                            <a href="#">DAN ROGERS</a><br/>
                                        <muted>Available</muted>
                                        </p>
                                    </div>
                                </div>
                                <!-- Fourth Member -->
                                <div class="desc">
                                    <div class="thumb">
                                        <img class="img-circle" src="/dash/img/ui-zac.jpg" width="35px" height="35px" align="">
                                    </div>
                                    <div class="details">
                                        <p>
                                            <a href="#">Zac Sniders</a><br/>
                                        <muted>Available</muted>
                                        </p>
                                    </div>
                                </div>
                                <!-- Fifth Member -->
                                <div class="desc">
                                    <div class="thumb">
                                        <img class="img-circle" src="/dash/img/ui-zac.jpg" width="35px" height="35px" align="">
                                    </div>
                                    <div class="details">
                                        <p>
                                            <a href="#">Faysal Ahmad</a><br/>
                                        <muted>Available</muted>
                                        </p>
                                    </div>
                                </div>

                                <!-- CALENDAR-->
                                <div id="calendar" class="mb" style="margin-top: 20px;">
                                    <div class="panel green-panel ">
                                        <div class="panel-body">
                                            <div id="date-popover" class="popover top" style="cursor: pointer; disadding: block; margin-left: 33%; margin-top: -50px; width: 175px;">
                                                <div class="arrow"></div>
                                                <h3 class="popover-title" style="disadding: none;"></h3>
                                                <div id="date-popover-content" class="popover-content"></div>
                                            </div>
                                            <div id="my-calendar"></div>
                                        </div>
                                    </div>
                                </div>
                                <!-- / calendar -->
                            </div>
                            <!-- /col-lg-3 -->
                        </div>
                        <!-- /row -->
                </section>
            </section>



            <!-- **************************************** -->


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
