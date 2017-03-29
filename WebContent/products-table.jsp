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
        <link href="assets/bootstrap/css/bootstrap.min.css" rel="stylesheet"> 
        <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet"> 
        <!-- FooTable -->         
        <link href="assets/css/footable/footable.core.css" rel="stylesheet"> 
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
                    <div class="ibox-content m-b-sm border-bottom"> 
                        <div class="row"> 
                            <div class="col-sm-4"> 
                                <div class="form-group"> 
                                    <label class="control-label" for="product_name">Product Name</label>                                     
                                    <input type="text" id="product_name" name="product_name" value="" placeholder="Product Name" class="form-control"> 
                                </div>                                 
                            </div>                             
                        </div>                         
                    </div>                     
                    <div class="row"> 
                        <div class="col-lg-12"> 
                            <div class="ibox"> 
                                <div class="ibox-content"> 
                                    <table class="footable table table-stripped toggle-arrow-tiny" data-page-size="15"> 
                                        <thead> 
                                            <tr> 
                                                <th data-toggle="true">Product Name</th> 
                                                <th data-hide="phone">Model</th> 
                                                <th data-hide="all">Description</th> 
                                                <th data-hide="phone">Price</th> 
                                                <th data-hide="phone,tablet">Quantity</th> 
                                                <th data-hide="phone">Status</th> 
                                                <th class="text-right" data-sort-ignore="true">Action</th> 
                                            </tr>                                             
                                        </thead>                                         
                                        <tbody> 
                                            <tr> 
                                                <td> 
                                       Example product 1</td> 
                                                <td> 
                                        Model 1</td> 
                                                <td> 
                                        It is a long established fact that a reader will be distracted by the readable
                                        content of a page when looking at its layout. The point of using Lorem Ipsum is
                                        that it has a more-or-less normal distribution of letters, as opposed to using
                                        'Content here, content here', making it look like readable English.</td> 
                                                <td> 
                                        $50.00</td> 
                                                <td> 
                                        1000</td> 
                                                <td> <span class="label label-primary">Enable</span> </td> 
                                                <td class="text-right"> 
                                                    <div class="btn-group"> 
                                                        <button class="btn-white btn btn-xs">View</button>                                                         
                                                        <button class="btn-white btn btn-xs">Edit</button>                                                         
                                                    </div>                                                     
                                                </td>                                                 
                                            </tr>                                             
                                            <tr> 
                                                <td> 
                                        Example product 2</td> 
                                                <td> 
                                        Model 2</td> 
                                                <td> 
                                        It is a long established fact that a reader will be distracted by the readable
                                        content of a page when looking at its layout. The point of using Lorem Ipsum is
                                        that it has a more-or-less normal distribution of letters, as opposed to using
                                        'Content here, content here', making it look like readable English.</td> 
                                                <td> 
                                        $40.00</td> 
                                                <td> 
                                        4300</td> 
                                                <td> <span class="label label-primary">Enable</span> </td> 
                                                <td class="text-right"> 
                                                    <div class="btn-group"> 
                                                        <button class="btn-white btn btn-xs">View</button>                                                         
                                                        <button class="btn-white btn btn-xs">Edit</button>                                                         
                                                    </div>                                                     
                                                </td>                                                 
                                            </tr>                                             
                                            <tr> 
                                                <td> 
                                        Example product 3</td> 
                                                <td> 
                                        Model 3</td> 
                                                <td> 
                                        It is a long established fact that a reader will be distracted by the readable
                                        content of a page when looking at its layout. The point of using Lorem Ipsum is
                                        that it has a more-or-less normal distribution of letters, as opposed to using
                                        'Content here, content here', making it look like readable English.</td> 
                                                <td> 
                                        $22.00</td> 
                                                <td> 
                                        300</td> 
                                                <td> <span class="label label-danger">Disabled</span> </td> 
                                                <td class="text-right"> 
                                                    <div class="btn-group"> 
                                                        <button class="btn-white btn btn-xs">View</button>                                                         
                                                        <button class="btn-white btn btn-xs">Edit</button>                                                         
                                                    </div>                                                     
                                                </td>                                                 
                                            </tr>                                             
                                            <tr> 
                                                <td> 
                                        Example product 4</td> 
                                                <td> 
                                        Model 4</td> 
                                                <td> 
                                        It is a long established fact that a reader will be distracted by the readable
                                        content of a page when looking at its layout. The point of using Lorem Ipsum is
                                        that it has a more-or-less normal distribution of letters, as opposed to using
                                        'Content here, content here', making it look like readable English.</td> 
                                                <td> 
                                        $67.00</td> 
                                                <td> 
                                        2300</td> 
                                                <td> <span class="label label-primary">Enable</span> </td> 
                                                <td class="text-right"> 
                                                    <div class="btn-group"> 
                                                        <button class="btn-white btn btn-xs">View</button>                                                         
                                                        <button class="btn-white btn btn-xs">Edit</button>                                                         
                                                    </div>                                                     
                                                </td>                                                 
                                            </tr>                                             
                                            <tr> 
                                                <td> 
                                        Example product 5</td> 
                                                <td> 
                                        Model 5</td> 
                                                <td> 
                                        It is a long established fact that a reader will be distracted by the readable
                                        content of a page when looking at its layout. The point of using Lorem Ipsum is
                                        that it has a more-or-less normal distribution of letters, as opposed to using
                                        'Content here, content here', making it look like readable English.</td> 
                                                <td> 
                                        $76.00</td> 
                                                <td> 
                                        800</td> 
                                                <td> <span class="label label-warning">Low stock</span> </td> 
                                                <td class="text-right"> 
                                                    <div class="btn-group"> 
                                                        <button class="btn-white btn btn-xs">View</button>                                                         
                                                        <button class="btn-white btn btn-xs">Edit</button>                                                         
                                                    </div>                                                     
                                                </td>                                                 
                                            </tr>                                             
                                            <tr> 
                                                <td> 
                                        Example product 6</td> 
                                                <td> 
                                        Model 6</td> 
                                                <td> 
                                        It is a long established fact that a reader will be distracted by the readable
                                        content of a page when looking at its layout. The point of using Lorem Ipsum is
                                        that it has a more-or-less normal distribution of letters, as opposed to using
                                        'Content here, content here', making it look like readable English.</td> 
                                                <td> 
                                        $60.00</td> 
                                                <td> 
                                        6000</td> 
                                                <td> <span class="label label-danger">Disabled</span> </td> 
                                                <td class="text-right"> 
                                                    <div class="btn-group"> 
                                                        <button class="btn-white btn btn-xs">View</button>                                                         
                                                        <button class="btn-white btn btn-xs">Edit</button>                                                         
                                                    </div>                                                     
                                                </td>                                                 
                                            </tr>                                             
                                            <tr> 
                                                <td> 
                                        Example product 7</td> 
                                                <td> 
                                        Model 7</td> 
                                                <td> 
                                        It is a long established fact that a reader will be distracted by the readable
                                        content of a page when looking at its layout. The point of using Lorem Ipsum is
                                        that it has a more-or-less normal distribution of letters, as opposed to using
                                        'Content here, content here', making it look like readable English.</td> 
                                                <td> 
                                        $32.00</td> 
                                                <td> 
                                        700</td> 
                                                <td> <span class="label label-danger">Disabled</span> </td> 
                                                <td class="text-right"> 
                                                    <div class="btn-group"> 
                                                        <button class="btn-white btn btn-xs">View</button>                                                         
                                                        <button class="btn-white btn btn-xs">Edit</button>                                                         
                                                    </div>                                                     
                                                </td>                                                 
                                            </tr>                                             
                                            <tr> 
                                                <td> 
                                        Example product 8</td> 
                                                <td> 
                                        Model 8</td> 
                                                <td> 
                                        It is a long established fact that a reader will be distracted by the readable
                                        content of a page when looking at its layout. The point of using Lorem Ipsum is
                                        that it has a more-or-less normal distribution of letters, as opposed to using
                                        'Content here, content here', making it look like readable English.</td> 
                                                <td> 
                                        $86.00</td> 
                                                <td> 
                                        5180</td> 
                                                <td> <span class="label label-primary">Enable</span> </td> 
                                                <td class="text-right"> 
                                                    <div class="btn-group"> 
                                                        <button class="btn-white btn btn-xs">View</button>                                                         
                                                        <button class="btn-white btn btn-xs">Edit</button>                                                         
                                                    </div>                                                     
                                                </td>                                                 
                                            </tr>                                             
                                            <tr> 
                                                <td> 
                                        Example product 9</td> 
                                                <td> 
                                        Model 9</td> 
                                                <td> 
                                        It is a long established fact that a reader will be distracted by the readable
                                        content of a page when looking at its layout. The point of using Lorem Ipsum is
                                        that it has a more-or-less normal distribution of letters, as opposed to using
                                        'Content here, content here', making it look like readable English.</td> 
                                                <td> 
                                        $97.00</td> 
                                                <td> 
                                        450</td> 
                                                <td> <span class="label label-primary">Enable</span> </td> 
                                                <td class="text-right"> 
                                                    <div class="btn-group"> 
                                                        <button class="btn-white btn btn-xs">View</button>                                                         
                                                        <button class="btn-white btn btn-xs">Edit</button>                                                         
                                                    </div>                                                     
                                                </td>                                                 
                                            </tr>                                             
                                            <tr> 
                                                <td> 
                                        Example product 10</td> 
                                                <td> 
                                        Model 10</td> 
                                                <td> 
                                        It is a long established fact that a reader will be distracted by the readable
                                        content of a page when looking at its layout. The point of using Lorem Ipsum is
                                        that it has a more-or-less normal distribution of letters, as opposed to using
                                        'Content here, content here', making it look like readable English.</td> 
                                                <td> 
                                        $43.00</td> 
                                                <td> 
                                        7600</td> 
                                                <td> <span class="label label-primary">Enable</span> </td> 
                                                <td class="text-right"> 
                                                    <div class="btn-group"> 
                                                        <button class="btn-white btn btn-xs">View</button>                                                         
                                                        <button class="btn-white btn btn-xs">Edit</button>                                                         
                                                    </div>                                                     
                                                </td>                                                 
                                            </tr>                                             
                                            <tr> 
                                                <td> 
                                        Example product 1</td> 
                                                <td> 
                                        Model 1</td> 
                                                <td> 
                                        It is a long established fact that a reader will be distracted by the readable
                                        content of a page when looking at its layout. The point of using Lorem Ipsum is
                                        that it has a more-or-less normal distribution of letters, as opposed to using
                                        'Content here, content here', making it look like readable English.</td> 
                                                <td> 
                                        $50.00</td> 
                                                <td> 
                                        1000</td> 
                                                <td> <span class="label label-primary">Enable</span> </td> 
                                                <td class="text-right"> 
                                                    <div class="btn-group"> 
                                                        <button class="btn-white btn btn-xs">View</button>                                                         
                                                        <button class="btn-white btn btn-xs">Edit</button>                                                         
                                                    </div>                                                     
                                                </td>                                                 
                                            </tr>                                             
                                            <tr> 
                                                <td> 
                                        Example product 2</td> 
                                                <td> 
                                        Model 2</td> 
                                                <td> 
                                        It is a long established fact that a reader will be distracted by the readable
                                        content of a page when looking at its layout. The point of using Lorem Ipsum is
                                        that it has a more-or-less normal distribution of letters, as opposed to using
                                        'Content here, content here', making it look like readable English.</td> 
                                                <td> 
                                        $40.00</td> 
                                                <td> 
                                        4300</td> 
                                                <td> <span class="label label-primary">Enable</span> </td> 
                                                <td class="text-right"> 
                                                    <div class="btn-group"> 
                                                        <button class="btn-white btn btn-xs">View</button>                                                         
                                                        <button class="btn-white btn btn-xs">Edit</button>                                                         
                                                    </div>                                                     
                                                </td>                                                 
                                            </tr>                                             
                                            <tr> 
                                                <td> 
                                        Example product 3</td> 
                                                <td> 
                                        Model 3</td> 
                                                <td> 
                                        It is a long established fact that a reader will be distracted by the readable
                                        content of a page when looking at its layout. The point of using Lorem Ipsum is
                                        that it has a more-or-less normal distribution of letters, as opposed to using
                                        'Content here, content here', making it look like readable English.</td> 
                                                <td> 
                                        $22.00</td> 
                                                <td> 
                                        300</td> 
                                                <td> <span class="label label-warning">Low stock</span> </td> 
                                                <td class="text-right"> 
                                                    <div class="btn-group"> 
                                                        <button class="btn-white btn btn-xs">View</button>                                                         
                                                        <button class="btn-white btn btn-xs">Edit</button>                                                         
                                                    </div>                                                     
                                                </td>                                                 
                                            </tr>                                             
                                            <tr> 
                                                <td> 
                                        Example product 4</td> 
                                                <td> 
                                        Model 4</td> 
                                                <td> 
                                        It is a long established fact that a reader will be distracted by the readable
                                        content of a page when looking at its layout. The point of using Lorem Ipsum is
                                        that it has a more-or-less normal distribution of letters, as opposed to using
                                        'Content here, content here', making it look like readable English.</td> 
                                                <td> 
                                        $67.00</td> 
                                                <td> 
                                        2300</td> 
                                                <td> <span class="label label-primary">Enable</span> </td> 
                                                <td class="text-right"> 
                                                    <div class="btn-group"> 
                                                        <button class="btn-white btn btn-xs">View</button>                                                         
                                                        <button class="btn-white btn btn-xs">Edit</button>                                                         
                                                    </div>                                                     
                                                </td>                                                 
                                            </tr>                                             
                                            <tr> 
                                                <td> 
                                        Example product 5</td> 
                                                <td> 
                                        Model 5</td> 
                                                <td> 
                                        It is a long established fact that a reader will be distracted by the readable
                                        content of a page when looking at its layout. The point of using Lorem Ipsum is
                                        that it has a more-or-less normal distribution of letters, as opposed to using
                                        'Content here, content here', making it look like readable English.</td> 
                                                <td> 
                                        $76.00</td> 
                                                <td> 
                                        800</td> 
                                                <td> <span class="label label-primary">Enable</span> </td> 
                                                <td class="text-right"> 
                                                    <div class="btn-group"> 
                                                        <button class="btn-white btn btn-xs">View</button>                                                         
                                                        <button class="btn-white btn btn-xs">Edit</button>                                                         
                                                    </div>                                                     
                                                </td>                                                 
                                            </tr>                                             
                                            <tr> 
                                                <td> 
                                        Example product 6</td> 
                                                <td> 
                                        Model 6</td> 
                                                <td> 
                                        It is a long established fact that a reader will be distracted by the readable
                                        content of a page when looking at its layout. The point of using Lorem Ipsum is
                                        that it has a more-or-less normal distribution of letters, as opposed to using
                                        'Content here, content here', making it look like readable English.</td> 
                                                <td> 
                                        $60.00</td> 
                                                <td> 
                                        6000</td> 
                                                <td> <span class="label label-primary">Enable</span> </td> 
                                                <td class="text-right"> 
                                                    <div class="btn-group"> 
                                                        <button class="btn-white btn btn-xs">View</button>                                                         
                                                        <button class="btn-white btn btn-xs">Edit</button>                                                         
                                                    </div>                                                     
                                                </td>                                                 
                                            </tr>                                             
                                            <tr> 
                                                <td> 
                                        Example product 7</td> 
                                                <td> 
                                        Model 7</td> 
                                                <td> 
                                        It is a long established fact that a reader will be distracted by the readable
                                        content of a page when looking at its layout. The point of using Lorem Ipsum is
                                        that it has a more-or-less normal distribution of letters, as opposed to using
                                        'Content here, content here', making it look like readable English.</td> 
                                                <td> 
                                        $32.00</td> 
                                                <td> 
                                        700</td> 
                                                <td> <span class="label label-primary">Enable</span> </td> 
                                                <td class="text-right"> 
                                                    <div class="btn-group"> 
                                                        <button class="btn-white btn btn-xs">View</button>                                                         
                                                        <button class="btn-white btn btn-xs">Edit</button>                                                         
                                                    </div>                                                     
                                                </td>                                                 
                                            </tr>                                             
                                            <tr> 
                                                <td> 
                                        Example product 8</td> 
                                                <td> 
                                        Model 8</td> 
                                                <td> 
                                        It is a long established fact that a reader will be distracted by the readable
                                        content of a page when looking at its layout. The point of using Lorem Ipsum is
                                        that it has a more-or-less normal distribution of letters, as opposed to using
                                        'Content here, content here', making it look like readable English.</td> 
                                                <td> 
                                        $86.00</td> 
                                                <td> 
                                        5180</td> 
                                                <td> <span class="label label-primary">Enable</span> </td> 
                                                <td class="text-right"> 
                                                    <div class="btn-group"> 
                                                        <button class="btn-white btn btn-xs">View</button>                                                         
                                                        <button class="btn-white btn btn-xs">Edit</button>                                                         
                                                    </div>                                                     
                                                </td>                                                 
                                            </tr>                                             
                                            <tr> 
                                                <td> 
                                        Example product 9</td> 
                                                <td> 
                                        Model 9</td> 
                                                <td> 
                                        It is a long established fact that a reader will be distracted by the readable
                                        content of a page when looking at its layout. The point of using Lorem Ipsum is
                                        that it has a more-or-less normal distribution of letters, as opposed to using
                                        'Content here, content here', making it look like readable English.</td> 
                                                <td> 
                                        $97.00</td> 
                                                <td> 
                                        450</td> 
                                                <td> <span class="label label-primary">Enable</span> </td> 
                                                <td class="text-right"> 
                                                    <div class="btn-group"> 
                                                        <button class="btn-white btn btn-xs">View</button>                                                         
                                                        <button class="btn-white btn btn-xs">Edit</button>                                                         
                                                    </div>                                                     
                                                </td>                                                 
                                            </tr>                                             
                                            <tr> 
                                                <td> 
                                        Example product 10</td> 
                                                <td> 
                                        Model 10</td> 
                                                <td> 
                                        It is a long established fact that a reader will be distracted by the readable
                                        content of a page when looking at its layout. The point of using Lorem Ipsum is
                                        that it has a more-or-less normal distribution of letters, as opposed to using
                                        'Content here, content here', making it look like readable English.</td> 
                                                <td> 
                                        $43.00</td> 
                                                <td> 
                                        7600</td> 
                                                <td> <span class="label label-primary">Enable</span> </td> 
                                                <td class="text-right"> 
                                                    <div class="btn-group"> 
                                                        <button class="btn-white btn btn-xs">View</button>                                                         
                                                        <button class="btn-white btn btn-xs">Edit</button>                                                         
                                                    </div>                                                     
                                                </td>                                                 
                                            </tr>                                             
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
        <script src="assets/bootstrap/js/bootstrap.min.js"></script>              
        <!-- Custom and plugin javascript -->         
        <script src="assets/script.js"></script>         
        <script src="assets/js/pace.min.js"></script>         
        <!-- FooTable -->         
        <script src="assets/css/footable/footable.all.min.js"></script>         
        <!-- Page-Level Scripts -->         
        <script>
        $(document).ready(function() {

            $('.footable').footable();

        });

    </script>         
    </body>     
</html>
<% } else {
	response.sendRedirect("Adminlogin.html");
	} %>
