package com.cognizant.truYum.VibhavProject.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.stereotype.Component;

@Component
public class DateUtil {
	
	public static Date convertToDate(String date) throws ParseException {
		
		SimpleDateFormat d=new SimpleDateFormat("dd/mm/yyyy");
		
		Date fmt_date=d.parse(date);
		
		return fmt_date;
		
	}

	public String convertToDateString(Date date) {
SimpleDateFormat d=new SimpleDateFormat("yyyy/MM/dd");
		
		String fmt_date=d.format(date);
		
		return fmt_date;
	}

}
