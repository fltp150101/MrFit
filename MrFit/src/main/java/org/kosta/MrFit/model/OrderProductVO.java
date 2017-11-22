package org.kosta.MrFit.model;

public class OrderProductVO {
	private String ono;
	private String pno;
	private String pdno;
	private String name;
	private int quantity;
	private int price;
	private String category;
	private String color_name;
	private String size_name;
	private String url;
	public OrderProductVO() {
		super();
	}
	public OrderProductVO(String ono, String pno, String pdno, String name, int quantity, int price, String category,
			String color_name, String size_name, String url) {
		super();
		this.ono = ono;
		this.pno = pno;
		this.pdno = pdno;
		this.name = name;
		this.quantity = quantity;
		this.price = price;
		this.category = category;
		this.color_name = color_name;
		this.size_name = size_name;
		this.url = url;
	}
	public String getPno() {
		return pno;
	}
	public void setPno(String pno) {
		this.pno = pno;
	}
	
	public String getPdno() {
		return pdno;
	}
	public void setPdno(String pdno) {
		this.pdno = pdno;
	}

	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}

	

	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	

	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getColor_name() {
		return color_name;
	}
	public void setColor_name(String color_name) {
		this.color_name = color_name;
	}
	public String getSize_name() {
		return size_name;
	}
	public void setSize_name(String size_name) {
		this.size_name = size_name;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	@Override
	public String toString() {
		return "OrderProductVO [ono=" + ono + ", pno=" + pno + ", pdno=" + pdno + ", name=" + name + ", quantity="
				+ quantity + ", price=" + price + ", category=" + category + ", color_name=" + color_name
				+ ", size_name=" + size_name + ", url=" + url + "]";

	}
	


	

}
