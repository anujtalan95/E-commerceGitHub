package PlacedOrders;

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
 * Servlet implementation class products
 */
@WebServlet("/products")
public class products extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public products() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		Connection con=null;
		Statement st=null;
		Statement stm=null;
		ResultSet rs=null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecom","root","MySQL"); 
			st= con.createStatement();
			stm= con.createStatement();
			rs= st.executeQuery("select max(order_id) from order_list");
			rs.next();
			int id=rs.getInt(1);
			rs.close();
			rs= st.executeQuery("select * from cart where client_id='"+session.getAttribute("client")+"'");
			int product_id;
			int quantity;
			int sub_total;
			System.out.println("variables settled");
			while(rs.next()){
				product_id=rs.getInt(2);
				quantity=rs.getInt(3);
				sub_total=rs.getInt(4);
				stm.executeUpdate("insert into order_detail values('"+id+"','"+product_id+"','"+quantity+"','"+sub_total+"')");
				System.out.println("list settling.......");
			}
			System.out.println("list settled");
			stm.executeUpdate("delete from cart where client_id='"+session.getAttribute("client")+"'");
			response.sendRedirect("MyOrders.jsp");
			System.out.println("cart deletion settled");
		} 
		catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally{
			try { if (rs != null) rs.close(); } catch (Exception e) {};
			try { if (st != null) st.close(); } catch (Exception e) {};
			try { if (stm != null) stm.close(); } catch (Exception e) {};
			try { if (con != null) con.close(); } catch (Exception e) {};
		}
	}

}
