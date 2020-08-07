package com.cognizant.truYum.VibhavProject.daoImpl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.cognizant.truYum.VibhavProject.dao.MenuItemDao;
import com.cognizant.truYum.VibhavProject.model.MenuItem;
import com.cognizant.truYum.VibhavProject.rowMapper.MenuItemRowMapper;
import com.cognizant.truYum.VibhavProject.util.DateUtil;


@Service
@Component
public class MenuItemDaoSqlImpl implements MenuItemDao {
	
	@Autowired
	DateUtil date;
	
	@Autowired
	JdbcTemplate jdbcTemplate;
	
	@Autowired
	MenuItem m;
	
	public MenuItemDaoSqlImpl() {
		// TODO Auto-generated constructor stub
	}
	
	
	

	@Override
	public List<MenuItem> getMenuItemListAdmin() {
		String query="select * from menu_item";
		List<MenuItem> menuItemList=jdbcTemplate.query(query, new MenuItemRowMapper());
		return menuItemList;
	}


	@Override
	public List<MenuItem> getMenuItemListCustomer() {
		
		String query="select * from menu_item where activeStatus = ? and dateOfLaunch <= ?";
		List<MenuItem> menuItemList=jdbcTemplate.query(query, new MenuItemRowMapper(),true,new Date());
		return menuItemList;
		
	}

	@Override
	public MenuItem getMenuItem(long menuItemId) {
		String query="select * from menu_item where id=?";
		MenuItem m=jdbcTemplate.queryForObject(query, new MenuItemRowMapper(),menuItemId);
		return m;
		
}

	@Override
	public int modifyMenuItem(MenuItem menuItem) {
		String query="update menu_item set name=?,price=?,activeStatus=?,dateOfLaunch=?,category=?,freeDelivery=? where id=?";
		int affected=jdbcTemplate.update(query,menuItem.getName(),menuItem.getPrice(),menuItem.isActiveStatus(),date.convertToDateString(menuItem.getDateOfLaunch()),menuItem.getCategory(),menuItem.isFreeDelivery(),menuItem.getId());
		
		return affected;
	}

    @Override
	public int addMenuItem(MenuItem menuItem) {
		String query="insert into menu_item (name,price,activeStatus,dateOfLaunch,category,freeDelivery) values(?,?,?,?,?,?)";
		int affected=jdbcTemplate.update(query,menuItem.getName(),menuItem.getPrice(),menuItem.isActiveStatus(),date.convertToDateString(menuItem.getDateOfLaunch()),menuItem.getCategory(),menuItem.isFreeDelivery());
		
		return affected;
	}




	@Override
	public int deleteMenuItem(long menuItemId) {
		String query="delete from menu_item where id=?";
		int affected=jdbcTemplate.update(query, menuItemId);
		
		return affected;
	}
	
	
	
}