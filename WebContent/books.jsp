<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Video Games | Buy Games and Console at Best Price in India from 4shoppers</title>
        <meta name="description" content="Buy Video games Online at Best Price in India - Get all new games and consoles online from best brands like Xbox one, Playstation, Horizon Zero game, Assassins Creed &amp; more.">
        <meta name="keywords" content="buy games, buy playstation online,but xbox one, pc games online buy, buy ps4 games,buy console">
        <!-- Bootstrap core CSS -->         
        <link href="assets/font-awesome/css/font-awesome.min.css" rel="stylesheet"> 
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.css" rel="stylesheet">  
        <!-- Material Design core CSS -->         
        <link href="assets/mdl/material.min.css" rel="stylesheet"> 
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <!-- Custom styles for this  page-->         
        <link href="assets/style.css" rel="stylesheet"> 
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
          <!-- ==========Main Container==================== -->  
          <main class="mdl-layout__content"> 
                <div class="page-content"> 
            <div class="container">
                <div>
                    <h1>Video Games &amp; Consoles</h1>
                </div>
                <div class="products">
                    <div class="row product-carousel">
                        <div class="col-sm-6 col-md-3 col-xs-6"> 
                            <div class="thumbnail"> 
                                <a href="product_detail.jsp?pid=10">
                                    <img src="assets/images/products/books/india2017/img-1.jpeg" alt="INDIA 2017 : Reference Annual ">
                                </a>                                 
                                <div class="caption"> 
                                    <h3>INDIA 2017 : Reference Annual </h3> 
                                    <small class="text-muted">New Media Wing</small>
                                    <br>
                                    <small class="product-cost"><i class="fa fa-inr" aria-hidden="true"></i>188</small>
                                    <p><a href="product_detail.jsp?pid=10" class="btn btn-default" role="button">Info<i class="fa fa-arrow-right" aria-hidden="true"></i></a> </p> 
                                </div>                                 
                            </div>                             
                        </div>
                        <div class="col-sm-6 col-md-3 col-xs-6"> 
                            <div class="thumbnail"> 
                                <a href="product_detail.jsp?pid=12">
                                    <img src="assets/images/products/books/thisisnotyourstory/img-1.jpeg" alt="This is not Your Story">
                                </a>                                 
                                <div class="caption"> 
                                    <h3>This is not Your Story</h3> 
                                    <small class="text-muted">Savi Sharma</small>
                                    <small class="product-cost"><i class="fa fa-inr" aria-hidden="true"></i>168</small>
                                    <p><a href="product_detail.jsp?pid=12" class="btn btn-default" role="button">Info<i class="fa fa-arrow-right" aria-hidden="true"></i></a> </p> 
                                </div>                                 
                            </div>                             
                        </div>
                        <div class="col-sm-6 col-md-3 col-xs-6"> 
                            <div class="thumbnail"> 
                                <a href="product_detail.jsp?pid=13">
                                    <img src="assets/images/products/books/theMegaYearbook2017/img-1.jpeg" alt="THE MEGA YEARBOOK 2017 - Current Affairs & General Knowledge for Competitive Exams - 2nd Edition">
                                </a>                                 
                                <div class="caption"> 
                                    <h3>THE MEGA YEARBOOK 2017 - Current Affairs & General Knowledge for Competitive Exams - 2nd Edition</h3> 
                                    <small class="text-muted">Disha Experts</small>
                                    <small class="product-cost"><i class="fa fa-inr" aria-hidden="true"></i>148</small>
                                    <p><a href="product_detail.jsp?pid=13" class="btn btn-default" role="button">Info<i class="fa fa-arrow-right" aria-hidden="true"></i></a> </p> 
                                </div>                                 
                            </div>                             
                        </div>
                        <div class="col-sm-6 col-md-3 col-xs-6"> 
                            <div class="thumbnail"> 
                                <a href="product_detail.jsp?pid=14">
                                    <img src="assets/images/products/books/AllRightsReserved/img-1.jpeg" alt="All Rights Reserved for You">
                                </a>                                 
                                <div class="caption"> 
                                    <h3>All Rights Reserved for You</h3> 
                                    <small class="text-muted">Sudeep Nagarkar</small>
                                    <small class="product-cost"><i class="fa fa-inr" aria-hidden="true"></i>126</small>
                                    <p><a href="product_detail.jsp?pid=14" class="btn btn-default" role="button">Info<i class="fa fa-arrow-right" aria-hidden="true"></i></a> </p> 
                                </div>                                 
                            </div>                             
                        </div>
                        <div class="clearfix clear-columns"></div>
                    </div>
                    <div class="row product-carousel">
                        <div class="col-sm-6 col-md-3 col-xs-6"> 
                            <div class="thumbnail"> 
                                <a href="product_detail.jsp?pid=15">
                                    <img src="assets/images/products/books/FantasticBeasts/img-1.jpeg" alt="Fantastic Beasts and Where to Find Them: The Original Screenplay ">
                                </a>                                 
                                <div class="caption"> 
                                    <h3>Fantastic Beasts and Where to Find Them: The Original Screenplay</h3> 
                                    <small class="text-muted">J.K. Rowling</small>
                                    <small class="product-cost"><i class="fa fa-inr" aria-hidden="true"></i>359</small>
                                    <p><a href="product_detail.jsp?pid=15" class="btn btn-default" role="button">Info<i class="fa fa-arrow-right" aria-hidden="true"></i></a> </p> 
                                </div>                                 
                            </div>                             
                        </div>
                        <div class="col-sm-6 col-md-3 col-xs-6"> 
                            <div class="thumbnail"> 
                                <a href="product_detail.jsp?pid=16">
                                    <img src="assets/images/products/books/Norse/img-1.jpeg" alt="Norse Mythology ">
                                </a>                                 
                                <div class="caption"> 
                                    <h3>Norse Mythology </h3> 
                                    <small class="text-muted">Neil Gaiman</small>
                                    <small class="product-cost"><i class="fa fa-inr" aria-hidden="true"></i>245</small>
                                    <p><a href="product_detail.jsp?pid=16" class="btn btn-default" role="button">Info<i class="fa fa-arrow-right" aria-hidden="true"></i></a> </p> 
                                </div>                                 
                            </div>                             
                        </div>
                        <div class="col-sm-6 col-md-3 col-xs-6"> 
                            <div class="thumbnail"> 
                                <a href="product_detail.jsp?pid=10">
                                    <img src="assets/images/products/books/india2017/img-1.jpeg" alt="INDIA 2017 : Reference Annual ">
                                </a>                                 
                                <div class="caption"> 
                                    <h3>INDIA 2017 : Reference Annual </h3> 
                                    <small class="text-muted">New Media Wing</small>
                                    <br>
                                    <small class="product-cost"><i class="fa fa-inr" aria-hidden="true"></i>188</small>
                                    <p><a href="product_detail.jsp?pid=10" class="btn btn-default" role="button">Info<i class="fa fa-arrow-right" aria-hidden="true"></i></a> </p> 
                                </div>                                 
                            </div>                             
                        </div>
                        <div class="col-sm-6 col-md-3 col-xs-6"> 
                            <div class="thumbnail"> 
                                <a href="product_detail.jsp?pid=12">
                                    <img src="assets/images/products/books/thisisnotyourstory/img-1.jpeg" alt="This is not Your Story">
                                </a>                                 
                                <div class="caption"> 
                                    <h3>This is not Your Story</h3> 
                                    <small class="text-muted">Savi Sharma</small>
                                    <small class="product-cost"><i class="fa fa-inr" aria-hidden="true"></i>168</small>
                                    <p><a href="product_detail.jsp?pid=12" class="btn btn-default" role="button">Info<i class="fa fa-arrow-right" aria-hidden="true"></i></a> </p> 
                                </div>                                 
                            </div>                             
                        </div>
                        <div class="clearfix clear-columns"></div>
                    </div>
                    <div class="row product-carousel">
                        <div class="row product-carousel">
                        <div class="col-sm-6 col-md-3 col-xs-6"> 
                            <div class="thumbnail"> 
                                <a href="product_detail.jsp?pid=10">
                                    <img src="assets/images/products/books/india2017/img-1.jpeg" alt="INDIA 2017 : Reference Annual ">
                                </a>                                 
                                <div class="caption"> 
                                    <h3>INDIA 2017 : Reference Annual </h3> 
                                    <small class="text-muted">New Media Wing</small>
                                    <br>
                                    <small class="product-cost"><i class="fa fa-inr" aria-hidden="true"></i>188</small>
                                    <p><a href="product_detail.jsp?pid=10" class="btn btn-default" role="button">Info<i class="fa fa-arrow-right" aria-hidden="true"></i></a> </p> 
                                </div>                                 
                            </div>                             
                        </div>
                        <div class="col-sm-6 col-md-3 col-xs-6"> 
                            <div class="thumbnail"> 
                                <a href="product_detail.jsp?pid=12">
                                    <img src="assets/images/products/books/thisisnotyourstory/img-1.jpeg" alt="This is not Your Story">
                                </a>                                 
                                <div class="caption"> 
                                    <h3>This is not Your Story</h3> 
                                    <small class="text-muted">Savi Sharma</small>
                                    <small class="product-cost"><i class="fa fa-inr" aria-hidden="true"></i>168</small>
                                    <p><a href="product_detail.jsp?pid=12" class="btn btn-default" role="button">Info<i class="fa fa-arrow-right" aria-hidden="true"></i></a> </p> 
                                </div>                                 
                            </div>                             
                        </div>
                        <div class="col-sm-6 col-md-3 col-xs-6"> 
                            <div class="thumbnail"> 
                                <a href="product_detail.jsp?pid=13">
                                    <img src="assets/images/products/books/theMegaYearbook2017/img-1.jpeg" alt="THE MEGA YEARBOOK 2017 - Current Affairs & General Knowledge for Competitive Exams - 2nd Edition">
                                </a>                                 
                                <div class="caption"> 
                                    <h3>THE MEGA YEARBOOK 2017 - Current Affairs & General Knowledge for Competitive Exams - 2nd Edition</h3> 
                                    <small class="text-muted">Disha Experts</small>
                                    <small class="product-cost"><i class="fa fa-inr" aria-hidden="true"></i>148</small>
                                    <p><a href="product_detail.jsp?pid=13" class="btn btn-default" role="button">Info<i class="fa fa-arrow-right" aria-hidden="true"></i></a> </p> 
                                </div>                                 
                            </div>                             
                        </div>
                        <div class="col-sm-6 col-md-3 col-xs-6"> 
                            <div class="thumbnail"> 
                                <a href="product_detail.jsp?pid=14">
                                    <img src="assets/images/products/books/AllRightsReserved/img-1.jpeg" alt="All Rights Reserved for You">
                                </a>                                 
                                <div class="caption"> 
                                    <h3>All Rights Reserved for You</h3> 
                                    <small class="text-muted">Sudeep Nagarkar</small>
                                    <small class="product-cost"><i class="fa fa-inr" aria-hidden="true"></i>126</small>
                                    <p><a href="product_detail.jsp?pid=14" class="btn btn-default" role="button">Info<i class="fa fa-arrow-right" aria-hidden="true"></i></a> </p> 
                                </div>                                 
                            </div>                             
                        </div>
                        <div class="clearfix clear-columns"></div>
                    </div>
                </div>
            </div>
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
