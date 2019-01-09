package beans;

public class detail {
	private int id;
	private String title;
	private String content;
	private int create_time;
	private int hits;
	private String tags;
	
	public detail() {
		super();
	}
	public detail(int id, String title,String content, int create_time, int hits, String tags) {
		super();
		this.id = id;
		this.title = title;
		this.content = content;
		this.create_time = create_time;
		this.hits = hits;
		this.tags = tags;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public int getCreate_time() {
		return create_time;
	}
	public void setCreate_time(int create_time) {
		this.create_time = create_time;
	}
	public int getHits() {
		return hits;
	}
	public void setHits(int hits) {
		this.hits = hits;
	}
	public String getTags() {
		return tags;
	}
	public void setTags(String tags) {
		this.tags = tags;
	}
}
