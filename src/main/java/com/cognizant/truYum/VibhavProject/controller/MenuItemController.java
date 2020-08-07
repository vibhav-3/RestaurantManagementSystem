package com.cognizant.truYum.VibhavProject.controller;


import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cognizant.truYum.VibhavProject.Security.GetUser;
import com.cognizant.truYum.VibhavProject.daoImpl.MenuItemDaoSqlImpl;
import com.cognizant.truYum.VibhavProject.model.MenuItem;


@Controller
public class MenuItemController {
	
	@Autowired
	GetUser get;

	@Autowired
	MenuItemDaoSqlImpl service;
	
	@Autowired
	MenuItemDaoSqlImpl mdaoimpl;
	
	@InitBinder
	public void initBinder(WebDataBinder binder)
	{
		SimpleDateFormat date=new SimpleDateFormat("yyyy/MM/dd");
		binder.registerCustomEditor(Date.class,new CustomDateEditor(date, false));
		
	}


	@RequestMapping("/admin-menu")
	public String getAdminPage(ModelMap model)
	{
		
		model.put("menuItemList", service.getMenuItemListAdmin());
		
		return "menu-item-list-admin";
	}
	
	@RequestMapping("/edit-menu")
	public String getEditMenuPage(ModelMap model)
	{
		model.addAttribute("menuItem",new MenuItem(0,"Enter Item Name",0,false,new Date(),"Enter Category",false));
		return "edit-menu-item";
	}
	
	@RequestMapping(value="/edit-menu",method=RequestMethod.POST)
	public String editMenuPage(@Valid MenuItem menuItem,BindingResult result,ModelMap model)
	{
		if(result.hasErrors())
		{
			return "edit-menu-item";
		}
		service.modifyMenuItem(menuItem);
		return "redirect:/admin-menu";
	}
	
	@RequestMapping("/add-menu")
	public String getAddMenuPage(ModelMap model)
	{
		model.addAttribute("menuItem",new MenuItem(0,"Enter Item Name",0,false,new Date(),"Enter Category",false));
		return "add-menu-item";
	}
	
	@RequestMapping(value="/add-menu",method=RequestMethod.POST)
	public String addMenuPage(@Valid MenuItem menuItem,BindingResult result1,ModelMap model)
	{
		if(result1.hasErrors())
		{
			return "add-menu-item";
		}
		service.addMenuItem(menuItem);
		return "redirect:/admin-menu";
	}
	
	@RequestMapping("/delete-menu")
	public String deleteMenu(@RequestParam long id)
	{
		service.deleteMenuItem(id);
		return "redirect:/admin-menu";
	}
	
	
	
	
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpServletRequest request,
			HttpServletResponse response) {
		
		Authentication authentication = SecurityContextHolder.getContext()
				.getAuthentication();
		
		if (authentication != null) {
			new SecurityContextLogoutHandler().logout(request, response,
					authentication);
		}

		return "redirect:/admin-menu";
	}
	
	

}
