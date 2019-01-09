package admin;
import beans.category;
import beans.nav;
public interface ICategoryDAO {
	public boolean doCreate(category ca) throws Exception;
	public boolean doDelete(int id) throws Exception;
	public category doEdit(int id) throws Exception;
	public boolean doUpdate(category ca) throws Exception;
	public boolean navUpdate(int id, int sta)throws Exception;
	public boolean addNav(nav n)throws Exception;
	public boolean delNav(int id)throws Exception;
}
