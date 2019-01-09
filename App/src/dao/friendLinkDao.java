package dao;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import beans.friendLink;

public class friendLinkDao extends baseDao{
	public ArrayList<friendLink> queryAllLink() throws SQLException{
		String sql="select id,name,url,status from blog_friend_link";
	    ResultSet rs = this.executeQuery(sql,new Object[]{});
	    ArrayList<friendLink> list = new ArrayList<friendLink>();
	    try{
	    	while(rs.next()){
	    		friendLink link = new friendLink(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getInt(4));
	    		list.add(link);
	    	}
	    }finally{
	    	rs.close();
	    }
	    return list;
	    }
}
