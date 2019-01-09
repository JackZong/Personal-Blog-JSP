package admin ;
public class DAOFactory {
	public static IUserDAO getIUserDAOInstance(){
		return new UserDAOProxy() ;
	}
	public static ICategoryDAO getICategoryDAOInstance() throws Exception{
		return new categoryDAOProxy() ;
	}
	
}