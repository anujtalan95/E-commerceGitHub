<%@ page import="java.sql.*" %>
<%@ page import="Basic.ConnectionManager" %>
    <% 
    Integer uid = (Integer) session.getAttribute("client");
    Connection con=null;	//connection to the DB is declared
	Statement st=null;	//statement to be sent to query the DB is declared
	ResultSet rs=null;
	
	con = ConnectionManager.getConnection();	//connection is initialized, port is given, DB name,password are given
	st= con.createStatement();	//statement is initialized to be queried with the DB
	rs= st.executeQuery("select * from client_m where id="+uid+"");
	rs.next();
	String name=rs.getString("name");
	rs.close();
	rs= st.executeQuery("select count(id) from cart where id='"+session.getAttribute("client")+"'");
	rs.next();
	int count=rs.getInt(1);
	rs.close();
	%>
<header class="mdl-layout__header"> 
                <div class="mdl-layout__header-row"> 
                    <!-- Title -->                     
                    <a href="index.jsp"><span class="mdl-layout-title">4Shoppers</span> </a>
                    <!-- Add spacer, to align navigation to the right -->                     
                    <div class="mdl-navigation"> 
                        <div class="mdl-layout-spacer"> 
                            <!--  Search box -->                             
                            <div id="search-box"> 
                                <div class="form-group"> 
                                    <div class="col-sm-10"> 
                                        <form action="ProductSearch" method="post"> 
                                            <div class="input-group"> 
                                                <input type="text" class="form-control" id="search" name="psearch"> 
                                                <span class="input-group-btn"> <button type="submit" class="btn btn-primary"> 
                                                        <i class="fa fa-search" aria-hidden="true"></i> 
                                                    </button> </span> 
                                            </div>                                             
                                        </form>                                         
                                    </div>                                     
                                </div>                                 
                            </div>                             
                        </div>                         
                    </div>                     
                    <!-- Navigation. We hide it in small screens. -->                     
                    <nav class="mdl-navigation mdl-layout--large-screen-only"> 
                        <a class="mdl-navigation__link" href=""> 
                            <div class="dropdown"> 
                                <a href="#category" class="mdl-navigation__link dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="0">Shop by <b>Category</b>&nbsp;<span class="caret"></span></a> 
                                <ul class="dropdown-menu"> 
                                    <li> 
                                        <a href="books.jsp">Books</a> 
                                    </li>                                     
                                    <li> 
                                        <a href="games.jsp">Video Games</a> 
                                    </li>                                     
                                    <li> 
                                        <a href="mobiles.jsp">Mobiles & Tablets</a> 
                                    </li>                                     
                                    <li> 
                                        <a href="#">Computers & Accessories</a> 
                                    </li>                                     
                                    <li> 
                                        <a href="#">Clothing</a> 
                                    </li>                                     
                                </ul>                                 
                            </div>                             
                        </a>                         
                        <a class="mdl-navigation__link" href=""> 
                            <div class="dropdown"> 
                                <a href="#category" class="mdl-navigation__link dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="0">Welcome <%=name %></b>&nbsp;
                                <span class="caret"></span> 
                        </a>                         
                        <ul class="dropdown-menu"> 
                            <li> 
                                <a href="profile.jsp"><i class="material-icons">account_circle</i>My Profile</a> 
                            </li>                             
                            <li> 
                                <a href="myorders.jsp"><i class="fa fa-cart-arrow-down" aria-hidden="true"></i>My Orders</a> 
                            </li>                             
                            <li> 
                                <a href="#"><i class="fa fa-heart" aria-hidden="true"></i>My Wishlist</a>
                            </li>                             
                            <li> 
                                <a href="Logout"><i class="fa fa-sign-out" aria-hidden="true"></i>Logout</a> 
                            </li>                             
                        </ul>                         
                </div>
            </a>             
        </nav>         
        <div class="mdl-navigation cart"> 
            <a class="mdl-navigation__link" href="cart.jsp"><span class="mdl-badge" data-badge="<%=count %>" ><i class="material-icons" style="font-size:22px; padding:0px; margin-right:10px;">shopping_cart</i></span></a> 
        </div>         
    </div>     
</header> 
<!-- Navigation. We hide it in large screens. --> 
<div class="mdl-layout__drawer mdl-layout--small-screen-only"> 
    <span class="mdl-layout-title">Shop by <b>Category</b></span> 
    <nav class="mdl-navigation"> 
        <a class="mdl-navigation__link" href="books.jsp"><i class="fa fa-book" aria-hidden="true"></i>Books</a> 
        <a class="mdl-navigation__link" href="games.jsp"><i class="material-icons">videogame_asset</i>Video Games</a> 
        <a class="mdl-navigation__link" href="mobiles.jsp"><i class="material-icons">phone_android</i>Mobiles & Tablets</a> 
        <a class="mdl-navigation__link" href=""><i class="material-icons">laptop_mac</i>Computer & Accessories</a> 
        <a class="mdl-navigation__link" href=""><i class="fa fa-child" aria-hidden="true"></i>Clothing</a> 
        <div class="space-line"></div>         
        <a class="mdl-navigation__link" href="profile.jsp"><i class="material-icons">account_circle</i>My Profile</a> 
        <a class="mdl-navigation__link" href="myorders.jsp"><i class="fa fa-cart-arrow-down" aria-hidden="true"></i>My Orders</a> 
        <a class="mdl-navigation__link" href=""><i class="fa fa-heart" aria-hidden="true"></i>My Wishlist</a> 
        <div class="space-line"></div>         
        <a class="mdl-navigation__link" href="Logout">
                <i class="fa fa-sign-out" aria-hidden="true"></i>Logout
        </a>         
    </nav>     
</div> 
<!-- Navbar Close--> 
<script type="text/javascript">
$(document).ready(function() {
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

