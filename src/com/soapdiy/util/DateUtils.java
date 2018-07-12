package com.soapdiy.util;

import java.text.SimpleDateFormat;
import java.util.Date;

public class DateUtils {
	public static String getToday() {
		Date date = new Date();
		String pattern = "yyyy-MM-dd";
		SimpleDateFormat format = new SimpleDateFormat(pattern);
		String day = format.format(date);
		return day;
	}
}
