package bean;

import java.io.Serializable;

public class MemberBean implements Serializable{

	/**
	 VO 자료형 작성
	 */
	private static final long serialVersionUID = 1L;
	
	private int id = 20211101;
	private String name = "장그레";
	
	public void setId(int id) {
		this.id = id;
	}
	
	public int getId() {
		return id;
	}
	public void setname(String name) {
		this.name =name;
	}
	
	public String getName() {
		return name;
	}

	
}
