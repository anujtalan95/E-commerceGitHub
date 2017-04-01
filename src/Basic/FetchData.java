package Basic;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import Basic.ConnectionManager;
import Basic.FetchData;
import beansPackage.Plist;

public class FetchData {
	
	private static Connection con = null;
	
	public static ArrayList<Plist> getAllPlist() {
		con = ConnectionManager.getConnection();
		ArrayList<Plist> mobileList = new ArrayList<Plist>();
		try {
			Statement statement = con.createStatement();
			ResultSet rs = statement.executeQuery("select title,descrip,catg,price,stock from Plist,mobiles where plist.id=mobiles.id");
			
			while(rs.next()) {
				Plist mobile = new Plist();
				mobile.setTitle(rs.getString("title"));
				mobile.setDescrip(rs.getString("descrip"));
				mobile.setCatg(rs.getString("catg"));
				mobile.setPrice(rs.getInt("price"));
				mobile.setStock(rs.getInt("stock"));
				mobileList.add(mobile);
			}
			rs.close();
			statement.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		ArrayList<Plist> bookList = new ArrayList<Plist>();
		try {
			Statement statement = con.createStatement();
			ResultSet rs = statement.executeQuery("select title,descrip,catg,price,stock from Plist,books where plist.id=books.id");
			
			while(rs.next()) {
				Plist book = new Plist();
				book.setTitle(rs.getString("title"));
				book.setDescrip(rs.getString("descrip"));
				book.setCatg(rs.getString("catg"));
				book.setPrice(rs.getInt("price"));
				book.setStock(rs.getInt("stock"));
				bookList.add(book);
			}
			rs.close();
			statement.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		ArrayList<Plist> gamesList = new ArrayList<Plist>();
		try {
			Statement statement = con.createStatement();
			ResultSet rs = statement.executeQuery("select title,descrip,catg,price,stock from Plist,miscellaneous where plist.id=miscellaneous.id");
			
			while(rs.next()) {
				Plist games = new Plist();
				games.setTitle(rs.getString("title"));
				games.setDescrip(rs.getString("descrip"));
				games.setCatg(rs.getString("catg"));
				games.setPrice(rs.getInt("price"));
				games.setStock(rs.getInt("stock"));
				gamesList.add(games);
			}
			rs.close();
			statement.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		ArrayList<Plist> productList = new ArrayList<Plist>();
		productList.addAll(mobileList);
		productList.addAll(bookList);
		productList.addAll(gamesList);
		return productList;
	    
	} 
	
	
}
