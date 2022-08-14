package com.common.util;

import java.util.Locale;

import org.springframework.context.support.MessageSourceAccessor;

public class MessageUtils {
	
    private static MessageSourceAccessor msAcc = null;
	private static Locale locale = Locale.KOREA;
	
	public void setMessageSourceAccessor(MessageSourceAccessor msAcc) {
        MessageUtils.msAcc = msAcc;
	}
	
	public static String getMessage(String key) {
		return msAcc.getMessage(key, locale);
	}
	
//	public static String getMessage(String key, Object[] objs) {
//		return msAcc.getMessage(key, objs, locale);
//	}
//	
//	public static String getMessage(Locale locale, String key, Object[] objs) {
//        return msAcc.getMessage(key, objs, locale);
//    }
    	
}
