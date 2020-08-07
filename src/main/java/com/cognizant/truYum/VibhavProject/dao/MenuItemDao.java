package com.cognizant.truYum.VibhavProject.dao;

import java.util.List;

import org.springframework.stereotype.Component;

import com.cognizant.truYum.VibhavProject.model.MenuItem;


@Component
public interface MenuItemDao {
	public List<MenuItem> getMenuItemListAdmin();
	
	public List<MenuItem> getMenuItemListCustomer(); 
	
	public int modifyMenuItem(MenuItem menuItem);
	
	public int addMenuItem(MenuItem menuItem);
	
	public int deleteMenuItem(long menuItemId);
	
	public MenuItem getMenuItem(long menuItemId);
}
