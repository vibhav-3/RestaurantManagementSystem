package com.cognizant.truYum.VibhavProject.model;

import java.util.List;

import org.springframework.stereotype.Component;

@Component
public class Cart {
	
	private int userid;
	private long id;
	private String name;
	private String category;
	private double price;
	private boolean freeDelivery;
	
	
	public Cart() {
		super();
	}

	public Cart(int userid, long id, String name, String category, double price, boolean freeDelivery) {
		super();
		this.userid = userid;
		this.id = id;
		this.name = name;
		this.category = category;
		this.price = price;
		this.freeDelivery = freeDelivery;
	}



	public int getUserid() {
		return userid;
	}


	public void setUserid(int userid) {
		this.userid = userid;
	}


	public long getId() {
		return id;
	}


	public void setId(long id) {
		this.id = id;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getCategory() {
		return category;
	}


	public void setCategory(String category) {
		this.category = category;
	}


	public double getPrice() {
		return price;
	}


	public void setPrice(double price) {
		this.price = price;
	}


	public boolean isFreeDelivery() {
		return freeDelivery;
	}


	public void setFreeDelivery(boolean freeDelivery) {
		this.freeDelivery = freeDelivery;
	}


	
	@Override
	public String toString() {
		return "Cart [userid=" + userid + ", id=" + id + ", name=" + name + ", category=" + category + ", price="
				+ price + ", freeDelivery=" + freeDelivery + "]";
	}
	
	
}