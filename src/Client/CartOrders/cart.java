package Client.CartOrders;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class cart
 */
@WebServlet("/cart")
public class cart extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public cart() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/plain;charset=UTF-8");
		HttpSession session = request.getSession();
		if(session.getAttribute("client")==null){
												//link login page
		}
		else{
			Connection con=null;
			Statement st=null;
			ResultSet rs=null;
			ResultSet rsp=null;
			try {
				String q = request.getParameter("q");
				int pid = Integer.parseInt(q);
				Class.forName("com.mysql.jdbc.Driver");
				con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecom","root","MySQL"); 
				st= con.createStatement();
				System.out.println(session.getAttribute("client"));
				System.out.println(pid);
				//ResultSet rs=st.executeQuery("select * from cart where client_id='"+session.getAttribute("client")+"'");
				Integer checkpid;
				Integer quantity;
				Integer price;
			//	ResultSet rsc;
				rs=st.executeQuery("select * from cart where client_id='"+session.getAttribute("client")+"' and product_id='"+pid+"'"); 
				//int i = st.executeQuery("select * from cart where client_id='"+session.getAttribute("client")+"' and product_id='"+pid+"'"); //doubt...create RS PS:attribute client has been added to login.java
				if(rs.next()){ // doubt...solution if(rs.next())
					checkpid=Integer.parseInt(rs.getString(2));
					System.out.println("check"+checkpid);
					if(checkpid.equals(pid)){
						System.out.println("enter if");
						//rs= st.executeQuery("select * from cart where client_id='"+session.getAttribute("client")+"' and product_id='"+pid+"'"); //doubt...useless if above doubt is solution
						//System.out.println("execute");
						//rs.next();
						//System.out.println("next");
						System.out.println("quantity before update"+rs.getInt(3));
						quantity=rs.getInt(3)+1;
						st.executeUpdate("update cart set quantity='"+(rs.getInt(3)+1)+"' where client_id='"+rs.getInt(1)+"' and product_id='"+rs.getInt(2)+"'"); 	//or insert prod id
						System.out.println("update q");
						rsp= st.executeQuery("select * from product where product_id='"+pid+"'");
						rsp.next();
						//rsc= st.executeQuery("select * from cart where client_id='"+session.getAttribute("client")+"' and product_id='"+pid+"'"); //doubt...useless if above doubt is solution
						//rsc.next();
						System.out.println(rsp.getInt(3));
						price=rsp.getInt(3);
						//System.out.println(rs.getInt(3));
						
						st.executeUpdate("update cart set sub_total='"+(price*quantity)+"' where client_id='"+session.getAttribute("client")+"' and product_id='"+pid+"'");
					}
					//else{ 
						//rs= st.executeQuery("select * from product where product_id='"+pid+"'");
						//st.executeUpdate("insert into cart(client_id,product_id,quantity,sub_total) values ('"+session.getAttribute("client")+"','"+rs.getInt(1)+"','"+1+"','"+rs.getInt(3)+"')"); 
					//}
				}
				else{ 
					rs.close();
					rs= st.executeQuery("select * from product where product_id='"+pid+"'");
					rs.next();
					st.executeUpdate("insert into cart(client_id,product_id,quantity,sub_total) values ('"+session.getAttribute("client")+"','"+rs.getInt(1)+"','"+1+"','"+rs.getInt(3)+"')"); 
				}
			//	rs = st.executeQuery("select SUM(sub_total) from cart group by client_id='"+session.getAttribute("client")+"'");
			//	rs.next();
			 //   int sum = rs.getInt(1);
			  //  System.out.println(sum);
			} 
			catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} 
			finally{
				try { if (rs != null) rs.close(); } catch (Exception e) {};
				try { if (rsp != null) rsp.close(); } catch (Exception e) {};
				try { if (st != null) st.close(); } catch (Exception e) {};
				try { if (con != null) con.close(); } catch (Exception e) {};
			}
		}
	}

}
