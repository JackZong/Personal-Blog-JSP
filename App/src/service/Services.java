package service;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import beans.nav;
import jdbc.JdbcConn;

public class Services {
	private Connection dbconnection;
	private Statement st;
	private ResultSet rs;
	private String sql;
	private List list;
	
	private nav navs;
	
	public List getNav(){
		list = new ArrayList();
		dbconnection = JdbcConn.getConnection();
		try{
			st = (Statement)dbconnection.createStatement();
			sql = "SELECT id,pid,name FROM blog_article_category WHERE status=1";
			rs = st.executeQuery(sql);
			while(rs.next()){
				navs = new nav();
				navs.setId(rs.getInt(1));
				navs.setPid(rs.getInt(2));
				navs.setName(rs.getString(3));	
				list.add(navs);
			}
			
		}catch(SQLException e ){
			e.printStackTrace();
		}
		return list;
	}
}
