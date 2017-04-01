package Client.PlacedOrders;

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
		ResultSet rsp=null;
		try {
			con = ConnectionManager.getConnection();
			st= con.createStatement();
			stm= con.createStatement();
			rs= st.executeQuery("select max(order_id) from order_list where client_id='"+session.getAttribute("client")+"'");
			rs.next();
			int id=rs.getInt(1);
			rs.close();
			rs= st.executeQuery("select * from cart where client_id='"+session.getAttribute("client")+"'");
			int pid;
			int quantity;
			int sub_total;
			int cid;
			String catg;
			int stock;
			System.out.println("variables settled");
			while(rs.next()){
				pid=rs.getInt(2);
				quantity=rs.getInt(4);
				sub_total=rs.getInt(5);
				cid = rs.getInt(3);
				rsp=stm.executeQuery("select catg from plist where id='"+pid+"'");
				catg=rsp.getString(1);
				rsp.close();
				rsp=stm.executeQuery("select stock from "+catg+" where id='"+pid+"' and cid='"+cid+"'");
				stock = rsp.getInt(1)-quantity;
				stm.executeUpdate("insert into order_detail values('"+id+"','"+pid+"','"+cid+"','"+quantity+"','"+sub_total+"')");
				stm.executeUpdate("update "+catg+" set stock='"+stock+"' where id='"+pid+"' and cid='"+cid+"'");
				System.out.println("list settling.......");
			}
			System.out.println("list settled");
			stm.executeUpdate("delete from cart where client_id='"+session.getAttribute("client")+"'");
			response.sendRedirect("MyOrders.jsp");
			System.out.println("cart deletion settled");
		} 
		catch ( SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally{
			try { if (rsp != null) rsp.close(); } catch (Exception e) {};
			try { if (rs != null) rs.close(); } catch (Exception e) {};
			try { if (st != null) st.close(); } catch (Exception e) {};
			try { if (stm != null) stm.close(); } catch (Exception e) {};
			try { if (con != null) con.close(); } catch (Exception e) {};
		}
	}

}
