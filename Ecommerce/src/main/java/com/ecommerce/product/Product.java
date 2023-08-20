package com.ecommerce.product;

import java.util.List;

public class Product {
	
	private String productName;
	private String productPrice;
	private String productType;
	
	
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getProductPrice() {
		return productPrice;
	}
	public void setProductPrice(String productPrice) {
		this.productPrice = productPrice;
	}
	public String getProductType() {
		return productType;
	}
	public void setProductType(String productType) {
		this.productType = productType;
	}
	

	public Product(String pName, String pPrice, String pType) {
		this.productName=pName;
		this.productPrice=pPrice;
		this.productType=pType;
	}
	

}
