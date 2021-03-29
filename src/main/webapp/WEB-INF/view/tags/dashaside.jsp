<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<aside>
    <div id="sidebar" class="nav-collapse ">
        <!-- sidebar menu start-->
        <ul class="sidebar-menu" id="nav-accordion">
            <p class="centered"><a href="profile.html"><img src="/dash/img/ui-sam.jpg" class="img-circle" width="80"></a></p>
            <h5 class="centered">Faysal Ahmad</h5>
            <li class="mt">
                <a class="active" href="index">
                    <i class="fa fa-dashboard"></i>
                    <span>Dashboard</span>
                </a>
            </li>

            <!-- Ecomerce management pages starts -->
            <li class="sub-menu">
                <a href="javascript:;">
                    <i class="fa fa-desktop"></i>
                    <span>Product</span>
                </a>
                <ul class="sub">
                    <li><a  href="allproduct">All Product</a></li>
                    <li><a href="addproduct">Add Products</a></li>
                    <li><a href="#">Product Report</a></li>
                </ul>

            </li>

            <li class="sub-menu">
                <a href="orders">
                    <i class="fa fa-th"></i>
                    <span>Order Management</span>
                </a>
            </li>

            <li class="sub-menu">
                <a href="javascript:;">
                    <i class="fa fa-tasks"></i>
                    <span>Vendor Management</span>
                </a>
                <ul class="sub">
                    <li><a href="#">Add Vendor</a></li>
                    <li><a href="#">All Vendor</a></li>
                    <li><a href="#">Admin Profile</a></li>
                    <li><a href="#">Edit Profile</a></li>
                </ul>
            </li>

            <li>
                <a href="inbox.html">
                    <i class="fa fa-envelope"></i>
                    <span>Mail </span>
                    <span class="label label-theme pull-right mail-info">2</span>
                </a>
            </li>
            <li>
                <a href="google_maps.html">
                    <i class="fa fa-map-marker"></i>
                    <span>Google Maps </span>
                </a>
            </li>
        </ul>
        <!-- sidebar menu end-->
    </div>
</aside>
