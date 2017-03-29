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

import Basic.ConnectionManager;

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
				String catg = request.getParameter("catg");
				int pid = Integer.parseInt(p);
				int quantity = Integer.parseInt(q);
				String cid= request.getParameter("cid");
				con= ConnectionManager.getConnection();
				st= con.createStatement();
				rs = st.executeQuery("select * from "+catg+" where product_id='"+pid+"' and cid'"+cid+"'");
				rs.next();
				int price=rs.getInt("price");
				rs.close();
				rs = st.executeQuery("select * from cart where client_id='"+session.getAttribute("client")+"' and product_id='"+pid+"' and cid'"+cid+"'");
				if(rs.next()){
					st.executeUpdate("update cart set quantity='"+quantity+"' where client_id='"+session.getAttribute("client")+"' and product_id='"+pid+"' and cid'"+cid+"'");
					st.executeUpdate("update cart set sub_total='"+(price*quantity)+"' where client_id='"+session.getAttribute("client")+"' and product_id='"+pid+"' and cid'"+cid+"'");
				}
				else{
					st.executeUpdate("insert into cart(client_id,product_id,cid,quantity,sub_total) values ('"+session.getAttribute("client")+"','"+pid+"','"+cid+",'"+quantity+"','"+price+"')");
				}
			} 
			catch ( SQLException e) {
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
