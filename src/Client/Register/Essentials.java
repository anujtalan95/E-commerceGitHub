package Client.Register;

import Basic.ConnectionManager;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Register
 */
@WebServlet("/Register")
public class Essentials extends HttpServlet {
	private static final long serialVersionUID = 1L;   
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Essentials() {
        super();
        // TODO Auto-generated constructor stub
    }
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		Connection con=null;	//connection to the DB is declared
		Statement st=null;	//statement to be sent to query the DB is declared
		ResultSet rs=null;	//resultset to store values returned by the DB is declared
		try{
			String name=request.getParameter("name");	//name entered by user on the page is stored in a string
			String email=request.getParameter("email");	//email entered by user on the page is stored in a string
			String pwd=request.getParameter("pwd");	//password entered by user on the page is stored in a string
			con = ConnectionManager.getConnection();	//connection is initialized, port is given, DB name,password are given
			st= con.createStatement();	//statement is initialized to be queried with the DB
			
			int i=st.executeUpdate("insert into client_m(email,name,pwd) values ('"+email+"','"+name+"','"+pwd+"')");	//int i is used to execute statement, uploading email, name and password of the new user who is registering to the DB 
			  if(i>0)	//int i will be greater then 0 if the update to the DB was successful 
			  {
				  rs=st.executeQuery("select * from client_m where email='"+email+"'");	//query is executed and the results are stored in the resultset, which includes the all the data about the newly registered user account
				  rs.next();	//the first entry in the resultset is selected
				  HttpSession session = request.getSession();	//session for the user will be created that will keep the user logged in
                  session.setAttribute("client",rs.getInt(4));	//an attribute for the session is created and is given the value of the ID of the user from the DB
                  response.sendRedirect("index.jsp");	//user is directed to the next page
	          }
		}
		catch(Exception se)
        {
            se.printStackTrace();
        }
		finally{
			try { if (rs != null) rs.close(); } catch (Exception e) {};	//resultset is closed
			try { if (st != null) st.close(); } catch (Exception e) {};	//statement is closed
			try { if (con != null) con.close(); } catch (Exception e) {};	//connection is closed
		}
	}

}
