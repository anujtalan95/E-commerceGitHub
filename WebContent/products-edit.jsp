<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%
        if (session.getAttribute("admin") == null ){	
        	response.sendRedirect("Adminlogin.html");
        }
            %>
<!DOCTYPE html> 
<html> 
    <head> 
        <meta charset="utf-8"> 
        <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        <title>4Shoppers | Products</title>         
        <link href="assets/bootstrap/css/bootstrap.min.css" rel="stylesheet"> 
        <link href="assets/mdl/material.min.css" rel="stylesheet">
        <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet"> 
        <link href="assets/css/summernote/summernote.css" rel="stylesheet"> 
        <link href="assets/css/summernote/summernote-bs3.css" rel="stylesheet"> 
        <link href="css/plugins/datapicker/datepicker3.css" rel="stylesheet"> 
        <link href="assets/css/animate.css" rel="stylesheet"> 
        <link href="assets/admin-style.css" rel="stylesheet"> 
    </head>     
    <body> 
        <div id="wrapper"> 
            <nav class="navbar-default navbar-static-side" role="navigation"> 
                <div class="sidebar-collapse"> 
                    <ul class="nav metismenu" id="side-menu"> 
                        <li class="nav-header"> 
                            <div class="dropdown profile-element"> 
                                <span> <img alt="image" class="img-circle" src="img/profile_small.jpg" /> </span> 
                                <a data-toggle="dropdown" class="dropdown-toggle" href="#"> <span class="clear"> <span class="block m-t-xs"> <strong class="font-bold">Anuj Talan</strong> </span> <span class="text-muted text-xs block">Front End Developer <b class="caret"></b></span> </span> </a> 
                                <ul class="dropdown-menu animated fadeInRight m-t-xs"> 
                                    <li> 
                                        <a href="#">Profile</a> 
                                    </li>                                     
                                    <li> 
                                        <a href="#">Contacts</a> 
                                    </li>                                     
                                    <li> 
                                        <a href="#">Mailbox</a> 
                                    </li>                                     
                                    <li class="divider"></li>                                     
                                    <li> 
                                        <a href="AdminLogout">Logout</a> 
                                    </li>                                     
                                </ul>                                 
                            </div>                             
                            <div class="logo-element"> 
                                4S
</div>                             
                        </li>                         
                        <li class="active"> 
                            <a href="admin.jsp"><i class="fa fa-th-large"></i> <span class="nav-label">Dashboards</span></a> 
                        </li>                         
                        <li class=""> 
                            <a href="products-table.jsp"><i class="fa fa-diamond"></i> <span class="nav-label">Products list</span></a> 
                        </li>                         
                        <li class=""> 
                            <a href="orders-table.jsp"><i class="fa fa-bar-chart-o"></i> <span class="nav-label">Orders</span></a>
                        </li>                         
                        <li class=""> 
                            <a href="products-edit.jsp"><i class="fa fa-table"></i> <span class="nav-label">Product edit</span></a>
                        </li>                         
                    </ul>                     
                </div>                 
            </nav>             
            <div id="page-wrapper" class="gray-bg"> 
                <div class="row border-bottom"> 
                    <nav class="navbar navbar-static-top white-bg" role="navigation" style="margin-bottom: 0"> 
                        <div class="navbar-header"> 
                            <a class="navbar-minimalize minimalize-styl-2 btn btn-primary " href="#"><i class="fa fa-bars"></i> </a> 
                        </div>                         
                        <ul class="nav navbar-top-links navbar-right"> 
                            <li> 
                                <span class="m-r-sm text-muted welcome-message">Welcome to 4Shoppers</span> 
                            </li>                             
                            <li> 
                                <a href="AdminLogout"> <i class="fa fa-sign-out"></i> Log out</a> 
                            </li>                             
                            <li> 
