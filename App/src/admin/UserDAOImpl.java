package admin ;

import java.sql.* ;

import beans.User;
public class UserDAOImpl implements IUserDAO {
	private Connection conn = null ;
	private PreparedStatement pstmt = null ;
	public UserDAOImpl(Connection conn){
		this.conn = conn ;
	}
	public boolean findLogin(User user) throws Exception{
		boolean flag = false ;
		String sql = "SELECT name FROM blog_user WHERE user_name=? AND password=?" ;
		this.pstmt = this.conn.prepareStatement(sql) ;
		this.pstmt.setString(1,user.getName()) ;//参数1
		this.pstmt.setString(2,user.getPassword()) ;//参数2
		ResultSet rs = this.pstmt.executeQuery() ;
		if(rs.next()){
			flag = true ;
		}
		this.pstmt.close() ;
		return flag ;
	}
} 