<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="Basic.ConnectionManager" %>
    <% String pid=request.getParameter("pid");
    Connection con=null;	//connection to the DB is declared
	Statement st=null;	//statement to be sent to query the DB is declared
	ResultSet rs=null;
	
	con = ConnectionManager.getConnection();	//connection is initialized, port is given, DB name,password are given
	st= con.createStatement();	//statement is initialized to be queried with the DB
	rs= st.executeQuery("select * from plist where id="+pid+"");
	rs.next();
	String name=rs.getString("title");
	String brand=rs.getString("brand");
	String desc=rs.getString("descrip");
	String catg=rs.getString("catg");
	String metat=rs.getString("mtitle");
	String metad=rs.getString("mdescrip");
	String metak=rs.getString("mkeywrd");
	rs.close();
	rs= st.executeQuery("select * from "+catg+" where id="+pid+" and cid=(select MIN(cid) from "+catg+" where id="+pid+")");
	rs.next();
	int cid=rs.getInt("cid");
	String color=rs.getString("color");
	String specs=rs.getString("specs");
	int price=rs.getInt("price");
	String imgurl=rs.getString("photo");
	int stock=rs.getInt("stock");
    rs.close();
    %>
<!DOCTYPE html> 
<html> 
    <head> 
        <meta charset="utf-8"> 
        <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        <title><%= metat %></title>    
        <meta name="keywords" content="<%=metak%>">
        <meta name="description" content="<%=metad%>">     
        <!-- Bootstrap core CSS -->         
        <link href="assets/font-awesome/css/font-awesome.min.css" rel="stylesheet"> 
        <link href="assets/bootstrap/css/bootstrap.css" rel="stylesheet"> 
        <!-- Material Design core CSS -->         
        <link href="assets/mdl/material.min.css" rel="stylesheet"> 
        <!-- Slick carousel core CSS -->         
        <link rel="stylesheet" type="text/css" href="assets/slick/slick.css"> 
        <link rel="stylesheet" type="text/css" href="assets/slick/slick-theme.css"> 
        <!-- Custom styles for this  page-->         
        <link href="assets/style.css" rel="stylesheet"> 
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
            <div id="page-wrapper" class="gray-bg"> 
                <div class="wrapper wrapper-content animated fadeInRight"> 
                    <div class="row"> 
                        <div class="col-lg-12"> 
                            <div class="ibox product-detail"> 
                                <div class="ibox-content"> 
                                    <div class="row"> 
                                        <div class="col-md-5"> 
                                            <div class="product-images"> 
                                                <div> 
                                                    <div class="image-imitation" style="padding:0; background-color: #ffffff;"> 
                                                       <img src="<%=imgurl %>img-1.jpeg" alt="<%=metat %>" height="450px" style="margin:auto;">
</div>                                                     
                                                </div>                                                 
                                                <div> 
                                                    <div class="image-imitation" style="padding:0;background-color: #ffffff;"> 
                                                         <img src="<%=imgurl %>img-2.jpeg" alt="<%=metat %>" height="450px" style="margin:auto;">
</div>                                                     
                                                </div>                                                 
                                                <div> 
                                                    <div class="image-imitation" style="padding:0;background-color: #ffffff;"> 
                                                         <img src="<%=imgurl %>img-3.jpeg" alt="<%=metat %>" height="450px" style="margin:auto;">
</div>                                                     
                                                </div>                                                 
                                            </div>                                             
                                        </div>                                         
                                        <div class="col-md-7"> 
                                            <h2 class="font-bold m-b-xs"> 
                                        <%=name %></h2>                                              
                                            <hr> 
                                            <div> 
                                            <input type="hidden" id="pid" value="<%=pid %>" />
                                            <input type="hidden" id="cid" value="<%=cid %>" />
                                            <input type="hidden" id="catg" value="<%=catg %>" />
                                                <button class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect pull-right" id="cart-btn">Add To Cart</button>                                                  
                                                <h1 class="product-main-price"><i class="fa fa-inr" aria-hidden="true"></i><%=price %> <small class="text-muted"><%=color %></small> </h1> 
                                            </div>                                             
                                            <hr> 
                                            <h4>Product description</h4> 
                                            <div class="small text-muted"> 
                                                <%=desc %>
                                                <%=specs %>
                                            </div>                                                                                        
                                                                                         
                                        </div>                                         
                                    </div>                                     
                                </div>                                                                  
                            </div>                             
                        </div>                         
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
        <script src="assets/bootstrap/js/bootstrap.min.js"></script>         
        <script src="assets/js/bootstrap-hover-dropdown.min.js" type="text/javascript"></script>         
        <script src="assets/mdl/material.min.js"></script>         
        <script src="assets/slick/slick.min.js" type="text/javascript"></script>         
        <!-- Custom script for this page -->         
        <script src="assets/script.js"></script> 
        <script>
        $(document).ready(function(){
            $("#cart-btn").click(function(){
             var p_id = $("#pid").val();
             var c_id = $("#cid").val();
             var catg = $("#catg").val();
                  $.post("cart",{pid:p_id,cid:c_id,catg:catg},function(data){
   		                    alert("Item added to cart :"+p_id);
                      });
                	   
                });
        });
        </script>        
    </body>     
</html>