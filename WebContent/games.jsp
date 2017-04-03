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
                                <a href="product_detail.jsp?pid=18">
                                    <img src="assets/images/products/video games/HorizonZero/img-1.jpeg" alt="Horizon Zero Dawn">
                                </a>                                 
                                <div class="caption"> 
                                    <h3>Horizon Zero Dawn</h3> 
                                    <small class="text-muted">For PS4</small>
                                    <br>
                                    <small class="product-cost"><i class="fa fa-inr" aria-hidden="true"></i>3,999</small>
                                    <p><a href="product_detail.jsp?pid=18" class="btn btn-default" role="button">Info<i class="fa fa-arrow-right" aria-hidden="true"></i></a> </p> 
                                </div>                                 
                            </div>                             
                        </div>
                        <div class="col-sm-6 col-md-3 col-xs-6"> 
                            <div class="thumbnail"> 
                                <a href="product_detail.jsp?pid=19">
                                    <img src="assets/images/products/video games/AssassinCreed/img-1.jpeg" alt="Assassins Creed IV: Black Flag">
                                </a>                                 
                                <div class="caption"> 
                                    <h3>Assassins Creed IV: Black Flag</h3> 
                                    <small class="text-muted">For PC</small>
                                    <small class="product-cost"><i class="fa fa-inr" aria-hidden="true"></i>665</small>
                                    <p><a href="product_detail.jsp?pid=19" class="btn btn-default" role="button">Info<i class="fa fa-arrow-right" aria-hidden="true"></i></a> </p> 
                                </div>                                 
                            </div>                             
                        </div>
                        <div class="col-sm-6 col-md-3 col-xs-6"> 
                            <div class="thumbnail"> 
                                <a href="product_detail.jsp?pid=20">
                                    <img src="assets/images/products/video games/Justcause3/img-1.jpeg" alt="Just Cause 3">
                                </a>                                 
                                <div class="caption"> 
                                    <h3>Just Cause 3</h3> 
                                    <small class="text-muted">For PC</small>
                                    <small class="product-cost"><i class="fa fa-inr" aria-hidden="true"></i>665</small>
                                    <p><a href="product_detail.jsp?pid=20" class="btn btn-default" role="button">Info<i class="fa fa-arrow-right" aria-hidden="true"></i></a> </p> 
                                </div>                                 
                            </div>                             
                        </div>
                        <div class="col-sm-6 col-md-3 col-xs-6"> 
                            <div class="thumbnail"> 
                                <a href="product_detail.jsp?pid=21">
                                    <img src="assets/images/products/video games/Hitman/img-1.jpeg" alt="HITMAN: The Complete First Season">
                                </a>                                 
                                <div class="caption"> 
                                    <h3>HITMAN: The Complete First Season</h3> 
                                    <small class="text-muted">For Xbox One</small>
                                    <small class="product-cost"><i class="fa fa-inr" aria-hidden="true"></i>3,099</small>
                                    <p><a href="product_detail.jsp?pid=21" class="btn btn-default" role="button">Info<i class="fa fa-arrow-right" aria-hidden="true"></i></a> </p> 
                                </div>                                 
                            </div>                             
                        </div>
                        <div class="clearfix clear-columns"></div>
                    </div>
                    <div class="row product-carousel">
                        <div class="col-sm-6 col-md-3 col-xs-6"> 
                            <div class="thumbnail"> 
                                <a href="product_detail.jsp?pid=22">
                                    <img src="assets/images/products/video games/FinalFantasy/img-1.jpeg" alt="Final Fantasy XV ">
                                </a>                                 
                                <div class="caption"> 
                                    <h3>Final Fantasy XV </h3> 
                                    <small class="text-muted">For PS4</small>
                                    <small class="product-cost"><i class="fa fa-inr" aria-hidden="true"></i>2,499</small>
                                    <p><a href="product_detail.jsp?pid=22" class="btn btn-default" role="button">Info<i class="fa fa-arrow-right" aria-hidden="true"></i></a> </p> 
                                </div>                                 
                            </div>                             
                        </div>
                        <div class="col-sm-6 col-md-3 col-xs-6"> 
                            <div class="thumbnail"> 
                                <a href="product_detail.jsp?pid=23">
                                    <img src="assets/images/products/video games/PlayStation4Pro/img-1.jpeg" alt="Sony PlayStation 4 (PS4) Pro 1 TB (Black)">
                                </a>                                 
                                <div class="caption"> 
                                    <h3>Sony PlayStation 4 (PS4) Pro 1 TB (Black)</h3> 
                                    <small class="text-muted">Sony</small>
                                    <small class="product-cost"><i class="fa fa-inr" aria-hidden="true"></i>38,990</small>
                                    <p><a href="product_detail.jsp?pid=23" class="btn btn-default" role="button">Info<i class="fa fa-arrow-right" aria-hidden="true"></i></a> </p> 
                                </div>                                 
                            </div>                             
                        </div>
                        <div class="col-sm-6 col-md-3 col-xs-6"> 
                            <div class="thumbnail"> 
                                <a href="product_detail.jsp?pid=24">
                                    <img src="assets/images/products/video games/Xbox1withDivision/img-1.jpeg" alt="Microsoft Xbox One 1 TB with Tom Clancys The Division  (Black)">
                                </a>                                 
                                <div class="caption"> 
                                    <h3>Microsoft Xbox One 1 TB with Tom Clancys The Division  (Black)</h3> 
                                    <small class="text-muted">Microsoft</small>
                                    <small class="product-cost"><i class="fa fa-inr" aria-hidden="true"></i>29,990</small>
                                    <p><a href="product_detail.jsp?pid=24" class="btn btn-default" role="button">Info<i class="fa fa-arrow-right" aria-hidden="true"></i></a> </p> 
                                </div>                                 
                            </div>                             
                        </div>
                        <div class="col-sm-6 col-md-3 col-xs-6"> 
                            <div class="thumbnail"> 
                                <a href="product_detail.jsp?pid=22">
                                    <img src="assets/images/products/video games/FinalFantasy/img-1.jpeg" alt="Final Fantasy XV ">
                                </a>                                 
                                <div class="caption"> 
                                    <h3>Final Fantasy XV </h3> 
                                    <small class="text-muted">For PS4</small>
                                    <small class="product-cost"><i class="fa fa-inr" aria-hidden="true"></i>2,499</small>
                                    <p><a href="product_detail.jsp?pid=22" class="btn btn-default" role="button">Info<i class="fa fa-arrow-right" aria-hidden="true"></i></a> </p> 
                                </div>                                 
                            </div>                             
                        </div>
                        <div class="clearfix clear-columns"></div>
                    </div>
                    <div class="row product-carousel">
                        <div class="col-sm-6 col-md-3 col-xs-6"> 
                            <div class="thumbnail"> 
                                <a href="product_detail.jsp?pid=18">
                                    <img src="assets/images/products/video games/HorizonZero/img-1.jpeg" alt="Horizon Zero Dawn">
                                </a>                                 
                                <div class="caption"> 
                                    <h3>Horizon Zero Dawn</h3> 
                                    <small class="text-muted">For PS4</small>
                                    <br>
                                    <small class="product-cost"><i class="fa fa-inr" aria-hidden="true"></i>3,999</small>
                                    <p><a href="product_detail.jsp?pid=18" class="btn btn-default" role="button">Info<i class="fa fa-arrow-right" aria-hidden="true"></i></a> </p> 
                                </div>                                 
                            </div>                             
                        </div>
                        <div class="col-sm-6 col-md-3 col-xs-6"> 
                            <div class="thumbnail"> 
                                <a href="product_detail.jsp?pid=19">
                                    <img src="assets/images/products/video games/AssassinCreed/img-1.jpeg" alt="Assassins Creed IV: Black Flag">
                                </a>                                 
                                <div class="caption"> 
                                    <h3>Assassins Creed IV: Black Flag</h3> 
                                    <small class="text-muted">For PC</small>
                                    <small class="product-cost"><i class="fa fa-inr" aria-hidden="true"></i>665</small>
                                    <p><a href="product_detail.jsp?pid=19" class="btn btn-default" role="button">Info<i class="fa fa-arrow-right" aria-hidden="true"></i></a> </p> 
                                </div>                                 
                            </div>                             
                        </div>
                        <div class="col-sm-6 col-md-3 col-xs-6"> 
                            <div class="thumbnail"> 
                                <a href="product_detail.jsp?pid=20">
                                    <img src="assets/images/products/video games/Justcause3/img-1.jpeg" alt="Just Cause 3">
                                </a>                                 
                                <div class="caption"> 
                                    <h3>Just Cause 3</h3> 
                                    <small class="text-muted">For PC</small>
                                    <small class="product-cost"><i class="fa fa-inr" aria-hidden="true"></i>665</small>
                                    <p><a href="product_detail.jsp?pid=20" class="btn btn-default" role="button">Info<i class="fa fa-arrow-right" aria-hidden="true"></i></a> </p> 
                                </div>                                 
                            </div>                             
                        </div>
                        <div class="col-sm-6 col-md-3 col-xs-6"> 
                            <div class="thumbnail"> 
                                <a href="product_detail.jsp?pid=21">
                                    <img src="assets/images/products/video games/Hitman/img-1.jpeg" alt="HITMAN: The Complete First Season">
                                </a>                                 
                                <div class="caption"> 
                                    <h3>HITMAN: The Complete First Season</h3> 
                                    <small class="text-muted">For Xbox One</small>
                                    <small class="product-cost"><i class="fa fa-inr" aria-hidden="true"></i>3,099</small>
                                    <p><a href="product_detail.jsp?pid=21" class="btn btn-default" role="button">Info<i class="fa fa-arrow-right" aria-hidden="true"></i></a> </p> 
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
