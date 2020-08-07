package com.cognizant.truYum.VibhavProject.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cognizant.truYum.VibhavProject.Security.GetUser;
import com.cognizant.truYum.VibhavProject.daoImpl.CartDaoSqlImpl;
import com.cognizant.truYum.VibhavProject.daoImpl.MenuItemDaoSqlImpl;
import com.cognizant.truYum.VibhavProject.exception.CartEmptyException;

@Controller
public class CartController {

	@Autowired
	MenuItemDaoSqlImpl service;

	@Autowired
	CartDaoSqlImpl cartservice;
	
	@RequestMapping("/user-menu")
	public String getCustomerPage(ModelMap model)
	{
		model.put("menuItemList", service.getMenuItemListCustomer());
		return "menu-item-list-customer";
	}
	
	@RequestMapping("/cart-menu")
	public String getCartPage(ModelMap model) throws CartEmptyException
	{
		float tot=cartservice.getTotal(cartservice.getUserId());
		model.put("total", tot);
		model.put("cartList", cartservice.getAllCartItems(cartservice.getUserId()));
		return "cart";
	}
	
	
	
	@RequestMapping("/cart-add")
	public String getAddNotification(@RequestParam long id,ModelMap model)
	{
		model.put("menuItemList", service.getMenuItemListCustomer());
	 cartservice.addCartItem(cartservice.getUserId(), id);
		return "menu-item-list-customer-notification";
	}
	
	@RequestMapping("/cart-delete")
	public String deleteFromCart(@RequestParam long id)
	{
	 cartservice.removeCartItem(cartservice.getUserId(), id);
		return "redirect:/cart-menu";
	}
	
	
}
