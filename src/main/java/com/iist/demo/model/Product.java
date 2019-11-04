package com.iist.demo.model;

import java.math.BigDecimal;

public class Product {

	private String id;
	private BigDecimal price;
	private String regUser;
	private String regDttm;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public BigDecimal getPrice() {
		return price;
	}

	public void setPrice(BigDecimal price) {
		this.price = price;
	}

	public String getRegUser() {
		return regUser;
	}

	public void setRegUser(String regUser) {
		this.regUser = regUser;
	}

	public String getRegDttm() {
		return regDttm;
	}

	public void setRegDttm(String regDttm) {
		this.regDttm = regDttm;
	}

}
