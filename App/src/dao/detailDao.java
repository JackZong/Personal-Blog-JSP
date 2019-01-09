package dao;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import beans.detail;
public class detailDao extends baseDao{
	public ArrayList<detail> queryArticle(int id) throws SQLException{
		String sql="select id,title,content,create_time,hits,tags from blog_article_detail where id=?";
	    ResultSet rs = this.executeQuery(sql,new Object[]{id});
	    ArrayList<detail> list = new ArrayList<detail>();
	    try{
	    	while(rs.next()){
	    		detail article = new detail(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getInt(4),rs.getInt(5),rs.getString(6));
	    		list.add(article);
	    	}
	    }finally{
	    	rs.close();
	    }
	    return list;
	    }
}
