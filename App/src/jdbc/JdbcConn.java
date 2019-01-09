package jdbc;

import java.beans.Statement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
public class JdbcConn {
	private static final String DBDRIVER = "org.gjt.mm.mysql.Driver" ;
 	private static final String DBURL = "jdbc:mysql://localhost:3306/blog" ;
	private static final String DBUSER = "root" ;
	private static final String DBPASSWORD = "123" ;
	public static Connection conn;
	public static PreparedStatement ps;
	public static ResultSet re;
	public static Statement st;
	public static Connection getConnection(){
		try{
			Class.forName(DBDRIVER);
			conn = DriverManager.getConnection(DBURL,DBUSER,DBPASSWORD);
		}catch(Exception e){
			e.printStackTrace();
		}
		return conn;
	}
	
}
