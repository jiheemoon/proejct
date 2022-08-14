package com.common.util;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Locale;

public class StringUtil {
    
    public static final String Empty = "";
    
    public static boolean isEquals(String lhs, String rhs) {

        if (null == lhs && null == rhs) return (true);
        if (null == lhs && null != rhs) return (false);
        if (null != lhs && null == rhs) return (false);
        
        return (lhs.equals(rhs));
    }
    
    public static boolean isEqualsIgnoreCase(String lhs, String rhs) {

        if (null == lhs && null == rhs) return (true);
        if (null == lhs && null != rhs) return (false);
        if (null != lhs && null == rhs) return (false);
        
        return (lhs.equalsIgnoreCase(rhs));
    }
    
    public static boolean isEmpty(String string) {
     
        return (null == string) ? (true) : (0 >= string.trim().length());
    }
 
    public static boolean isNumeric(String string) {
     
        return isEmpty(string) ? (false) : (string.trim().matches("-?\\d+(\\.\\d+)?"));        
    }
    
    public static String getString(String string) {
     
        return getString(string, "");
    }

    public static String getString(String string, String defaultVal) {
     
        return isEmpty(string) ? (defaultVal) : (string.trim());
    }
    
    public static String toLowerCase(String string) {
        
        return (string == null) ? ("") : string.toLowerCase();
    }
    
    public static String toUpperCase(String string) {
        
        return (string == null) ? ("") : string.toUpperCase();
    }
    
    public static String getTimeStamp() {

        String rtnStr = null;
        try {
            // 문자열로 변환하기 위한 패턴 설정(년도-월-일 시:분:초:초(자정이후 초))
            String pattern = "yyyyMMddHHmmssSSS";
            SimpleDateFormat sdfCurrent = new SimpleDateFormat(pattern, Locale.KOREA);
            Timestamp ts = new Timestamp(System.currentTimeMillis());
            //
            rtnStr = sdfCurrent.format(ts.getTime());
            //
        } catch (Exception e) {
            e.printStackTrace();
        }

        return rtnStr;
    }
    
    public static String getTimeString() {

        String rtnStr = null;
        try {
            // 문자열로 변환하기 위한 패턴 설정(년도-월-일 시:분:초:초(자정이후 초))
            String pattern = "yyyyMMddHHmmss";
            SimpleDateFormat sdfCurrent = new SimpleDateFormat(pattern, Locale.KOREA);
            Timestamp ts = new Timestamp(System.currentTimeMillis());
            //
            rtnStr = sdfCurrent.format(ts.getTime());
            //
        } catch (Exception e) {
            e.printStackTrace();
        }

        return rtnStr;
    }
    
    public static String[] split(String source, String separator) throws NullPointerException {
        
        String[] returnVal = null;
        int cnt = 1;

        int index = source.indexOf(separator);
        int index0 = 0;
        while (index >= 0) {
            cnt++;
            index = source.indexOf(separator, index + 1);
        }
        returnVal = new String[cnt];
        cnt = 0;
        index = source.indexOf(separator);
        while (index >= 0) {
            returnVal[cnt] = source.substring(index0, index);
            index0 = index + 1;
            index = source.indexOf(separator, index + 1);
            cnt++;
        }
        returnVal[cnt] = source.substring(index0);

        return returnVal;
    }
    
    public static String getHashCode(String string) {

        return (getHashCode(string, "SHA-256"));
    }

    public static String getHashCode(String string, String algorithm) {

        String hashCode = "";
        try {
            if (!isEmpty(string)) {
                MessageDigest md = MessageDigest.getInstance(algorithm);
                byte hash[] = md.digest(string.getBytes());
                StringBuffer sb = new StringBuffer();
                for (int n = 0; n < hash.length; n++) {
                    sb.append(Integer.toString((hash[n] & 0xff) + 0x100, 16).substring(1));
                }
                hashCode = sb.toString();
            }
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            //
        }
        return hashCode;
    }
    
    public static String getRandomString(int length) {

        String DATA = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
        length = Math.max(length, 4);
        SecureRandom random = new SecureRandom();
        StringBuilder sb = new StringBuilder(length);
        for (int n = 0; n < length; n++) {
            sb.append(DATA.charAt(random.nextInt(DATA.length())));
        }
        return sb.toString();
    }
}