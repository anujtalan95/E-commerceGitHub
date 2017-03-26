package Admin.Products;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Basic.ConnectionManager;

/**
 * Servlet implementation class total
 */
@WebServlet("/total")
public class total extends HttpServlet {
	private static final long serialVersionUID = 1L;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public total() {
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
		
		HttpSession session = request.getSession();	//active sessions are checked
		if(session.getAttribute("admin")!=null){	//if admin session does not exist
												//link admin login page
		}
		else{	//if admin session exists
			Connection con=null;	//connection to the DB is declared
			Statement st=null;	//statement to be sent to query the DB is declared
			ResultSet rs=null;	//resultset to store values returned by the DB is declared
			ResultSet rs2=null;	//resultset to store values returned by the DB is declared
			try{
				String descrip=request.getParameter("descrip");	//description is entered by user on the page is stored in a string
				String name=request.getParameter("name");	//name of product entered by user on the page is stored in a string
				String brand=request.getParameter("brand");	//brand entered by user on the page is stored in a string
				String mtitle=request.getParameter("mtitle");	//meta title for SEO is entered by user on the page is stored in a string
				String mdescrip=request.getParameter("mdescrip");	//meta description for SEO is entered by user on the page is stored in a string
				String mkeyword=request.getParameter("mkeyword");	//meta keyword for SEO is entered by user on the page is stored in a string
				String rom=request.getParameter("rom");
				String color=request.getParameter("color");
				String specs=request.getParameter("specs");
				String price=request.getParameter("price");
				String photo=request.getParameter("photo");
				String stock=request.getParameter("stock");
				String catg=request.getParameter("catg");	//category of the product is entered by user on the page is stored in a string
				con = ConnectionManager.getConnection();	//connection is initialized, port is given, DB name,password are given
				st= con.createStatement();	//statement is initialized to be queried with the DB
				rs= st.executeQuery("select * from plist where title='"+name+"' and brand= '"+brand+"' and catg= '"+catg+"'");
				int i=0;
				int cid,id;
				if(rs.next()){
					System.out.println("first loop");
					id=rs.getInt(1);
					rs.close();
					rs = st.executeQuery("select IFNULL(max(cid),0) from "+catg+" where id='"+id+"'");
					rs.next();
					cid=rs.getInt(1)+1;
					
					if(catg.equals("Mobiles")){
						i=st.executeUpdate("insert into "+catg+"(id,cid,rom,color,specs,price,photo,stock) values ('"+id+"','"+cid+"','"+rom+"','"+color+"','"+specs+"','"+price+"','"+photo+"','"+stock+"')");	//int i is used to execute statement, uploading email, name and password of the new user who is registering to the DB
					}
					/*
					 * else if for other categories to be added accordingly
					 * 
					 */
				}
				else{
					
				i=st.executeUpdate("insert into plist(title,brand,descrip,mtitle,mdescrip,mkeywrd,catg) values ('"+name+"','"+brand+"','"+descrip+"','"+mtitle+"','"+mdescrip+"','"+mkeyword+"','"+catg+"')");	//int i is used to execute statement, uploading email, name and password of the new user who is registering to the DB
				rs2= st.executeQuery("select * from plist where title='"+name+"' and brand= '"+brand+"' and catg= '"+catg+"'");
				rs2.next();
				id=rs2.getInt(1);
				rs2.close();
				rs2 = st.executeQuery("select IFNULL(max(cid),0) from "+catg+" where id='"+id+"'");
				System.out.println("else loop");
				rs2.next();
				cid=rs2.getInt(1)+1;
				System.out.println(cid);
				if(catg.equals("Mobiles")){
					i=st.executeUpdate("insert into "+catg+"(id,cid,rom,color,specs,price,photo,stock) values ('"+id+"','"+cid+"','"+rom+"','"+color+"','"+specs+"','"+price+"','"+photo+"','"+stock+"')");	//int i is used to execute statement, uploading email, name and password of the new user who is registering to the DB
				}
				/*
				 * else if for other categories to be added accordingly
				 * 
				 */
				}
			}
			catch(Exception se){
				se.printStackTrace();
			}
			finally{
				try { if (rs2 != null) rs2.close(); } catch (Exception e) {};	//resultset is closed
				try { if (rs != null) rs.close(); } catch (Exception e) {};	//resultset is closed
				try { if (st != null) st.close(); } catch (Exception e) {};	//statement is closed
				try { if (con != null) con.close(); } catch (Exception e) {};	//connection is closed
			}
		
		}
	}

}
