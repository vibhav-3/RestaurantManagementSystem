
package com.cognizant.truYum.VibhavProject.daoImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.cognizant.truYum.VibhavProject.Security.GetUser;
import com.cognizant.truYum.VibhavProject.dao.CartDao;
import com.cognizant.truYum.VibhavProject.exception.CartEmptyException;
import com.cognizant.truYum.VibhavProject.model.Cart;
import com.cognizant.truYum.VibhavProject.model.MenuItem;
import com.cognizant.truYum.VibhavProject.rowMapper.CartRowMapper;
import com.cognizant.truYum.VibhavProject.rowMapper.MenuItemRowMapper;

import org.springframework.jdbc.core.JdbcTemplate;

@Repository
@Service
public class CartDaoSqlImpl implements CartDao {
	
	
	
	
	@Autowired
	JdbcTemplate jdbcTemplate;
	
	@Autowired
	GetUser user;
	

	@Autowired
	MenuItem m;
	
	public MenuItem getItemDetails(long menuItemId)
	{
		String query="select * from menu_item where id=?";
		MenuItem m=jdbcTemplate.queryForObject(query, new MenuItemRowMapper(),menuItemId);
		return m;
	}
	
	public List<Cart> getAllCartItems(long userId)throws CartEmptyException{
		String query="select * from cart_table where userid=?";
		List<Cart> cartList=jdbcTemplate.query(query,new CartRowMapper(),userId);
		return cartList;
		
	}
	
	public float getTotal(long userId) throws CartEmptyException {
		float total=0;
		try {
			String query="select sum(price) from cart_table where userid=?";
			 total=jdbcTemplate.queryForObject(query, new Object[] {userId},Float.class);
			
		} catch (NullPointerException n) {
			 total=0;
		}
		return total;
	}
	
	public int getUserId()
	{
		String query="select userid from users where username=?";
		int userid=(Integer) jdbcTemplate.queryForObject(query,new Object[] {user.getUserName()}, Integer.class);
		return userid;
	}
	
	public void addCartItem(long userId,long menuItemId) {
		MenuItem m=getItemDetails(menuItemId);
		
		String query="insert into cart_table (userid,id,name,price,category,freeDelivery) values(?,?,?,?,?,?)";
		jdbcTemplate.update(query,userId,menuItemId,m.getName(),m.getPrice(),m.getCategory(),m.isFreeDelivery());
	}
	
	public void removeCartItem(long userId,long menuItemId) {
		
		String query="delete from cart_table where userid=? and id=?";
		jdbcTemplate.update(query, userId,menuItemId);
		
	}


	
	
}
