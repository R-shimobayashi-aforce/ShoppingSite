package jp.co.aforce.beans;

import java.io.Serializable;

public class Product implements Serializable {

	private String item_id;
	private String item_name;
	private int price;
	private String category;
	private String file;

	public String getItem_id() {
		return item_id;
	}

	public String getItem_name() {
		return item_name;
	}

	public int getPrice() {
		return price;
	}
	
	public String getCategory() {
		return category;
	}

	public String getFile() {
		return file;
	}

	public void setItem_id(String item_id) {
		this.item_id = item_id;
	}

	public void setItem_name(String item_name) {
		this.item_name = item_name;
	}

	public void setPrice(int price) {
		this.price = price;
	}
	
	public void setCategory(String category) {
		this.category = category;
	}
	
	public void setFile(String file) {
		this.file = file;
	}
}
