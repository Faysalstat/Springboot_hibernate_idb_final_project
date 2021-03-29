<%-- 
    Document   : test
    Created on : Mar 15, 2020, 3:10:05 PM
    Author     : Faysal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="hd" uri="/tlds/myTags"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="/dash/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <!--external css-->
        <link href="/dash/lib/font-awesome/css/font-awesome.css" rel="stylesheet" />
        <link rel="stylesheet" type="text/css" href="/dash/lib/bootstrap-fileupload/bootstrap-fileupload.css" />
        <link rel="stylesheet" type="text/css" href="/dash/lib/bootstrap-datepicker/css/datepicker.css" />
        <link rel="stylesheet" type="text/css" href="/dash/lib/bootstrap-daterangepicker/daterangepicker.css" />
        <link rel="stylesheet" type="text/css" href="/dash/lib/bootstrap-timepicker/compiled/timepicker.css" />
        <link rel="stylesheet" type="text/css" href="/dash/lib/bootstrap-datetimepicker/datertimepicker.css" />
        <!-- Custom styles for this template -->
        <link href="css/style.css" rel="stylesheet">
        <link href="css/style-responsive.css" rel="stylesheet">
    <script>
      $(function () {

        $('#upimage').on('submit', function (e) {

          e.preventDefault();

          $.ajax({
            type: 'post',
            url: 'post.php',
            data: $('form').serialize(),
            success: function () {
              alert('form was submitted');
            }
          });

        });

      });
    </script>
    </head>
    <body>
        <h1>Hello from jsp</h1>

        <!--        <h1>$ {producthandler.iname}</h1>
                <form action="savefile" method="post" enctype="multipart/form-data">  
                    Select File: <input type="file" name="file"/>  
                    <input type="submit" value="Upload File"/>  
                </form>  -->

        <form method="POST" action="/hatkholaboot_hibernet_jsp/product/upload" enctype="multipart/form-data">
            <table>
                <tr>
                    <td><form:label path="file">Select a file to upload</form:label></td>
                <td><input type="file" name="image" /></td>
                </tr>
                <tr>
                    <td><input type="submit" value="Submit" /></td>
                </tr>
            </table>
        </form>

        <div style="width: 50%;margin: auto">
            <form id="addproduct" action="/hatkholaboot_hibernet_jsp/product" method="POST">
                <div class="form-group">
                    <label>Product ID:</label>
                    <input type="text" class="form-control" id="product_id" placeholder="Enter Product ID"
                           name="productId" >
                </div>
                <div class="form-group">
                    <label>Product Name:</label>
                    <input type="text" class="form-control" id="product_name" placeholder="Enter Product Name"
                           name="productName" >
                </div>
                <div class="form-group">
                    <label>Select Category:</label>
                    <select class="form-control" id="category" name="category" value="hi" >
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
                            <input type="number" class="form-control" value="5000" id="cost_price"
                                   placeholder="Enter Cost Price" name="costPrice" >
                        </div>
                        <div class="form-group">
                            <label>Old Price:</label>
                            <input type="number" class="form-control" id="old_price" placeholder="Enter Old Price"
                                   name="oldPrice" >
                        </div>
                        <div class="form-group">
                            <label>New Price:</label>
                            <input type="number" class="form-control" id="new_price" placeholder="Enter New Price"
                                   name="newPrice" >
                        </div>
                        <div class="form-group">
                            <label>Quantity:</label>
                            <input type="number" class="form-control" id="quantity" placeholder="Enter New Quantity"
                                   name="quantity" >
                        </div>
                    </div>
                    <div class="col-md-6">

                        <div class="form-group">
                            <label>Details:</label>
                            <textarea class="form-control" rows="12" id="comment" name="details" ></textarea>
                        </div>

                    </div>
                </div>
            </form>
            <!--<form id="upimage" action="/hatkholaboot_hibernet_jsp/product/upload" method="POST" enctype="multipart/form-data">-->
            <form id="upimage" >
                <div class="form-group">
                <div class="form-group last">
                    <label>Image Upload</label>
                    <div class="fileupload fileupload-new" data-provides="fileupload">
                        <div class="fileupload-new thumbnail" style="width: 200px; height: 150px;">
                            <img src="img/icon.png" alt="image" />
                        </div>
                        <div class="fileupload-preview fileupload-exists thumbnail" style="max-width: 200px; max-height: 150px; line-height: 20px;"></div>
                        <div>
                            <span class="btn btn-theme02 btn-file" >
                                <span class="fileupload-new"><i class="fa fa-paperclip"></i> Select image</span>
                                <input type="file" name="image" class="default" />
                            </span>
                            <button class="btn btn-theme02 " type="submit" form="upimage" onclick="">
                                <span class="fileupload-new"><i class="fa fa-upload"></i> Upload image</span>
                            </button>
                        </div>
                    </div>
                </div>
            </div>
            </form>
            
            <div class="form-group">
                <button type="submit" class="btn btn-primary btn-lg btn-block" form="addproduct" value="Submit">Submit</button>
            </div>

        </div>

    </body>
</html>
