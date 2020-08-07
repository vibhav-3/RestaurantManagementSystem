package com.cognizant.truYum.VibhavProject.Security;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.password.NoOpPasswordEncoder;

@EnableWebSecurity
public class SecurityConfiguration extends WebSecurityConfigurerAdapter {

	@Autowired
	DataSource dataSource;
	
	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception
	{
		auth.jdbcAuthentication()
		    .dataSource(dataSource)
		    .usersByUsernameQuery("select username,password,enabled from users where username=?")
		    .authoritiesByUsernameQuery("select username,authority from authorities where username=?")
		    .passwordEncoder(NoOpPasswordEncoder.getInstance());
	}
	
	@Override
	protected void configure(HttpSecurity http) throws Exception
	{
		http.authorizeRequests()
		    .antMatchers("/admin-menu").hasRole("ADMIN")
		    .antMatchers("/user-menu").hasAnyRole("ADMIN","USER")
		    .and().formLogin();
	}
	
	
}
