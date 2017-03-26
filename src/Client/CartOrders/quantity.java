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
 * Servlet implementation class quantity
 */
@WebServlet("/quantity")
public class quantity extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public quantity() {
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
		HttpSession session = request.getSession();
		if(session.getAttribute("client")==null){
			response.sendRedirect("Home.jsp");
		}
		else{
			Connection con=null;
			Statement st=null;
			ResultSet rs=null;
			try {
		//ANUJ!!
			//add link to add to cart button in product display and to the button which will edit quantity inside cart
			//give value to pid and int quantity from a textbox from the above places
		//ANUJ!!
				String q = request.getParameter("q");
				String p = request.getParameter("p");
				int pid = Integer.parseInt(p);
				int quantity = Integer.parseInt(q);
				Class.forName("com.mysql.jdbc.Driver");
				con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecom","root","MySQL");
				st= con.createStatement();
				rs = st.executeQuery("select * from product where product_id='"+pid+"'");
				rs.next();
				int price=rs.getInt(3);
				rs.close();
				rs = st.executeQuery("select * from cart where client_id='"+session.getAttribute("client")+"' and product_id='"+pid+"'");
				if(rs.next()){
					st.executeUpdate("update cart set quantity='"+quantity+"' where client_id='"+session.getAttribute("client")+"' and product_id='"+pid+"'");
					st.executeUpdate("update cart set sub_total='"+(price*quantity)+"' where client_id='"+session.getAttribute("client")+"' and product_id='"+pid+"'");
				}
				else{
					st.executeUpdate("insert into cart(client_id,product_id,quantity,sub_total) values ('"+session.getAttribute("client")+"','"+pid+"','"+quantity+"','"+price+"')");
				}
			} 
			catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			}
			finally{
				try { if (rs != null) rs.close(); } catch (Exception e) {};
				try { if (st != null) st.close(); } catch (Exception e) {};
				try { if (con != null) con.close(); } catch (Exception e) {};
			}
		}
	}

}
