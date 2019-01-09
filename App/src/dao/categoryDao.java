package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import beans.category;

public class categoryDao extends baseDao {
	public ArrayList<category> queryCategoryArticle(int id) throws SQLException{
		String sql="select id,category_id,title,content,hits,create_time,img_file from blog_article_detail where category_id=?";
	    ResultSet rs = this.executeQuery(sql,new Object[]{id});
	    ArrayList<category> list = new ArrayList<category>();
	    try{
	    	while(rs.next()){
	    		category article = new category(rs.getInt(1),rs.getInt(2),rs.getString(3),rs.getString(4),rs.getInt(5),rs.getInt(6),rs.getString(7));
	    		list.add(article);
	    	}
	    }finally{
	    	rs.close();
	    }
	    return list;
	    }
	public String[] queryCategoryName(int pid) throws SQLException{
		String sql="select pid from blog_article_category where id=?";
	    ResultSet rs = this.executeQuery(sql,new Object[]{pid});
	    String name[]= new String[2];
	    int id;
	    try{
	    	while(rs.next()){
	    		id = rs.getInt(1);
	    		if(id!=0){
	    			sql = "select b1.name, b2.name from blog_article_category b1,blog_article_category b2 where b1.id = ? AND b1.pid = b2.id;";
	    			rs = this.executeQuery(sql,new Object[]{pid});
	    			while(rs.next()){
	    				name[0] = rs.getString(2);
	    				name[1] = rs.getString(1);
	    			}
	    		}else{
	    			sql="select name from blog_article_category where id=?";
	    			rs = this.executeQuery(sql,new Object[]{pid});
	    			while(rs.next()){
	    				name[0] = rs.getString(1);
	    			}
	    		}
	    	}
	        
	    }finally{
	    	rs.close();
	    }
	    return name;
	    }
}
