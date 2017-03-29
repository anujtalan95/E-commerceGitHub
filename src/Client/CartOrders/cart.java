package Client.CartOrders;

import java.io.IOException;
import java.sql.Connection;
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
				String pid = request.getParameter("pid");
				String cid = request.getParameter("cid");
				String catg = request.getParameter("catg");
				con = ConnectionManager.getConnection();
				st= con.createStatement();
				rs=st.executeQuery("select * from cart where client_id='"+session.getAttribute("client")+"' and product_id='"+pid+"' and cid='"+cid+"'"); 
				if(rs.next()){ 
						st.executeUpdate("update cart set quantity='"+(rs.getInt(3)+1)+"' where client_id='"+rs.getInt(1)+"' and product_id='"+rs.getInt(2)+"' and cid='"+cid+"'"); 	//or insert prod id
						rsp= st.executeQuery("select * from "+catg+" where product_id='"+pid+"' and cid ='"+cid+"'");
						rsp.next();
						st.executeUpdate("update cart set sub_total='"+(rs.getInt("quantity")*rsp.getInt("price"))+"' where client_id='"+session.getAttribute("client")+"' and product_id='"+pid+"' and  cid='"+cid+"'");
						rs.close();
						rsp.close();
				}
				else{ 
					rs.close();
					rs= st.executeQuery("select * from plist where pid='"+pid+"'");
					rsp= st.executeQuery("select * from "+catg+" where pid='"+pid+"' and cid='"+cid+"'");
					rsp.next();
					rs.next();
					st.executeUpdate("insert into cart(client_id,product_id,cid,quantity,sub_total) values ('"+session.getAttribute("client")+"','"+pid+"','"+cid+"''"+1+"','"+rsp.getInt("price")+"')"); 
				} 
			} 
			catch (SQLException e) {
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
