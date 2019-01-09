package beans;

public class nav {
	public nav(int id, int pid, String name,int status) {
		super();
		this.id = id;
		this.pid = pid;
		this.name = name;
		this.status = status;
	}
	private int id;
	private int pid;
	private String name;
	private int status;

	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public nav() {
		super();
	}
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
}
