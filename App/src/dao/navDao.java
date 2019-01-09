package dao;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import beans.nav;
public class navDao extends baseDao {
	public ArrayList<nav> queryRootMenu() throws SQLException{
		
		return queryMenuByPar(0);
	}
	public ArrayList<nav> queryMenuByPar(int parentId) throws SQLException{
		String sql="select id,pid,name,status from blog_article_category where pid=?";
	    ResultSet rs = this.executeQuery(sql,new Object[]{parentId});
	    ArrayList<nav> list = new ArrayList<nav>();
	    try{
	    	while(rs.next()){
	    		nav navs = new nav(rs.getInt(1),rs.getInt(2),rs.getString(3),rs.getInt(4));
	    		list.add(navs);
	    	}
	    }finally{
	    	rs.close();
	    }
	    return list;
	    }
	public ArrayList<nav> queryRootMenuA() throws SQLException{
			
			return queryMenuByParA(0);
		}
	public ArrayList<nav> queryMenuByParA(int parentId) throws SQLException{
		String sql="select id,pid,name,status from blog_article_category where pid=? and status=1";
	    ResultSet rs = this.executeQuery(sql,new Object[]{parentId});
	    ArrayList<nav> list = new ArrayList<nav>();
	    try{
	    	while(rs.next()){
	    		nav navs = new nav(rs.getInt(1),rs.getInt(2),rs.getString(3),rs.getInt(4));
	    		list.add(navs);
	    	}
	    }finally{
	    	rs.close();
	    }
	    return list;
	    }
	}

