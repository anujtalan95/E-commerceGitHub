<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*,Basic.ConnectionManager,java.util.ArrayList" %>
<% 
Connection con=null;	//connection to the DB is declared
Statement st=null;	//statement to be sent to query the DB is declared
Statement stm=null;
ResultSet rs=null;
ResultSet rsp=null;

con = ConnectionManager.getConnection();	//connection is initialized, port is given, DB name,password are given
st= con.createStatement();	//statement is initialized to be queried with the DB
stm= con.createStatement();
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
        <!-- Bootstrap core CSS -->         
        <link href="assets/font-awesome/css/font-awesome.min.css" rel="stylesheet"> 
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">  
        <link href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.css" rel="stylesheet">  
        <!-- Material Design core CSS -->         
        <link href="assets/mdl/material.min.css" rel="stylesheet"> 
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons"> 
        <!-- Custom styles for this page -->
        <link href="assets/style.css" rel="stylesheet" type="text/css">

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
                <div class="ibox-content empty-cart" width="100%" height="30%"><i class="material-icons" style="font-size:80px; margin-top:60px;">add_shopping_cart</i><br>Your Shopping Cart is Empty!</div>
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
                            	rsp= stm.executeQuery("select * from cart where id='"+session.getAttribute("client")+"'");
                            	System.out.println("before loop");
                            	int i=0;
                            	int k;
                            	ArrayList<Integer> prodid=new ArrayList<Integer>();
                            	ArrayList<Integer> subT=new ArrayList<Integer>();
                            	while(rsp.next()){
                            		prodid.add(rsp.getInt("pid"));
                            		subT.add(rsp.getInt("sub_total"));
                            		i++;
                            	}
                            	System.out.println("pid size "+prodid.size());
                            	System.out.println("subT size "+subT.size());
                            	rsp.close();
                            	int pid,subTotal;
                            	rsp=stm.executeQuery("select pid from cart where id='"+session.getAttribute("client")+"'");
                            	for(k=0;k<i;k++){
                            		pid=prodid.get(k);
                            		subTotal=subT.get(k);
                            		System.out.println("in loop");
                            		//rsp.next();
                            		System.out.println("one");
                            		rs= st.executeQuery("select * from plist where id='"+pid+"'");
                            		rs.next();
                            		String pname=rs.getString("title");
                            		String catg=rs.getString("catg");
                            		rs.close();
                            		System.out.println("two");
                            		//rsp=stm.executeQuery("select pid from cart where id='"+session.getAttribute("client")+"'");
                            		//while(rsp.next()){
                            			rsp.next();
                            			System.out.println("inside loop");
                            			//rs=st.executeQuery("select * from "+catg+" where id=(select pid from cart where id='"+session.getAttribute("client")+"')");
                            			rs=st.executeQuery("select * from "+catg+" where id='"+rsp.getInt(1)+"'");
                            			rs.next();
                            			int cid=rs.getInt("cid");
                            			int productPrice= rs.getInt("price");
                            			String imgUrl= rs.getString("photo");
                            			System.out.println("photo "+imgUrl);
                            			System.out.println("price "+productPrice);
                            			System.out.println("pid "+pid);
                            			System.out.println("cid "+cid);
                            			rs.close();
                            		//}
                            		//rsp.close();
                            %>                           
                            <div class="ibox-content">
                                <div class="table-responsive12"> 
                                    <div class="row shopping-cart-table"> 
                                        <div class="col-md-3" width="90"> 
                                            <div class="cart-product-imitation"> 
</div>                                             
                                            <img src="<%=imgUrl %>img-1.jpeg" class="img-responsive" id="product-img"> 
                                        </div>
                                        <div class="col-md-3 desc"> 
                                            <h3> <a href="#" class="text-navy"> 
                                                <%=pname %></a> </h3> 
                                            <div class="desc"> 
                                                <%=catg %>
</div>                                             
                                            <div class="m-t-sm"> 
                                            <input type="hidden" value="<%=pid %>" class="pid" name="<%=pid %>">
                                            <input type="hidden" value="<%=cid %>" class="cid" name="<%=cid %>">
                                                <button class="text-muted remove" id="<%=pid%>"><i class="fa fa-trash"></i> Remove item</button> 
                                            </div>                                             
                                        </div>                                         
                                        <div class="col-md-2"> 
                                            <i class="fa fa-inr" aria-hidden="true"></i><%=productPrice %>
                                            
                                        </div>                                         
                                        <div class="col-md-1" width="65"> 
                                            <input type="number" class="form-control" min="1" max="10" value="1"> 
                                        </div>                                         
                                        <div class="col-md-3"> 
                                            <h4> 
                                            <i class="fa fa-inr" aria-hidden="true"></i><%=subTotal %></h4> 
                                        </div>                                         
                                    </div>                                     
                                </div>                                 
                            </div> 
                            <%  System.out.println("end loop");}rsp.close(); %>                            
                            <div class="ibox-content" id="place-order-content"> 
                                <a href="payment.jsp"><button class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-color--deep-orange-700" id="checkout-button">
                                    <i class="fa fa fa-shopping-cart"></i>
                                    <span> Checkout</span>
                                </button>                 </a>                
                                <a href="index.jsp"><button class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-color--deep-orange-700">
                                    <i class="fa fa-arrow-left"></i>
                                    <span>  Continue shopping</span>
                                </button> </a>                                
                            </div>                             
                        </div>                         
                    </div>   
                    <%
                    rs= st.executeQuery("select SUM(sub_total) from cart where id='"+session.getAttribute("client")+"'");
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
                            <a href="payment.jsp"><button class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-color--deep-orange-700" id="checkout-button">
                                <i class="fa fa fa-shopping-cart"></i>
                                <span> Checkout</span>
                            </button>             </a>                
                            <a href="index.jsp"><button class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-color--deep-orange-700">
                                <i class="fa fa fa-shopping-cart"></i>
                                <span> Continue</span>
                            </button>   </a>                          
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
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>  
        <script src="assets/mdl/material.min.js"></script>        
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"
  integrity="sha256-VazP97ZCwtekAsvgPBSUwPFKdrwD3unUfSGVYrahUqU="
  crossorigin="anonymous"></script>       
        <script src="assets/js/bootstrap-hover-dropdown.min.js" type="text/javascript"></script>                    
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
 
        $(document).ready(function() {
        	"use strict";
            var buttons = document.getElementsByClassName('remove');
            for ( var i in Object.keys( buttons ) ) {
                buttons[i].onclick = function() {
                	var p_id = $(this).closest('div').find(".pid").val();
       	    	 var c_id = $(this).closest('div').find(".cid").val();
       	        $.post("delete",{pid:p_id,cid:c_id},function(data){	
       	        	location.reload();
       	    	});
                };
            }
        
        });
        </script>     
    </body>     
</html>
