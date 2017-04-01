<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%
        if (session.getAttribute("admin") != null ){
            %>
<!DOCTYPE html> 
<html> 
    <head> 
        <meta charset="utf-8"> 
        <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        <title>4Shoppers | Products</title>         
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet"> 
        <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet"> 
        <!-- FooTable -->         
        <link href="assets/css/footable/footable.bootstrap.min.css" rel="stylesheet"> 
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
                        <h2>E-commerce product list</h2> 
                        <ol class="breadcrumb"> 
                            <li> 
                                <a href="admin.html">Home</a> 
                            </li>                             
                            <li> 
                                <a>E-commerce</a> 
                            </li>                             
                            <li class="active"> 
                                <strong>Product list</strong> 
                            </li>                             
                        </ol>                         
                    </div>                     
                    <div class="col-lg-2"> 
</div>                     
                </div>                 
                <div class="wrapper wrapper-content animated fadeInRight ecommerce">                      
                    <div class="row"> 
                        <div class="col-lg-12"> 
                            <div class="ibox"> 
                                <div class="ibox-content"> 
                                    <table class="footable table table-stripped toggle-arrow-tiny" data-paging="true" data-paging-size="10" data-sorting="true" data-filtering="true" data-show-toggle="false" data-toggle-column="first"> 
                                        <thead> 
                                            <tr> 
                                                <th data-toggle="true">Product Name</th> 
                                                <th data-breakpoints="all">Description</th> 
                                                <th data-breakpoints="xs">Category</th> 
                                                <th data-breakpoints="xs">Price</th> 
                                                <th data-breakpoints="xs sm">Quantity</th> 
                                                
                                            </tr>                                             
                                        </thead>                                         
                                        <tbody id="productTable"> 
                                                                                         
                                        </tbody>                                         
                                        <tfoot> 
                                            <tr> 
                                                <td colspan="6"> 
                                                    <ul class="pagination pull-right"></ul>                                                     
                                                </td>                                                 
                                            </tr>                                             
                                        </tfoot>                                         
                                    </table>                                     
                                </div>                                 
                            </div>                             
                        </div>                         
                    </div>                     
                </div>                 
                <div class="footer"> 
                    <div class="pull-right"> 
                        10GB of 
                        <strong>250GB</strong> Free.
                    </div>                     
                    <div> 
                        <strong>Copyright</strong>4Shoppers &copy; 2016-2017
                    </div>                     
                </div>                 
            </div>             
        </div>         
        <!-- Mainly scripts -->         
        <script src="assets/js/jquery-3.1.1.min.js"></script>         
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>              
        <!-- Custom and plugin javascript -->         
        <script src="assets/script.js"></script>         
        <script src="assets/js/pace.min.js"></script>         
        <!-- FooTable -->         
        <script src="assets/css/footable/footable.min.js"></script>         
        <!-- Page-Level Scripts -->         
        <script>
        
        $(document).ready(function() {

            $('.footable').footable();
        });      
        
        $(document).ready(function() {
        	$.get('PopulateTable',function(responseJson) {
         	   if(responseJson!=null){
          		 var trHTML = '';
   	               $.each(responseJson, function(key,value) { 
   	            	   trHTML += 
   	                       '<tr><td>' + value.title + 
   	                       '</td><td>' + value.descrip + 
   	                       '</td><td>' + value.catg + 
   	                       '</td><td>' + value.price +
   	                       '</td><td>' + value.stock +
   	                       '</td></tr>';  
   	               });
   	               $('#productTable').append(trHTML);
                  }
              });
         });
    </script>         
    </body>     
</html>
<% } else {
	response.sendRedirect("Adminlogin.html");
	} %>
