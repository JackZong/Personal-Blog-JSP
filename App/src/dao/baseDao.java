package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import jdbc.JdbcConn;

public class baseDao {
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
	public ResultSet executeQuery(String sql,Object[] params) throws SQLException{
		Connection conn = getConnection();
		PreparedStatement stmt = conn.prepareStatement(sql);
		if(params !=null && params.length>0){
			for(int i = 0;i<params.length;i++){
				stmt.setObject(i+1,params[i]);
			}
		}
		return stmt.executeQuery();
	} 
	public int executeUpdate(String sql,Object[] params) throws SQLException{
		Connection conn = getConnection();
		PreparedStatement stmt = conn.prepareStatement(sql);
		if(params !=null && params.length>0){
			for(int i = 0;i<params.length;i++){
				stmt.setObject(i+1,params[i]);
			}
		}
		return stmt.executeUpdate();
	} 
}
