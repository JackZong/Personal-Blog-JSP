package admin ;
import java.io.* ;
import java.util.* ;

import javax.servlet.* ;
import javax.servlet.http.* ;

import beans.User;
public class LoginServlet extends HttpServlet {
	public void doGet(HttpServletRequest req,HttpServletResponse resp) throws ServletException,IOException{
		String rightPath = "articleAll.jsp" ;//登陆后跳转到这个页面
		String userid = req.getParameter("user_name") ;
		String userpass = req.getParameter("password") ;
		List<String> info = new ArrayList<String>() ;	
		int flag = 0;
		boolean a;
		if(userid==null || "".equals(userid)){
			info.add("用户名不为空") ;
		}
		if(userpass==null || "".equals(userpass)){
			info.add("密码不为空") ;
		}
		if(info.size()==0){
			User user = new User() ;
			user.setName(userid) ;
			user.setPassword(userpass) ;
			try{
				if(DAOFactory.getIUserDAOInstance().findLogin(user)){
					info.add("" + user.getName() + "") ;
					flag = 1;
				} else {
					info.add("密码或用户名错误") ;
					flag = 0;
				}
			}catch(Exception e){
				e.printStackTrace() ;
			}
		}
		if(flag==1){
			req.getRequestDispatcher(rightPath).forward(req,resp) ;
		}else{
			req.setAttribute("info",info) ;
			req.getRequestDispatcher("login").forward(req,resp) ;
		}
		
	}
	public void doPost(HttpServletRequest req,HttpServletResponse resp) throws ServletException,IOException{
		this.doGet(req,resp) ;
	}

}
