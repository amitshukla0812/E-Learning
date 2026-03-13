package conn;
import java.sql.*;


public class Conn {

	public static Connection con;
	public static Connection getCon()
	{
	
		
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
		  con = DriverManager.getConnection("jdbc:mysql://localhost:3306/11am","root","root");
			System.out.println("Connection is created");
		}
	        catch(Exception e){
		       e.printStackTrace();
	return null;
	        }
		return con;
		
		}

	
	



}
