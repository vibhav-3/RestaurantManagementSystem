package com.cognizant.truYum.VibhavProject.rowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.RowMapper;

import com.cognizant.truYum.VibhavProject.model.Cart;
import com.cognizant.truYum.VibhavProject.model.MenuItem;

public class CartRowMapper implements RowMapper<Cart> {

	@Autowired
	MenuItem m;

	@Override
	public Cart mapRow(ResultSet rs, int arg1) throws SQLException {
		Cart c=new Cart();
		c.setId(rs.getLong("id"));
		c.setUserid(rs.getInt("userid"));
		c.setName(rs.getString("name"));
		c.setCategory(rs.getString("category"));
		c.setPrice(rs.getDouble("price"));
		c.setFreeDelivery(rs.getBoolean("freeDelivery"));
		
		return c;
	}

}
