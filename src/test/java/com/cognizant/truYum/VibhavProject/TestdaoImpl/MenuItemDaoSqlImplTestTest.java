package com.cognizant.truYum.VibhavProject.TestdaoImpl;

import static org.junit.jupiter.api.Assertions.*;

import java.util.Date;
import java.util.List;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import com.cognizant.truYum.VibhavProject.daoImpl.MenuItemDaoSqlImpl;
import com.cognizant.truYum.VibhavProject.model.MenuItem;

class MenuItemDaoSqlImplTestTest {
	@Autowired
	JdbcTemplate jdbcTemplate;

	@Autowired
	MenuItemDaoSqlImpl test;

	@Autowired
	MenuItem m;

	@BeforeAll
	void add() {
		m.setId(1);
		m.setName("Burger");
		m.setPrice(99);
		m.setDateOfLaunch(new Date());
		m.setCategory("Main Course");
		m.setActiveStatus(true);
		m.setFreeDelivery(true);
	}

	@Test
	void testAddMenuItem() {
		assertEquals(1, test.addMenuItem(m));
	}

	@Test
	void testGetMenuItemListAdmin() {
		List<MenuItem> menuItemList = test.getMenuItemListAdmin();
		for (MenuItem m : menuItemList) {
			assertEquals(1, m.getId());
			assertEquals("Burger", m.getName());
			assertEquals(99, m.getPrice());
			assertEquals(new Date(), m.getDateOfLaunch());
			assertEquals("Main Course", m.getCategory());
			assertEquals(true, m.isActiveStatus());
			assertEquals(true, m.isFreeDelivery());
		}

	}

	@Test
	void testGetMenuItemListCustomer() {
		List<MenuItem> custMenuItemList = test.getMenuItemListAdmin();
		for (MenuItem m : custMenuItemList) {
			assertEquals(1, m.getId());
			assertEquals("Burger", m.getName());
			assertEquals(99, m.getPrice());
			assertEquals("Main Course", m.getCategory());
			assertEquals(true, m.isFreeDelivery());
		}
	}

	@Test
	void testGetMenuItem() {
		assertEquals(m, test.getMenuItem(1));
	}

	@Test
	void testModifyMenuItem() {
		assertEquals(1, test.modifyMenuItem(m));
	}

	@Test
	@AfterAll
	void testDeleteMenuItem() {
		assertEquals(1, test.deleteMenuItem(1));
	}

}