</li>                             
                        </ul>                         
                    </nav>                     
                </div>                 
                <div class="row wrapper border-bottom white-bg page-heading"> 
                    <div class="col-lg-10"> 
                        <h2>Product edit</h2> 
                        <ol class="breadcrumb"> 
                            <li> 
                                <a href="admin.html">Home</a> 
                            </li>                             
                            <li> 
                                <a>E-commerce</a> 
                            </li>                             
                            <li class="active"> 
                                <strong>Product edit</strong> 
                            </li>                             
                        </ol>                         
                    </div>                     
                </div>                 
                <div class="wrapper wrapper-content animated fadeInRight ecommerce"> 
                    <div class="row"> 
                        <div class="col-lg-12">
                            <div class="tabs-container"> 
                                <div class="add-new-product"> 
                                    <h3>
            Add New Product</h3>
                                </div>                                 
                                <div class="panel-body"> 
                                    <fieldset class="form-horizontal"> 
                                        <div class="form-group"> 
                                            <label class="col-sm-2 control-label">Name:</label>                                             
                                            <div class="col-sm-10"> 
                                                <input type="text" class="form-control" placeholder="Product name" id="product-name" required> 
                                            </div>                                             
                                        </div>
                                        <div class="form-group"> 
                                            <label class="col-sm-2 control-label">Brand:</label>                                             
                                            <div class="col-sm-10"> 
                                                <input type="text" class="form-control" placeholder="Brand name" id="brand-name" required> 
                                            </div>                                             
                                        </div>                                         
                                        <div class="form-group"> 
                                            <label class="col-sm-2 control-label">Description:</label>                                             
                                            <div class="col-sm-10"> 
                                                <textarea class="summernote" id="product-desc"> 
                                                    
                                                </textarea>                                                 
                                            </div>                                             
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-2 control-label">Category:</label>
                                            <div class="btn-group col-sm-10" data-toggle="buttons">
                                                <button type="button" id="mob-catg" class="btn btn-primary" autocomplete="off" value="mobiles">
                                                    Mobiles
</button>
                                                <button type="button" id="book-catg" class="btn btn-primary" autocomplete="off" value="books">
                                                    Books
</button>
                                                <button type="button" id="cloth-catg" class="btn btn-primary" autocomplete="off" value="Clothing">
                                                    Clothings
</button>
                                                <button type="button" id="comp-catg" class="btn btn-primary" autocomplete="off" value="Computers">
                                                    Computer & Accessories
</button>
                                                <button type="button" id="game-catg" class="btn btn-primary" autocomplete="off" value="miscellaneous">
                                                    Video Games
