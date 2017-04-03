package Client.PlacedOrders;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Basic.ConnectionManager;

/**
 * Servlet implementation class ID
 */
@WebServlet("/ID")
public class ID extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ID() {
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
		Connection con=null;
		Statement st=null;
		ResultSet rs=null;
		try {
			con=ConnectionManager.getConnection();
			st= con.createStatement();
			rs = st.executeQuery("select SUM(quantity) from cart where id='"+session.getAttribute("client")+"'");
			rs.next();
			int total_quantity=rs.getInt(1);
			rs.close();
			rs = st.executeQuery("select SUM(sub_total) from cart where id='"+session.getAttribute("client")+"'");
			rs.next();
			int total_cost=rs.getInt(1);
			st.executeUpdate("insert into order_list(client_id, stamp, total_quantity, total_cost) values('"+session.getAttribute("client")+"',now(),'"+total_quantity+"','"+total_cost+"')");
			RequestDispatcher rd = request.getRequestDispatcher("/products");
			rd.forward(request , response);
			System.out.println("ID settled");
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
