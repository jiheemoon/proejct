package com.common.util;

public class Int32Util {
 
    public static boolean isNumeric(String string) {
     
        return (null == string) ? (false) : (string.trim().matches("-?\\d+(\\.\\d+)?"));        
    }
 
    public static int getInteger(String string) {
        
        return (getInteger(string, 0));
    }
        
    public static int getInteger(String string, int def) {
     
        int n = def;
        try {
            n = Integer.valueOf(string);
        } catch (NumberFormatException ex) {
            n = def;
        }
        return (n);      
    }
    
    /**
    * @param 반올림할 수(double)
    * @param 소수점 자릿수(0이상의 수)
    * @return 자릿수 만큼 반올림한 수(String)
    **/
    public static String toFixed(double num, int to){
        if (0 < to){
            return String.format("%."+to+"f", num);
        } else {
            return String.valueOf(Math.round(num));
        }
    }
}