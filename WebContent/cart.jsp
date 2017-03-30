<%@ page import="java.sql.*,Basic.ConnectionManager" %>
<% 
Connection con=null;	//connection to the DB is declared
Statement st=null;	//statement to be sent to query the DB is declared
ResultSet rs=null;

con = ConnectionManager.getConnection();	//connection is initialized, port is given, DB name,password are given
st= con.createStatement();	//statement is initialized to be queried with the DB
rs= st.executeQuery("select count(id) from cart where id='"+session.getAttribute("client")+"'");
rs.next();
int count=rs.getInt(1);
rs.close();
%>
<!DOCTYPE html> 
<html> 
    <head> 
        <meta charset="utf-8"> 
        <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        <title>Cart</title>         
        <link href="assets/bootstrap/css/bootstrap.min.css" rel="stylesheet"> 
        <link rel="stylesheet" type="text/css" href="assets/mdl/material.min.css">
        <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet"> 
        <!-- Custom styles for this page -->
        <link href="assets/style.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto">
    </head>     
    <body> 
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
            <main class="mdl-layout__content"> 
                <div class="page-content">
                <% if(count==0){ %>
                <div class="ibox-content" width="100%" height="30%">Your Shopping Cart is Empty!</div>
                <% } else { %>
        <div id="page-wrapper" class="gray-bg">
            <div class="wrapper wrapper-content"> 
                <div class="row"> 
                    <div class="col-md-9"> 
                        <div class="ibox"> 
                            <div class="ibox-title"> 
                                <span class="pull-right">(<strong><%=count %></strong>) items</span> 
                                <h5>Items in your cart</h5> 
                            </div>    
                            
                            <%
                            	rs= st.executeQuery("select * from cart where id='"+session.getAttribute("client")+"'");
                            	while(rs.next()) {
                            	int pid=rs.getInt("pid");	
                            	int subTotal=rs.getInt("sub_total");
                            	rs.close();
                            	rs= st.executeQuery("select * from plist where id='"+pid+"'");
                            	rs.next();
                            	String pname=rs.getString("title");
                            	String catg=rs.getString("catg");
                            	rs.close();
                            	rs=st.executeQuery("select * from "+catg+" where id=(select pid from cart where id='"+session.getAttribute("client")+"')");
                            	rs.next();
                            	int productPrice= rs.getInt("price");
                            	String imgUrl= rs.getString("photo");
                            	rs.close();
                            %>                           
                            <div class="ibox-content">
                                <div class="table-responsive12"> 
                                    <div class="row shoping-cart-table"> 
                                        <div class="col-md-3" width="90"> 
                                            <div class="cart-product-imitation"> 
</div>                                             
                                            <img src="<%=imgUrl %>img-1.jpeg" class="img-responsive"> 
                                        </div>
                                        <div class="col-md-3 desc"> 
                                            <h3> <a href="#" class="text-navy"> 
                                                <%=pname %></a> </h3> 
                                            <div class="desc"> 
                                                <%=catg %>
</div>                                             
                                            <div class="m-t-sm"> 
                                                <a href="#" class="text-muted"><i class="fa fa-trash"></i> Remove item</a> 
                                            </div>                                             
                                        </div>                                         
                                        <div class="col-md-2"> 
                                            <i class="fa fa-inr" aria-hidden="true"></i><%=productPrice %>
                                            
                                        </div>                                         
                                        <div class="col-md-1" width="65"> 
                                            <input type="number" class="form-control" min="1" max="10"> 
                                        </div>                                         
                                        <div class="col-md-3"> 
                                            <h4> 
                                            <i class="fa fa-inr" aria-hidden="true"></i><%=subTotal %></h4> 
                                        </div>                                         
                                    </div>                                     
                                </div>                                 
                            </div> 
                            <% } %>                            
                            <div class="ibox-content" id="place-order-content"> 
                                <button class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-color--deep-orange-700" id="checkout-button">
                                    <i class="fa fa fa-shopping-cart"></i>
                                    <span> Checkout</span>
                                </button>                                 
                                <button class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-color--deep-orange-700">
                                    <i class="fa fa-arrow-left"></i>
                                    <span>  Continue shopping</span>
                                </button>                                 
                            </div>                             
                        </div>                         
                    </div>   
                    <%
                    rs= st.executeQuery("select SUM(sub_total) from cart where id='"+session.getAttribute("client")+"')");
                    rs.next();
                    int grandTotal =rs.getInt(1);
                    rs.close();
                    %>                  
                    <div class="col-md-3"> 
                        <div class="ibox"> 
                            <div class="ibox-title"> 
                                <h5>Cart Summary</h5> 
                            </div>                             
                            <div class="ibox-content"> 
                                <span> 
                                Total</span> 
                                <h2 class="font-bold"> 
                                <i class="fa fa-inr" aria-hidden="true"></i><%=grandTotal %></h2> 
                                <hr /> 
                                <span class="text-muted small"> 
                                *Free delivery by wednesday, March 1</span> 
                            </div>                             
                        </div>                         
                    </div>
                    <div class="m-t-sm">
                        <div class="btn-group"> 
                            <button class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-color--deep-orange-700" id="checkout-button">
                                <i class="fa fa fa-shopping-cart"></i>
                                <span> Checkout</span>
                            </button>                             
                            <button class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-color--deep-orange-700">
                                <i class="fa fa fa-shopping-cart"></i>
                                <span> Continue</span>
                            </button>                             
                        </div>                         
                    </div>                     
                </div>                 
            </div>             
        </div> 
        <% } %>
       </div>
      </main>
     </div>        
        <!-- Mainly scripts -->         
        <script src="assets/js/jquery-3.1.1.min.js"></script>         
        <script src="assets/bootstrap/js/bootstrap.min.js"></script>         
        <script src="assets/mdl/material.min.js"></script>  
        <script src="assets/script.js"></script>       
    </body>     
</html>