</button>
                                            </div>
                                        </div>                                         
                                        <div class="form-group"> 
                                            <label class="col-sm-2 control-label">Meta Tag Title:</label>                                             
                                            <div class="col-sm-10"> 
                                                <input type="text" class="form-control" placeholder="..." id="meta-title" required> 
                                            </div>                                             
                                        </div>                                         
                                        <div class="form-group"> 
                                            <label class="col-sm-2 control-label">Meta Tag Description:</label>                                             
                                            <div class="col-sm-10"> 
                                                <input type="text" class="form-control" placeholder="Meta Description" id="meta-desc" required> 
                                            </div>                                             
                                        </div>                                         
                                        <div class="form-group"> 
                                            <label class="col-sm-2 control-label">Meta Tag Keywords:</label>                                             
                                            <div class="col-sm-10"> 
                                                <input type="text" class="form-control" placeholder="Meta keywords" id="meta-key" required> 
                                            </div>                                             
                                        </div>                                         
                                    </fieldset>                                     
                                </div>                                 
                            </div>                             
                        </div>
                        <div class="col-lg-12 mobile-catg animated fadeInRight">
                            <div class="tabs-container"> 
                                <div class="add-new-product"> 
                                    <h3>Mobiles Category</h3>
                                </div>                                 
                                <div class="panel-body"> 
                                    <fieldset class="form-horizontal"> 
                                        <div class="form-group"> 
                                            <label class="col-sm-2 control-label">ROM:</label>                                             
                                            <div class="col-sm-10"> 
                                                <input type="text" class="form-control" placeholder="Mobile ROM" id="rom" required> 
                                            </div>                                             
                                        </div>
                                        <div class="form-group"> 
                                            <label class="col-sm-2 control-label">Color:</label>                                             
                                            <div class="col-sm-10"> 
                                                <input type="text" class="form-control" placeholder="Product color" id="color" required> 
                                            </div>                                             
                                        </div>                                         
                                        <div class="form-group"> 
                                            <label class="col-sm-2 control-label">Specification:</label>                                             
                                            <div class="col-sm-10"> 
                                                <textarea class="summernote" id="mob-specs"> 
                                                    
                                                </textarea>                                                 
                                            </div>                                             
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-2 control-label">Price:</label>
                                            <div class="col-sm-10"> 
                                                <input type="text" class="form-control" placeholder="$500" id="mob-price" required> 
                                            </div>
                                        </div>                                                                                  
                                        <div class="form-group"> 
                                            <label class="col-sm-2 control-label">Image:</label>                                             
                                            <div class="col-sm-10"> 
                                                <input type="text" class="form-control" placeholder="Image URL" id="mob-img-url" required> 
                                            </div>                                             
                                        </div>
                                        <div class="form-group"> 
                                            <label class="col-sm-2 control-label">Stock:</label>                                             
                                            <div class="col-sm-10"> 
                                                <input type="number" class="form-control" min="1" placeholder="Stock Quantity" id="mob-stock" required> 
                                            </div>                                             
                                        </div>
                                        <div class="form-group pull-right"> 
                                            <div class="col-sm-10"> 
                                                 <button id="mobiles-info-submit" class="mdl-button mdl-js-button mdl-button--raised" type="button">Submit Button</button>
                                            </div>                                             
                                        </div>                                         
                                    </fieldset>                                     
                                </div>                                 
                            </div>                             
                        </div>
                        <div class="col-lg-12 books-catg animated fadeInRight">
                            <div class="tabs-container"> 
                                <div class="add-new-product"> 
                                    <h3>Books Category</h3>
                                </div>                                 
                                <div class="panel-body"> 
                                    <fieldset class="form-horizontal"> 
                                                                                
                                            <div class="form-group"> 
                                            <label class="col-sm-2 control-label">Specification:</label>                                             
                                            <div class="col-sm-10"> 
                                                <textarea class="summernote" id="book-specs"> 
                                                    
                                                </textarea>                                                 
                                            </div>                                             
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-2 control-label">Price:</label>
                                            <div class="col-sm-10"> 
                                                <input type="number" class="form-control" placeholder="$500" id="book-price" required> 
                                            </div>
                                        </div>                                                                                  
                                        <div class="form-group"> 
                                            <label class="col-sm-2 control-label">Image:</label>                                             
                                            <div class="col-sm-10"> 
                                                <input type="text" class="form-control" placeholder="Image URL" id="book-img-url" required> 
                                            </div>                                             
                                        </div>
                                        <div class="form-group"> 
                                            <label class="col-sm-2 control-label">Stock:</label>                                             
                                            <div class="col-sm-10"> 
                                                <input type="number" class="form-control" min="1" placeholder="Stock Quantity" id="book-stock" required> 
                                            </div>                                             
                                        </div>                                         
                                        
                                        <div class="form-group pull-right"> 
                                            <div class="col-sm-10"> 
                                                 <button id="books-info-submit" class="mdl-button mdl-js-button mdl-button--raised" type="button">Submit Button</button>
                                            </div>                                             
                                        </div>
                                    </fieldset>                                     
                                </div>                                 
                            </div>                             
                        </div> 
                        <div class="col-lg-12 clothing-catg animated fadeInRight">
                            <div class="tabs-container"> 
                                <div class="add-new-product"> 
                                    <h3>Clothing Category</h3>
                                </div>                                 
                                <div class="panel-body"> 
                                    <fieldset class="form-horizontal"> 
                                                                                
                                            <div class="form-group"> 
                                            <label class="col-sm-2 control-label">Specification:</label>                                             
                                            <div class="col-sm-10"> 
                                                <textarea class="summernote" id="cloth-specs"> 
                                                    
                                                </textarea>                                                 
                                            </div>                                             
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-2 control-label">Price:</label>
                                            <div class="col-sm-10"> 
                                                <input type="text" class="form-control" placeholder="$500" id="cloth-price" required> 
                                            </div>
                                        </div>                                                                                  
                                        <div class="form-group"> 
                                            <label class="col-sm-2 control-label">Image:</label>                                             
                                            <div class="col-sm-10"> 
                                                <input type="text" class="form-control" placeholder="Image URL" id="cloth-img-url" required> 
                                            </div>                                             
                                        </div>
                                        <div class="form-group"> 
                                            <label class="col-sm-2 control-label">Stock:</label>                                             
                                            <div class="col-sm-10"> 
                                                <input type="number" class="form-control" min="0" placeholder="Stock Quantity" id="cloth-stock" required> 
                                            </div>                                             
                                        </div>                                         
                                        
                                        <div class="form-group pull-right"> 
                                            <div class="col-sm-10"> 
                                                 <button id="cloths-info-submit" class="mdl-button mdl-js-button mdl-button--raised" type="button">Submit Button</button>
                                            </div>                                             
                                        </div>
                                    </fieldset>                                     
                                </div>                                 
                            </div>                             
                        </div>
                        <div class="col-lg-12 games-catg animated fadeInRight">
                            <div class="tabs-container"> 
                                <div class="add-new-product"> 
                                    <h3>Video Games & Accessories Category</h3>
                                </div>                                 
                                <div class="panel-body"> 
                                    <fieldset class="form-horizontal"> 
                                                                                
                                            <div class="form-group"> 
                                            <label class="col-sm-2 control-label">Specification:</label>                                             
                                            <div class="col-sm-10"> 
                                                <textarea class="summernote" id="game-specs"> 
                                                    
                                                </textarea>                                                 
                                            </div>                                             
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-2 control-label">Price:</label>
                                            <div class="col-sm-10"> 
                                                <input type="text" class="form-control" placeholder="$500" id="game-price" required> 
                                            </div>
                                        </div>                                                                                  
                                        <div class="form-group"> 
                                            <label class="col-sm-2 control-label">Image:</label>                                             
                                            <div class="col-sm-10"> 
                                                <input type="text" class="form-control" placeholder="Image URL" id="game-img-url" required> 
                                            </div>                                             
                                        </div>
                                        <div class="form-group"> 
                                            <label class="col-sm-2 control-label">Stock:</label>                                             
                                            <div class="col-sm-10"> 
                                                <input type="number" class="form-control" min="0" placeholder="Stock Quantity" id="game-stock" required> 
                                            </div>                                             
                                        </div>                                         
                                        
                                        <div class="form-group pull-right"> 
                                            <div class="col-sm-10"> 
                                                 <button id="games-info-submit" class="mdl-button mdl-js-button mdl-button--raised" type="button">Submit Button</button>
                                            </div>                                             
                                        </div>
                                    </fieldset>                                     
                                </div>                                 
                            </div>                             
                        </div>                        
                    </div>                     
                </div>  
                <div id="product-toast" class="mdl-js-snackbar mdl-snackbar">
  <div class="mdl-snackbar__text"></div>
  <button class="mdl-snackbar__action" type="button"></button>
</div>               
                <div class="footer">                     
                    <div> 
                        <strong>Copyright</strong>4Shoppers &copy; 2014-2017
                    </div>                     
                </div>                 
            </div>             
        </div>         
        <!-- Mainly scripts -->         
        <script src="assets/js/jquery-3.1.1.min.js"></script>         
        <script src="assets/bootstrap/js/bootstrap.min.js"></script>  
        <script src="assets/mdl/material.min.js"></script>                
        <!-- Custom and plugin javascript -->         
        <script src="assets/script.js"></script>         
        <script src="assets/js/pace.min.js"></script>          
        <!-- SUMMERNOTE -->         
        <script src="assets/css/summernote/summernote.min.js"></script>         
        <!-- Data picker -->         
        <script src="js/plugins/datapicker/bootstrap-datepicker.js"></script>
                
        <script>
    $(document).ready(function(){

        $('.summernote').summernote();

        $('.input-group.date').datepicker({
            todayBtn: "linked",
            keyboardNavigation: false,
            forceParse: false,
            calendarWeeks: true,
            autoclose: true
        });
        

    });
</script>       
    </body>     
</html>
