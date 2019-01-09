package admin;
import java.util.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import beans.category;
import beans.nav;
public class categoryDAOImpl implements ICategoryDAO{
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	public categoryDAOImpl(Connection conn){
		this.conn = conn;
		
	}
	public boolean doCreate(category cat) throws Exception{
		boolean flag = false ;
		String sql = "INSERT INTO blog_article_detail(category_id,title,content,img_file,tags,create_time) VALUES (?,?,?,?,?,?)" ;
		this.pstmt = this.conn.prepareStatement(sql) ;
		this.pstmt.setInt(1,cat.getCategory_id()) ;
		this.pstmt.setString(2,cat.getTitle()) ;
		this.pstmt.setString(3,cat.getContent()) ;
		this.pstmt.setString(4,cat.getImg_file()) ;
		this.pstmt.setString(5,cat.getTags()) ;
		this.pstmt.setInt(6,cat.getCreate_time()) ;
		if(this.pstmt.executeUpdate() > 0){
			flag = true ;
		}
		this.pstmt.close() ;
		return flag ;
	}
	public boolean doDelete(int id) throws Exception{
		boolean flag = false ;
		String sql = "delete from blog_article_detail where id = ?" ;
		this.pstmt = this.conn.prepareStatement(sql) ;
		this.pstmt.setInt(1,id) ;
		if(this.pstmt.executeUpdate() > 0){
			flag = true ;
		}
		this.pstmt.close() ;
		return flag ;
	}
	public category doEdit(int id) throws Exception{
		category cat = null;
		String sql = "select content,title from blog_article_detail where id = ?";
		this.pstmt = this.conn.prepareStatement(sql);
		this.pstmt.setInt(1,id);
		ResultSet rs = this.pstmt.executeQuery();
		if(rs.next()){
			cat = new category();
			cat.setContent(rs.getString(1));
			cat.setTitle(rs.getString(2));
		}
		this.pstmt.close();
		return cat;
	}
	public boolean doUpdate(category cat) throws Exception{
		boolean flag = false ;
		String sql = "update blog_article_detail set content =?,title=? where id =?";
		this.pstmt = this.conn.prepareStatement(sql) ;
		this.pstmt.setString(1,cat.getContent());
		this.pstmt.setString(2,cat.getTitle());
		this.pstmt.setInt(3,cat.getId());
		if(this.pstmt.executeUpdate() > 0){
			flag = true ;
		}
		this.pstmt.close() ;
		return flag ;
	}
	public boolean navUpdate(int id,int sta) throws Exception{
		boolean flag = false ;
		String sql = "update blog_article_category set status =? where id =?";
		this.pstmt = this.conn.prepareStatement(sql) ;
		this.pstmt.setInt(1,sta);
		this.pstmt.setInt(2,id);
		if(this.pstmt.executeUpdate() > 0){
			flag = true ;
		}
		this.pstmt.close() ;
		return flag ;
	}
	public boolean addNav(nav n) throws Exception{
		boolean flag = false ;
		String sql = "INSERT INTO blog_article_category(name,pid) VALUES (?,?)" ;
		this.pstmt = this.conn.prepareStatement(sql) ;
		this.pstmt.setString(1,n.getName());
		this.pstmt.setInt(2,n.getPid());
		if(this.pstmt.executeUpdate() > 0){
			flag = true ;
		}
		this.pstmt.close() ;
		return flag ;
	}
	public boolean delNav(int id) throws Exception{
		boolean flag = false ;
		String sql = "delete from blog_article_category where id = ?" ;
		this.pstmt = this.conn.prepareStatement(sql) ;
		this.pstmt.setInt(1,id) ;
		if(this.pstmt.executeUpdate() > 0){
			flag = true ;
		}
		this.pstmt.close() ;
		return flag ;
	}
}




