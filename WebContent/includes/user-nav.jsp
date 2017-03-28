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
	%>
<header class="mdl-layout__header"> 
                <div class="mdl-layout__header-row"> 
                    <!-- Title -->                     
                    <span class="mdl-layout-title">4Shoppers</span> 
                    <!-- Add spacer, to align navigation to the right -->                     
                    <div class="mdl-navigation"> 
                        <div class="mdl-layout-spacer"> 
                            <!--  Search box -->                             
                            <div id="search-box"> 
                                <div class="form-group"> 
                                    <div class="col-sm-10"> 
                                        <form action="" method="get"> 
                                            <div class="input-group"> 
                                                <input type="text" class="form-control"> 
                                                <span class="input-group-btn"> <button type="button" class="btn btn-primary"> 
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
                                        <a href="#">Books</a> 
                                    </li>                                     
                                    <li> 
                                        <a href="#">Video Games</a> 
                                    </li>                                     
                                    <li> 
                                        <a href="#">Mobiles & Tablets</a> 
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
                                <a href="#">My Profile</a> 
                            </li>                             
                            <li> 
                                <a href="#">My Orders</a> 
                            </li>                             
                            <li> 
                                <a href="#">My Wishlist</a>
                            </li>                             
                            <li> 
                                <a href="Logout"><i class="fa fa-sign-out" aria-hidden="true"></i>Logout</a> 
                            </li>                             
                        </ul>                         
                </div>
            </a>             
        </nav>         
        <div class="mdl-navigation cart"> 
            <a class="mdl-navigation__link" href=""><i class="fa fa-shopping-cart fa-lg" aria-hidden="true"></i></a> 
        </div>         
    </div>     
</header> 
<!-- Navigation. We hide it in large screens. --> 
<div class="mdl-layout__drawer mdl-layout--small-screen-only"> 
    <span class="mdl-layout-title">Shop by <b>Category</b></span> 
    <nav class="mdl-navigation"> 
        <a class="mdl-navigation__link" href=""><i class="fa fa-book" aria-hidden="true"></i>Books</a> 
        <a class="mdl-navigation__link" href=""><i class="fa fa-gamepad" aria-hidden="true"></i>Video Games</a> 
        <a class="mdl-navigation__link" href=""><i class="fa fa-mobile" aria-hidden="true"></i>Mobiles & Tablets</a> 
        <a class="mdl-navigation__link" href=""><i class="fa fa-desktop" aria-hidden="true"></i>Computer & Accessories</a> 
        <a class="mdl-navigation__link" href=""><i class="fa fa-child" aria-hidden="true"></i>Clothing</a> 
        <div class="space-line"></div>         
        <a class="mdl-navigation__link" href=""><i class="fa fa-user" aria-hidden="true"></i>My Profile</a> 
        <a class="mdl-navigation__link" href=""><i class="fa fa-cart-arrow-down" aria-hidden="true"></i>My Orders</a> 
        <a class="mdl-navigation__link" href=""><i class="fa fa-heart" aria-hidden="true"></i>My Wishlist</a> 
        <div class="space-line"></div>         
        <a class="mdl-navigation__link" href="Logout">
                <i class="fa fa-sign-out" aria-hidden="true"></i>Logout
        </a>         
    </nav>     
</div> 
<!-- Navbar Close--> 