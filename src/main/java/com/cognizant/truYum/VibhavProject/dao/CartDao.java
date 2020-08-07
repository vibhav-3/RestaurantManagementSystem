package com.cognizant.truYum.VibhavProject.dao;
import java.util.List;

import com.cognizant.truYum.VibhavProject.exception.CartEmptyException;
import com.cognizant.truYum.VibhavProject.model.Cart;
import com.cognizant.truYum.VibhavProject.model.MenuItem;


public interface CartDao {
	
	public void addCartItem(long userId, long menuItemId);
	
	public  List<Cart> getAllCartItems(long userId) throws CartEmptyException;
	
	public void removeCartItem(long userId,long menuItemId);
}