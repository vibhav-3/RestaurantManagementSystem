package com.cognizant.truYum.VibhavProject.rowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.cognizant.truYum.VibhavProject.model.MenuItem;

public class MenuItemRowMapper implements RowMapper<MenuItem> {

	@Override
	public MenuItem mapRow(ResultSet rs, int arg1) throws SQLException {
		MenuItem m = new MenuItem();
		m.setId(rs.getLong("id"));
		m.setName(rs.getString("name"));
		m.setActiveStatus(rs.getBoolean("activeStatus"));
		m.setCategory(rs.getString("category"));
		m.setDateOfLaunch(rs.getDate("dateOfLaunch"));
		m.setFreeDelivery(rs.getBoolean("freeDelivery"));
		m.setPrice(rs.getFloat("price"));

		return m;
	}

}
