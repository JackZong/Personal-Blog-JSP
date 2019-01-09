package beans;

public class category {
	private int id;
	private int category_id;
	private String title;
	private String content;
	private int hits;
	private int create_time;
	private String img_file;
	private String tags;
	public category(int id,int category_id, String title, String content, int hits,
			int create_time,String img_file) {
		super();
		this.id=id;
		this.category_id = category_id;
		this.title = title;
		this.content = content;
		this.hits = hits;
		this.create_time = create_time;
		this.img_file =img_file;
	}
	public category() {
		super();
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getCategory_id() {
		return category_id;
	}
	public void setCategory_id(int category_id) {
		this.category_id = category_id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getHits() {
		return hits;
	}
	public void setHits(int hits) {
		this.hits = hits;
	}
	public int getCreate_time() {
		return create_time;
	}
	public void setCreate_time(int create_time) {
		this.create_time = create_time;
	}
	public String getImg_file() {
		return img_file;
	}
	public void setImg_file(String img_file) {
		this.img_file = img_file;
	}
	public String getTags() {
		return tags;
	}
	public void setTags(String tags) {
		this.tags = tags;
	}
}
