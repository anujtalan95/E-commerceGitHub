<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en"> 
    <head> 
        <meta charset="utf-8"> 
        <meta http-equiv="X-UA-Compatible" content="IE=edge"> 
        <meta name="viewport" content="width=device-width, initial-scale=1"> 
        <meta name="description" content=""> 
        <meta name="author" content=""> 
        <title>MegaMart</title>         
        <!-- Bootstrap core CSS -->         
        <link href="assets/font-awesome/css/font-awesome.min.css" rel="stylesheet"> 
        <link href="assets/bootstrap/css/bootstrap.css" rel="stylesheet">  
        <!-- Material Design core CSS -->         
        <link href="assets/mdl/material.min.css" rel="stylesheet"> 
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <!-- Slick carousel core CSS -->         
        <link rel="stylesheet" type="text/css" href="assets/slick/slick.css"> 
        <link rel="stylesheet" type="text/css" href="assets/slick/slick-theme.css"> 
        <!-- Custom styles for this  page-->         
        <link href="assets/style.css" rel="stylesheet"> 
    </head>     
    <body> 
        <!-- NAVBAR
================================================== -->         
        <!-- Always shows a header, even in smaller screens. -->         
        <div class="mdl-layout mdl-js-layout mdl-layout--fixed-header"> 
            <%
        if (session.getAttribute("client") == null ){
            %>
            <jsp:include page="includes/login-nav.jsp"></jsp:include>
        <%
        }else {
            %>
               <jsp:include page="includes/user-nav.jsp"></jsp:include>
            <% } %>
            <!-- carousel
            ==========================================================-->
            <main class="mdl-layout__content"> 
                <div class="page-content"> 
                    <!-- Your content goes here -->                     
                    <div class="slider single-item"> 
                        <div class="slide"> 
                            <h3>1</h3> 
                        </div>                         
                        <div class="slide"> 
                            <h3>2</h3> 
                        </div>                         
                        <div class="slide"> 
                            <h3>3</h3> 
                        </div>                         
                        <div class="slide"> 
                            <h3>4</h3> 
                        </div>                         
                        <div class="slide"> 
                            <h3>5</h3> 
                        </div>                         
                        <div class="slide"> 
                            <h3>6</h3> 
                        </div>                         
                    </div>                     

                    <!-- Products Container-->                     
                    <div class="container products"> 
                        <div id="day-deals"> 
                            <div class="row"> 
                                <div class="col-md-4"> 
                                    <h2>Deals of the Day</h2> 
                                </div>                                 
                            </div>                             
                            <div class="row product-carousel">
                    <div class="col-sm-6 col-xs-6 col-md-3"> 
                        <div class="thumbnail"> 
                            <img src="assets/images/product-img.png" alt=""> 
                            <div class="caption"> 
                                <h3>Thumbnail label</h3> 
                                <p><a href="#" class="btn btn-default" role="button">Button</a> </p> 
                            </div>                             
                        </div>                         
                    </div>
                    <div class="col-sm-6 col-xs-6 col-md-3"> 
                        <div class="thumbnail"> 
                            <img src="assets/images/product-img.png" alt=""> 
                            <div class="caption"> 
                                <h3>Thumbnail label</h3> 
                                <p><a href="#" class="btn btn-default" role="button">Button</a> </p> 
                            </div>                             
                        </div>                         
                    </div>
                    <div class="col-sm-6 col-xs-6 col-md-3"> 
                        <div class="thumbnail"> 
                            <img src="assets/images/product-img.png" alt=""> 
                            <div class="caption"> 
                                <h3>Thumbnail label</h3> 
                                <p><a href="#" class="btn btn-default" role="button">Button</a> </p> 
                            </div>                             
                        </div>                         
                    </div>
                    <div class="col-sm-6 col-xs-6 col-md-3"> 
                        <div class="thumbnail"> 
                            <img src="assets/images/product-img.png" alt=""> 
                            <div class="caption"> 
                                <h3>Thumbnail label</h3> 
                                <p><a href="#" class="btn btn-default" role="button">Button</a> </p> 
                            </div>                             
                        </div>                         
                    </div>                     
                </div>                                
                        </div>                         
                        <div id="best-deals"> 
                            <div class="row"> 
                                <div class="col-md-4"> 
                                    <h2>Best Deals on Phones</h2> 
                                </div>                                 
                            </div>                             
                            <div class="row product-carousel">
                    <div class="col-sm-6 col-xs-6 col-md-3"> 
                        <div class="thumbnail"> 
                            <img src="assets/images/product-img.png" alt=""> 
                            <div class="caption"> 
                                <h3>Thumbnail label</h3> 
                                <p><a href="#" class="btn btn-default" role="button">Button</a> </p> 
                            </div>                             
                        </div>                         
                    </div>
                    <div class="col-sm-6 col-xs-6 col-md-3"> 
                        <div class="thumbnail"> 
                            <img src="assets/images/product-img.png" alt=""> 
                            <div class="caption"> 
                                <h3>Thumbnail label</h3> 
                                <p><a href="#" class="btn btn-default" role="button">Button</a> </p> 
                            </div>                             
                        </div>                         
                    </div>
                    <div class="col-sm-6 col-xs-6 col-md-3"> 
                        <div class="thumbnail"> 
                            <img src="assets/images/product-img.png" alt=""> 
                            <div class="caption"> 
                                <h3>Thumbnail label</h3> 
                                <p><a href="#" class="btn btn-default" role="button">Button</a> </p> 
                            </div>                             
                        </div>                         
                    </div>
                    <div class="col-sm-6 col-xs-6 col-md-3"> 
                        <div class="thumbnail"> 
                            <img src="assets/images/product-img.png" alt=""> 
                            <div class="caption"> 
                                <h3>Thumbnail label</h3> 
                                <p><a href="#" class="btn btn-default" role="button">Button</a> </p> 
                            </div>                             
                        </div>                         
                    </div>                     
                </div>                                
                        </div>                         
                    </div>                     
                    <!--/Products Container-->                     
                    <!-- Companies Logo -->                     
                    <div class="container"> 
                        <div class="row"> 
                            <div class="col-md-4"> 
                                <h2>Featured Brands</h2> 
                            </div>                             
                        </div>                         
                        <div class="row" id="brands"> 
                            <ul class="list-inline row"> 
                                <li class="col-xs-4 col-sm-2"> 
                                    <img src="assets/images/logo1.png" class="img-responsive" /> 
                                </li>                                 
                                <li class="col-xs-4 col-sm-2"> 
                                    <img src="assets/images/logo2.png" class="img-responsive" /> 
                                </li>                                 
                                <li class="col-xs-4 col-sm-2"> 
                                    <img src="assets/images/logo3.png" class="img-responsive" /> 
                                </li>                                 
                                <li class="col-xs-4 col-sm-2"> 
                                    <img src="assets/images/logo4.png" class="img-responsive" /> 
                                </li>                                 
                                <li class="col-xs-4 col-sm-2"> 
                                    <img src="assets/images/logo5.png" class="img-responsive" /> 
                                </li>                                 
                                <li class="col-xs-4 col-sm-2"> 
                                    <img src="assets/images/logo6.png" class="img-responsive" /> 
                                </li>                                 
                            </ul>                             
                        </div>                         
                    </div>                     
                    <!-- Wrap the rest of the page in another container to center all the content. -->                     
                    <!-- App Promo Section -->                     
                    <section> 
                        <div class="container" id="app-section"> 
                            <h2>MegaMart App Coming Soon</h2> 
                            <div class="row" id="app-logo"> 
                                <div class="col-xs-12 col-md-3"> </div>                                 
                                <div class="col-xs-12 col-md-3"> 
                                    <a href="" id="googlelogo"> 
                                        <img src="assets/images/google_logo.png" class="img-responsive" /> 
                                    </a>                                     
                                </div>                                 
                                <div class="col-xs-12 col-md-3"> 
                                    <a href="" id="applelogo"> 
                                        <img src="assets/images/appstore.png" class="img-responsive" /> 
                                    </a>                                     
                                </div>                                 
                            </div>                             
                        </div>                         
                    </section>                     
                    <!-- FOOTER -->                     
                    <footer> 
                        <div class="container"> 
                            <div class="row" id="footer-row"> 
                                <div class="col-xs-12 col-sm-4 col-md-3"> 
                                    <h3>About Us</h3> 
                                    <ul class="list-unstyled"> 
                                        <li>About</li>                                         
                                        <li>News</li>                                         
                                        <li>Contact</li>                                         
                                    </ul>                                     
                                </div>                                 
                                <div class="col-xs-12 col-sm-4 col-md-3"> 
                                    <h3>Products</h3> 
                                    <ul class="list-unstyled"> 
                                        <li>Electronics</li>                                         
                                        <li>Clothing</li>                                         
                                        <li>Books</li>                                         
                                    </ul>                                     
                                </div>                                 
                                <div class="col-xs-12 col-sm-4 col-md-3"> 
                                    <h3>Support</h3> 
                                    <ul class="list-unstyled"> 
                                        <li>Terms&nbsp;and&nbsp;Conditions</li>                                         
                                        <li>Privacy&nbsp;Policy</li>                                         
                                        <li>Return&nbsp;Policy</li>                                         
                                    </ul>                                     
                                </div>                                 
                                <div class="col-xs-12 col-sm-4 col-md-3"> 
                                    <ul class="social list-inline"> 
                                        <li> 
                                            <a href="#" target="_blank"><i class="fa fa-twitter"></i></a> 
                                        </li>                                         
                                        <li> 
                                            <a href="#" target="_blank"><i class="fa fa-facebook"></i></a> 
                                        </li>                                         
                                        <li> 
                                            <a href="#" target="_blank"><i class="fa fa-google-plus"></i></a> 
                                        </li>                                         
                                    </ul>                                     
                                    <div class="form-container"> 
                                        <p>Sign up for the latest news, offers and styles</p> 
                                        <form> 
                                            <div class="form-group"> 
                                                <input type="text" class="form-control" id="formInput" placeholder="Enter your email address"> 
                                            </div>                                             
                                        </form>                                         
                                        <button type="button" class="btn btn-default" id="subscribe-Button">Subscribe Now</button>                                         
                                    </div>                                     
                                </div>                                 
                                <div class="clearfix"></div>                                 
                            </div>                             
                        </div>                         
                        <div class="bottom-bar"> 
                            <div class="container"> 
                                <small class="copyright">Copyright@2016. MegaMart </small> 
                            </div>                             
                        </div>                         
                    </footer>                     
                </div>                 
            </main>                       
        </div>         
        <!-- Bootstrap/JQuery/Material Design/slick core JavaScript
    =================================================================== -->         
        <!-- Placed at the end of the document so the pages load faster -->         
        <script src="assets/js/jquery-3.1.1.min.js"></script>         
        <script src="assets/js/jquery-migrate-1.4.1.min.js"></script>              
        <script src="assets/bootstrap/js/bootstrap.min.js"></script>         
        <script src="assets/js/bootstrap-hover-dropdown.min.js" type="text/javascript"></script>         
        <script src="assets/mdl/material.min.js"></script>         
        <script src="assets/slick/slick.min.js" type="text/javascript"></script>   
        <!-- custom javascript for this page -->      
        <script src="assets/script.js"></script>         
    </body>     
</html>
