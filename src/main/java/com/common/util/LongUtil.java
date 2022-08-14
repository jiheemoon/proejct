package com.common.util;

public class LongUtil {
 
    public static long getLong(String string) {
        
        return (getLong(string, 0L));
    }
        
    public static long getLong(String string, long def) {
     
        long l = def;
        try {
            l = Long.valueOf(string);
        } catch (NumberFormatException ex) {
            l = def;
        }
        return (l);      
    }
}