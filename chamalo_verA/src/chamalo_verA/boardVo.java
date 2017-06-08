package chamalo_verA;

public class boardVo {
	private String id;
    private String name;
    private String subject;
    private String content;
    public boardVo(){}
    
    public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public boardVo(String id, String name, String subject,String content){
       
        this.id = id;
        this.name = name;
        this.subject = subject;
        this.content= content;
      
       
    }
}
