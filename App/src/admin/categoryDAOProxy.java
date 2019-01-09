package admin;
import beans.category;
import beans.nav;
public class categoryDAOProxy implements ICategoryDAO{
	private DatabaseConnection dbc = null ;
	private ICategoryDAO dao = null ;
	public categoryDAOProxy(){
		try{
			this.dbc = new DatabaseConnection() ;
		}catch(Exception e){
			e.printStackTrace() ;
		}
		this.dao = new categoryDAOImpl(dbc.getConnection()) ;
	}
	@Override
	public boolean doCreate(category ca) throws Exception {
		boolean flag = false ;
		try{
			flag = this.dao.doCreate(ca) ;
		}catch(Exception e){
			throw e ;
		}finally{
			this.dbc.close() ;
		}
		return flag ;
	}
	
	@Override
	public boolean doDelete(int id) throws Exception {
		boolean flag = false ;
		try{
			flag = this.dao.doDelete(id) ;	
		}catch(Exception e){
			throw e ;
		}finally{
			this.dbc.close() ;
		}
		return flag ;
	}
	@Override
	public category doEdit(int id) throws Exception {
		category cat = null;
		try{
			cat = this.dao.doEdit(id) ;	
		}catch(Exception e){
			throw e ;
		}finally{
			this.dbc.close() ;
		}
		return cat;
	}
	@Override
	public boolean doUpdate(category ca) throws Exception {
		boolean flag = false ;
		try{
			flag = this.dao.doUpdate(ca) ;
		}catch(Exception e){
			throw e ;
		}finally{
			this.dbc.close() ;
		}
		return flag ;
	}
	@Override
	public boolean navUpdate(int id, int sta) throws Exception {
		boolean flag = false ;
		try{
			flag = this.dao.navUpdate(id,sta) ;	
		}catch(Exception e){
			throw e ;
		}finally{
			this.dbc.close() ;
		}
		return flag ;
	}
	@Override
	public boolean addNav(nav n) throws Exception {
		boolean flag = false ;
		try{
			flag = this.dao.addNav(n) ;
		}catch(Exception e){
			throw e ;
		}finally{
			this.dbc.close() ;
		}
		return flag ;
	}
	public boolean delNav(int id) throws Exception {
		boolean flag = false ;
		try{
			flag = this.dao.delNav(id) ;	
		}catch(Exception e){
			throw e ;
		}finally{
			this.dbc.close() ;
		}
		return flag ;
	}
}
