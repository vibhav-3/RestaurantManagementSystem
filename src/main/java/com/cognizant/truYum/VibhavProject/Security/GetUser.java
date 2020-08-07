package com.cognizant.truYum.VibhavProject.Security;

import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Component;

@Component
public class GetUser {
	
	public String getUserName() {
	Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
	String currentUserName=null;
	if (!(authentication instanceof AnonymousAuthenticationToken)) {
	     currentUserName = authentication.getName();
	    
	}
	return currentUserName;
}
}
