package dao;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import beans.category;
public class indexDao extends baseDao{
	
	public ArrayList<category> queryIndexArticle() throws SQLException{
		String sql="select id,category_id,title,content,hits,create_time,img_file from blog_article_detail where status=1 order by hits desc limit 5";
	    ResultSet rs = this.executeQuery(sql,new Object[]{});
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
	public String queryCategoryName(int pid) throws SQLException{
		String sql="select name from blog_article_category where id=?";
	    ResultSet rs = this.executeQuery(sql,new Object[]{pid});
	    String name ="";
	    try{
	    while(rs.next()){
	    	name = rs.getString(1);
	    }
	    }finally{
	    	rs.close();
	    }
	    return name;
	    }
	public ArrayList<category> queryAllArticle() throws SQLException{
		String sql="select id,category_id,title,content,hits,create_time,img_file from blog_article_detail where status=1 order by hits desc";
	    ResultSet rs = this.executeQuery(sql,new Object[]{});
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
	public boolean delArticle(int id) throws SQLException{
		String sql="delete from blog_article_detail where id=?";
	    int rs = this.executeUpdate(sql,new Object[]{id});
	    try{
	    System.out.println(rs);
	    }finally{
	    	
	    }
	    return true;
	    }
	public ArrayList<category> queryLastedArticle() throws SQLException{
		String sql="select id,category_id,title,content,hits,create_time,img_file from blog_article_detail where status=1 order by create_time desc limit 5";
	    ResultSet rs = this.executeQuery(sql,new Object[]{});
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
}
