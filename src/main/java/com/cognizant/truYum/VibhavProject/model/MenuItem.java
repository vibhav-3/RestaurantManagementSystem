package com.cognizant.truYum.VibhavProject.model;

import java.util.Date;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.springframework.stereotype.Component;

@Component
public class MenuItem {
	
	
	private long id;
	
	@NotEmpty(message="Title can't be empty.")
	@Size(min=2, max=65, message="Title should be between 2 to 65 characters.")
    private String name;
	
	@NotNull(message="Price is required")
	private float price;
	
	
	private boolean activeStatus;
	

	private Date dateOfLaunch;
	
	private String category;
	
	private boolean freeDelivery;
	
	
	
	public MenuItem(long id, String name, float price, boolean activeStatus, Date dateOfLaunch, String category,
			boolean freeDelivery) {
		super();
		this.id = id;
		this.name = name;
		this.price = price;
		this.activeStatus = activeStatus;
		this.dateOfLaunch = dateOfLaunch;
		this.category = category;
		this.freeDelivery = freeDelivery;
	}


	






	public MenuItem() {
		// TODO Auto-generated constructor stub
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




	public float getPrice() {
		return price;
	}




	public void setPrice(float price) {
		this.price = price;
	}




	public boolean isActiveStatus() {
		return activeStatus;
	}




	public void setActiveStatus(boolean activeStatus) {
		this.activeStatus = activeStatus;
	}




	public Date getDateOfLaunch() {
		return dateOfLaunch;
	}
	

	public void setDateOfLaunch(Date dateOfLaunch) {
		this.dateOfLaunch = dateOfLaunch;
	}




	public String getCategory() {
		return category;
	}




	public void setCategory(String category) {
		this.category = category;
	}




	public boolean isFreeDelivery() {
		return freeDelivery;
	}




	public void setFreeDelivery(boolean freeDelivery) {
		this.freeDelivery = freeDelivery;
	}




	@Override
	public String toString() {
		return "MenuItem [id=" + id + ", name=" + name + ", price=" + price + ", activeStatus=" + activeStatus
				+ ", dateOfLaunch=" + dateOfLaunch + ", category=" + category + ", freeDelivery=" + freeDelivery + "]";
	}
	
	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + (activeStatus ? 1231 : 1237);
		result = prime * result + ((category == null) ? 0 : category.hashCode());
		result = prime * result + ((dateOfLaunch == null) ? 0 : dateOfLaunch.hashCode());
		result = prime * result + (freeDelivery ? 1231 : 1237);
		result = prime * result + (int) (id ^ (id >>> 32));
		result = prime * result + ((name == null) ? 0 : name.hashCode());
		result = prime * result + Float.floatToIntBits(price);
		return result;
	}




	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		MenuItem other = (MenuItem) obj;
		if (activeStatus != other.activeStatus)
			return false;
		if (category == null) {
			if (other.category != null)
				return false;
		} else if (!category.equals(other.category))
			return false;
		if (dateOfLaunch == null) {
			if (other.dateOfLaunch != null)
				return false;
		} else if (!dateOfLaunch.equals(other.dateOfLaunch))
			return false;
		if (freeDelivery != other.freeDelivery)
			return false;
		if (id != other.id)
			return false;
		if (name == null) {
			if (other.name != null)
				return false;
		} else if (!name.equals(other.name))
			return false;
		if (Float.floatToIntBits(price) != Float.floatToIntBits(other.price))
			return false;
		return true;
	}



	
	
}