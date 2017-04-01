<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en"> 
    <head> 
        <meta charset="utf-8"> 
        <meta http-equiv="X-UA-Compatible" content="IE=edge"> 
        <meta name="viewport" content="width=device-width, initial-scale=1"> 
        <meta name="description" content=""> 
        <meta name="author" content="Anuj Talan And Harsh Chaudhry"> 
        <title>4Shoppers</title>         
        <!-- Bootstrap core CSS -->         
        <link href="assets/font-awesome/css/font-awesome.min.css" rel="stylesheet"> 
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">  
        <link href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.css" rel="stylesheet">  
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
                            <a href="">
                                <img src="assets/images/banners/google-pixel-banner.jpg" class="img-responsive">
                            </a>                             
                        </div>                         
                        <div class="slide"> 
                            <a href="">
                                <img src="assets/images/banners/horizon-zero-banner.jpg" class="img-responsive">
                            </a>
                        </div>                         
                        <div class="slide"> 
                            <a href="">
                                <img src="assets/images/banners/moto-banner.jpg" class="img-responsive">
                            </a>
                        </div>                         
                        <div class="slide"> 
                            <a href="">
                                <img src="assets/images/banners/motog-banner.jpg" class="img-responsive">
                            </a>
                        </div>                         
                        <div class="slide"> 
                            <a href="">
                                <img src="assets/images/banners/ps4-banner.jpg" class="img-responsive">
                            </a>
                        </div>                         
                        <div class="slide"> 
                            <a href="">
                                <img src="assets/images/banners/google-pixel-banner.jpg" class="img-responsive">
                            </a>                             
                        </div>                         
                    </div>                      

                    <!-- Products Container-->                     
                    <div class="container products"> 
                        <div id="day-deals"> 
                            <div class="row"> 
                                <div class="col-md-4"> 
                                    <h2>Best Deals on SmartPhones</h2> 
                                </div>                                 
                            </div>                             
                            <div class="row product-carousel">
                    <div class="col-sm-6 col-xs-6 col-md-3"> 
                        <div class="thumbnail"> 
                            <a href="product_detail.jsp?pid=3"><img src="assets/images/products/mobiles/motog5/img-1.jpeg" alt=""></a> 
                            <div class="caption"> 
                                <h3>Moto G5 Plus (Lunar Grey, 32 GB) (4 GB RAM)</h3> 
                                <small class="text-muted">Motorola</small>
                                 <small class="product-cost"><i class="fa fa-inr" aria-hidden="true"></i>16,999</small>
                                <p><a href="product_detail.jsp?pid=3" class="btn btn-default" role="button">Info<i class="fa fa-arrow-right" aria-hidden="true"></i></a> </p> 
                            </div>                             
                        </div>                         
                    </div>
                    <div class="col-sm-6 col-xs-6 col-md-3"> 
                        <div class="thumbnail"> 
                            <a href="product_detail.jsp?pid=4"><img src="assets/images/products/mobiles/motom/img-1.jpeg" alt=""></a> 
                            <div class="caption"> 
                                <h3>Moto M (Gold, 64 GB) (4 GB RAM)</h3> 
                                <small class="text-muted">Motorola</small>
                                 <small class="product-cost"><i class="fa fa-inr" aria-hidden="true"></i>17,999</small>
                                <p><a href="product_detail.jsp?pid=4" class="btn btn-default" role="button">Info<i class="fa fa-arrow-right" aria-hidden="true"></i></a> </p> 
                            </div>                             
                        </div>                         
                    </div>
                    <div class="col-sm-6 col-xs-6 col-md-3"> 
                        <div class="thumbnail"> 
                            <a href="product_detail.jsp?pid=7"><img src="assets/images/products/mobiles/mi4i/img-1.jpeg" alt=""></a> 
                            <div class="caption"> 
                                <h3>Mi 4i (Blue, 16 GB) (2 GB RAM)</h3> 
                                <small class="text-muted">Redmi</small>
                                 <small class="product-cost"><i class="fa fa-inr" aria-hidden="true"></i>11,999</small>
                                <p><a href="product_detail.jsp?pid=7" class="btn btn-default" role="button">Info<i class="fa fa-arrow-right" aria-hidden="true"></i></a> </p> 
                            </div>                             
                        </div>                         
                    </div>
                    <div class="col-sm-6 col-xs-6 col-md-3"> 
                        <div class="thumbnail"> 
                            <a href="product_detail.jsp?pid=6"><img src="assets/images/products/mobiles/mi5/img-1.jpeg" alt=""></a> 
                            <div class="caption"> 
                                <h3>Mi 5 (White, 32 GB) (3 GB RAM)</h3>
                                <small class="text-muted">Redmi</small> 
                                 <small class="product-cost"><i class="fa fa-inr" aria-hidden="true"></i>22,999</small>
                                <p><a href="product_detail.jsp?pid=6" class="btn btn-default" role="button">Info<i class="fa fa-arrow-right" aria-hidden="true"></i></a> </p> 
                            </div>                             
                        </div>                         
                    </div>                     
                </div>                                
                        </div>                         
                        <div id="best-deals"> 
                            <div class="row"> 
                                <div class="col-md-4"> 
                                    <h2>Deals of the Day</h2> 
                                </div>                                 
                            </div>                             
                            <div class="row product-carousel">
                    <div class="col-sm-6 col-xs-6 col-md-3"> 
                        <div class="thumbnail"> 
                            <a href="product_detail.jsp?pid=15"><img src="assets/images/products/books/FantasticBeasts/img-1.jpeg" alt=""></a> 
                            <div class="caption"> 
                                <h3>Fantastic Beasts and Where to Find Them: The Original Screenplay</h3> 
                                <small class="text-muted">J.K. Rowling</small>
                                 <small class="product-cost"><i class="fa fa-inr" aria-hidden="true"></i>359</small>
                                <p><a href="product_detail.jsp?pid=15" class="btn btn-default" role="button">Info<i class="fa fa-arrow-right" aria-hidden="true"></i></a> </p> 
                            </div>                             
                        </div>                         
                    </div>
                    <div class="col-sm-6 col-xs-6 col-md-3"> 
                        <div class="thumbnail"> 
                            <a href="product_detail.jsp?pid=18"><img src="assets/images/products/video games/HorizonZero/img-1.jpeg" alt=""></a>
                            <div class="caption"> 
                                <h3>Horizon Zero Dawn</h3> 
                                <small class="text-muted">for PS4</small>
                                 <small class="product-cost"><i class="fa fa-inr" aria-hidden="true"></i>3,999</small>
                                <p><a href="product_detail.jsp?pid=18" class="btn btn-default" role="button">Info<i class="fa fa-arrow-right" aria-hidden="true"></i></a> </p> 
                            </div>                             
                        </div>                         
                    </div>
                    <div class="col-sm-6 col-xs-6 col-md-3"> 
                        <div class="thumbnail"> 
                            <a href="product_detail.jsp?pid=12"><img src="assets/images/products/books/thisisnotyourstory/img-1.jpeg" alt=""></a>
                            <div class="caption"> 
                                <h3>This is not Your Story</h3> 
                                <small class="text-muted">English, Savi Sharma</small>
                                 <small class="product-cost"><i class="fa fa-inr" aria-hidden="true"></i>168</small>
                                <p><a href="product_detail.jsp?pid=12" class="btn btn-default" role="button">Info<i class="fa fa-arrow-right" aria-hidden="true"></i></a> </p> 
                            </div>                             
                        </div>                         
                    </div>
                    <div class="col-sm-6 col-xs-6 col-md-3"> 
                        <div class="thumbnail"> 
                            <a href="product_detail.jsp?pid=23"><img src="assets/images/products/video games/PlayStation4Pro/img-1.jpeg" alt=""></a>
                            <div class="caption"> 
                                <h3>Sony PlayStation 4 (PS4) Pro 1 TB (Black)</h3> 
                                <small class="text-muted">Sony</small>
                                 <small class="product-cost"><i class="fa fa-inr" aria-hidden="true"></i>38,990</small>
                                <p><a href="product_detail.jsp?pid=23" class="btn btn-default" role="button">Info<i class="fa fa-arrow-right" aria-hidden="true"></i></a> </p> 
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
                            <h2>4Shoppers App Coming Soon</h2> 
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
                                <small class="copyright">Copyright@2016. 4Shoppers</small> 
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
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>  
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"
  integrity="sha256-VazP97ZCwtekAsvgPBSUwPFKdrwD3unUfSGVYrahUqU="
  crossorigin="anonymous"></script>       
        <script src="assets/js/bootstrap-hover-dropdown.min.js" type="text/javascript"></script>         
        <script src="assets/mdl/material.min.js"></script>         
        <script src="assets/slick/slick.min.js" type="text/javascript"></script>   
        <!-- custom javascript for this page -->      
        <script src="assets/script.js"></script> 
        <script type="text/javascript">
        /* fetch data from database in json format and displaying in autocomplete search box */
      $(document).ready(function(){
     	$.ajax({
     	    type: "GET",
     	    url: 'PopulateTable',
     	    dataType: "json",
     	    data: {
     	        type: $("#search").val()
     	    },
     	    success: function (data) {
     	        var source = $.map(data, function(c) {
     	            return { label: c.title, value: c.title };
     	        });
     	        $("#search").autocomplete({
     	            source: source,
     	            minLength: 1
     	        });
     	    }
     	});
      });
        </script>   
    </body>     
</html>
