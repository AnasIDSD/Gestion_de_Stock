package Bean;

import java.io.Serializable;

public class category implements Serializable {
	private static final long serialVersionUID = 1L;
	protected int category_id;
	protected String category_name;
	
	public category(int category_id, String category_name) {
		
		super();
		this.category_id = category_id;
		this.category_name = category_name;
	}
	
	public int getCategory_id() {
		return category_id;
	}
	
	public void setCategory_id(int category_id) {
		this.category_id = category_id;
	}
	
	public String getCategory_name() {
		return category_name;
	}
	
	public void setCategory_name(String category_name) {
		this.category_name = category_name;
	}
	
	

}