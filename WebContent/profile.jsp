<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>My Profile | 4Shoppers</title>
        <link href="assets/font-awesome/css/font-awesome.min.css" rel="stylesheet">
        <!-- Bootstrap core CSS -->
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet"> 
        <link href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.css" rel="stylesheet"> 
        <link href="assets/mdl/material.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <!-- Custom styles for this template -->
        <link href="assets/style.css" rel="stylesheet">
    </head>
    <body>
    <div class="mdl-layout mdl-js-layout mdl-layout--fixed-header"> 
            <%
        if (session.getAttribute("client") == null ){
           
            response.sendRedirect("login.html");

        }else {
            %>
               <jsp:include page="includes/user-nav.jsp"></jsp:include>
            <% } %>
           
            <main class="mdl-layout__content"> 
                <div class="page-content">
        <div class="container">
            <!-- Wide card with share menu button -->
            <div class="demo-card-wide mdl-card mdl-shadow--2dp">
                <div class="mdl-card__title">
                    <h2 class="mdl-card__title-text">Welcome</h2>
                </div>
                <div class="profile-img">
                    <img src="assets/images/user-2.jpg" class="img-responsive img-circle">
                </div>
                <div class="mdl-card__actions mdl-card--border">
                    <a class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect">
      E-mail Address</a>
                </div>
                <div class="mdl-card__menu">
                    <button class="mdl-button mdl-button--icon mdl-js-button mdl-js-ripple-effect">
                        <i class="material-icons">share</i>
                    </button>
                </div>
            </div>
            <div class="row">
                <div class="col-md-3">
                    <!-- Event card -->
                    <div class="demo-card-event mdl-card mdl-shadow--2dp">
                        <div class="mdl-card__title mdl-card--expand">
                            <h4>
      Last Order:<br>
      May 24, 2016<br>
      7pm</h4>
                        </div>
                        <div class="mdl-card__actions mdl-card--border">
                            <a class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect" href="myorders.jsp">
      View All Orders</a>
                            <div class="mdl-layout-spacer"></div>
                            <i class="material-icons">shopping_basket</i>
                        </div>
                    </div>                     
                </div>
                <div class="col-md-8">
                    <div class="demo-card-event mdl-card mdl-shadow--4dp" id="profile-info">
                        <!-- Textfield with Floating Label -->
                        <form action="#">
                            <i class="material-icons">account_circle</i>
                            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                <input class="mdl-textfield__input" type="text" id="sample3">
                                <label class="mdl-textfield__label" for="sample3">Name</label>
                            </div>
                        </form>
                        <!-- Textfield with Floating Label -->
                        <form action="#">
                            <i class="material-icons">contact_phone</i>
                            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                <input class="mdl-textfield__input" type="number" maxlength="10" id="phone">
                                <label class="mdl-textfield__label" for="sample3">Phone Number</label>
                            </div>
                        </form>
                        <!-- Raised button with ripple -->
         <!--              <button class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect" id="profile-info-submit">
                            Submit
</button>   -->
                    </div>                     
                </div>
                <div class="col-md-8" style="display: none;">
                    <div class="demo-card-event mdl-card mdl-shadow--4dp" id="profile-info">
                        <!-- Right aligned menu below button -->
                        <button id="demo-menu-lower-right" class="mdl-button mdl-js-button mdl-button--icon">
                            <i class="material-icons">more_vert</i>
                        </button>
                        <ul class="mdl-menu mdl-menu--bottom-right mdl-js-menu mdl-js-ripple-effect" for="demo-menu-lower-right">
                            <li class="mdl-menu__item">Edit</li>
                        </ul>
                        <!-- Textfield with Floating Label -->
                        <div class="mdl-text">
                            <i class="material-icons">account_circle</i>
                            <label class="mdl-text">Anuj Kumar Talan</label>
                        </div>
                        <!-- Textfield with Floating Label -->
                        <div class="mdl-text">
                            <i class="material-icons">contact_phone</i>
                            <label class="mdl-text">Anuj Kumar Talan</label>
                        </div>
                    </div>                     
                </div>
            </div>
            <div class="row">
                <div class="col-md-3">
                    <!-- Event card -->
                    <div class="demo-card-event mdl-card mdl-shadow--2dp">
                        <div class="mdl-card__title mdl-card--expand">
                            <h4>
      Address:<br>
      May 24, 2016<br>
      7</h4>
                        </div>
                        <div class="mdl-card__actions mdl-card--border">
                            <a class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect">
      View All Address</a>
                            <div class="mdl-layout-spacer"></div>
                            <i class="material-icons">event</i>
                        </div>
                    </div>                     
                </div>
                <div class="col-md-8">
                    <div class="demo-card-event mdl-card mdl-shadow--4dp last-card" id="profile-info">
                        <!-- Textfield with Floating Label -->
                        <div class="profile-form">
                            <form action="#">
                                <br>
                                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                    <input class="mdl-textfield__input" type="text" id="address1">
                                    <label class="mdl-textfield__label" for="sample3">Address Line 1</label>
                                </div>
                                <!-- Textfield with Floating Label -->
                                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                    <input class="mdl-textfield__input" type="text" id="address2">
                                    <label class="mdl-textfield__label" for="sample3">Address Line 2</label>
                                </div>
                                <!-- Textfield with Floating Label -->
                                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                    <input class="mdl-textfield__input" type="text" id="state">
                                    <label class="mdl-textfield__label" for="sample3">State</label>
                                </div>
                                <!-- Textfield with Floating Label -->
                                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                    <input class="mdl-textfield__input" type="number" maxlength="6" id="pin">
                                    <label class="mdl-textfield__label" for="sample3">Pincode</label>
                                </div>
                                <!-- Raised button with ripple -->
                                <button class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect" type="button" id="profile-info-submit">
                                    Submit
</button>                                 
                            </form>                             
                        </div>                         
                    </div>
                </div>
            </div>
            <div id="profile-toast" class="mdl-js-snackbar mdl-snackbar">
                  <div class="mdl-snackbar__text"></div>
                  <button class="mdl-snackbar__action" type="button"></button>
            </div>
            </div>
            </div>
            </main>
            </div>
            <!-- Bootstrap core JavaScript
    ================================================== -->
            <!-- Placed at the end of the document so the pages load faster -->
            <script src="assets/js/jquery-3.1.1.min.js"></script>         
        <script src="assets/js/jquery-migrate-1.4.1.min.js"></script>         
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>         
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"
  integrity="sha256-VazP97ZCwtekAsvgPBSUwPFKdrwD3unUfSGVYrahUqU="
  crossorigin="anonymous"></script>       
        <script src="assets/js/bootstrap-hover-dropdown.min.js" type="text/javascript"></script>         
        <script src="assets/mdl/material.min.js"></script>         
            <script type="text/javascript" src="assets/script.js"></script>
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
        
      $(document).ready(function(){
      	var snackbarContainer = document.querySelector('#profile-toast');
          $("#profile-info-submit").click(function(){
        	  var num=$("#phone").val();
           var address1 = $("#address1").val();
           var address2 = $("#address2").val();
           var state = $("#state").val();
           var pincode = $("#pin").val();
                $.post("Details",{address1:add_lin1,address2:add_lin2,state:state,pincode:pin,num:phone},function(data){
              	  var msg = {message: 'Details Submitted'};
              	    snackbarContainer.MaterialSnackbar.showSnackbar(msg);
                    });
              	   
              });
      });
        
        </script>
    </body>
</html>
