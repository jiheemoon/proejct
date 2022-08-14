package com.common.util;

import java.util.regex.Pattern;

/**
 * 교차접속 스크립트 공격 취약성 방지(파라미터 문자열 교체)
 */
public class WebUtil {

    public static String clearXSSMinimum(String value) {
        
        if (!StringUtil.isEmpty(value)) {
            try {
                return value.replaceAll("&", "&amp;")
                    .replaceAll("<", "&lt;")
                    .replaceAll(">", "&gt;")
                    .replaceAll("\"", "&#34;")
                    .replaceAll("\'", "&#39;")
                    .replaceAll(".", "&#46;")
                    .replaceAll("%2E", "&#46;")
                    .replaceAll("%2F", "&#47;");
            } catch (Exception ex) {
                //
            }
        }
        return (StringUtil.Empty);
    }

    public static String clearXSSMaximum(String value) {

        if (!StringUtil.isEmpty(value)) {
            try {
                return clearXSSMinimum(value)
                    .replaceAll("%00", null)
                    .replaceAll("%", "&#37;")
                    .replaceAll("\\.\\./", "")
                    .replaceAll("\\.\\.\\\\", "")
                    .replaceAll("\\./", "")
                    .replaceAll("%2F", "");
            } catch (Exception ex) {
                //
            }
        }
        return (StringUtil.Empty);
    }

    public static String filePathBlackList(String value) {
        
        if (!StringUtil.isEmpty(value)) {
            try {
                return (value.replaceAll("\\.\\.", ""));
            } catch (Exception ex) {
                //
            }
        }
        return (StringUtil.Empty);
    }

    /**
     * 행안부 보안취약점 점검 조치 방안.
     *
     * @param value
     * @return
     */
    public static String filePathReplaceAll(String value) {

        if (!StringUtil.isEmpty(value)) {
            try {
                return value.replaceAll("/", "")
                    .replaceAll("\\", "")
                    .replaceAll("\\.\\.", "")
                    .replaceAll("&", "");
            } catch (Exception ex) {
                //
            }
        }
        return (StringUtil.Empty);
    }
    
    public static String fileInjectPathReplaceAll(String value) {

        if (!StringUtil.isEmpty(value)) {
            try {
                return value.replaceAll("/", "")
                    .replaceAll("\\..", "")
                    .replaceAll("\\\\", "")
                    .replaceAll("&", "");
            } catch (Exception ex) {
                //
            }
        }
        return (StringUtil.Empty);
    }   

    public static String filePathWhiteList(String value) {
        
        return value;
    }

     public static boolean isIPAddress(String str) {

         try {
             return Pattern.compile("\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}").matcher(str).matches();
         } catch (Exception ex) {
             //
         }
         return (false);
    }

     public static String removeCRLF(String parameter) {
         
         try {
             return parameter.replaceAll("\r", "").replaceAll("\n", "");
         } catch (Exception ex) {
             //
         }
         return (StringUtil.Empty);
     }

     public static String removeSQLInjectionRisk(String parameter) {
         
         try {
             return parameter.replaceAll("\\p{Space}", "").replaceAll("\\*", "").replaceAll("%", "").replaceAll(";", "").replaceAll("-", "").replaceAll("\\+", "").replaceAll(",", "");
         } catch (Exception ex) {
             //
         }
         return (StringUtil.Empty);
     }

     public static String removeOSCmdRisk(String parameter) {
         
         try {
             return parameter.replaceAll("\\p{Space}", "").replaceAll("\\*", "").replaceAll("|", "").replaceAll(";", "");
         } catch (Exception ex) {
             //
         }
         return (StringUtil.Empty);
     }

}
