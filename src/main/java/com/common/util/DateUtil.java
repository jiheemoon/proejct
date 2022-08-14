package com.common.util;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;

public class DateUtil {

    /**
    * <p>현재 날짜와 시각을  yyyyMMddhhmmss 형태로 변환 후 return.</p>
    *
    * @param null
    * @return yyyyMMddhhmmss
    * @see java.util.Date
    * @see java.util.Locale
    *
    * <pre>
    *  - 사용 예
    * String date = DateUtil.getCurrentDateTime()
    * </pre>
    */
    public static String getCurrentDateTime() {
        
        return (getCurrentDateTime("yyyyMMddHHmmss"));
    }
    
    public static String getCurrentDateTime(String format) {
        
        SimpleDateFormat formatter = new SimpleDateFormat(format, new Locale("KOREAN", "KOREA"));
        
        return formatter.format(new Date());
    }
    
    /**
     * <p>현재  시각을  hhmmss 형태로 변환 후 return.</p>
     *
     * @param null
     * @return hhmmss
     * @see java.util.Date
     * @see java.util.Locale
     * <pre>
     *  - 사용 예
     *  String date = DateUtil.getCurrentTime()
     * </pre>
     */
    public static String getCurrentTime() {
        
        return (getCurrentDateTime("HHmmss"));
    }
    
    public static String getCurrentTime(String format) {
        
        SimpleDateFormat formatter = new SimpleDateFormat(format, new Locale("KOREAN", "KOREA"));
        
        return formatter.format(new Date());
    }

    /**
     * <p>현재 날짜를 yyyyMMdd 형태로 변환 후 return.</p>
     *
     * @param null
     * @return yyyyMMdd *
     * <pre>
     *  - 사용 예
     * String date = DateUtil.getCurrentYyyymmdd()
     * </pre>
     */
    public static String getCurrentYyyymmdd() {
        
        return getCurrentDateTime().substring(0, 8);
    }

    /**
     * 날자를 원하는 포멧으로 반환한다
     * @param sDate yyyyMMdd or yyyy-MM-dd
     * @param delim ex("-")
     * @return String delim format 형식으로 리턴
     */
    public static String getDateFormat(String sDate, String delim) {
        
        //yyyyMMdd 이거나 yyyy-MM-dd 가 아니면 0리턴
        if(sDate == null || (sDate.length() != 8 && sDate.length() != 10) || (sDate.length() == 10 && sDate.indexOf("-") == -1)) {
            return "";
        }
        sDate = sDate.replaceAll("-", "");
        
        String yyyy = sDate.substring(0, 4);
        String MM = sDate.substring(4, 6);
        String dd = sDate.substring(6, 8);
        
        return (yyyy + delim + MM + delim + dd);
    }
    
    /**
     * 시간을 원하는 포멧으로 반환한다
     * @param sTime HHmmss or HH:mm:ss
     * @return String delim format 형식으로 리턴
     */
    public static String getTimeFormat(String sTime, String delim) {
        
        //hhmmss 이거나 hh:mm-ss 가 아니면 0리턴
        if(sTime == null || (sTime.length() != 6 && sTime.length() != 8) || (sTime.length() == 8 && sTime.indexOf(":") == -1)) {
            return "";
        }
        sTime = sTime.replaceAll(":", "");
        
        String hh = sTime.substring(0, 2);
        String mm = sTime.substring(2, 4);
        String ss = sTime.substring(4, 6);
        
        return (hh + delim + mm + delim + ss);
    }

    /**
     * 날자 및 시간을 원하는 포멧으로 반환한다 (yyyy-MM-dd HH:mm:ss)
     * @param dFormat
     * yyyy 년, MM 월, dd 일
     * HH 24시, mm 분, ss 초
     * aa 오전/오후, hh 12시
     * ww 년에 있어서 주(수치)
     * DDD 년에 있어서 날(수치)
     * F 월에 있어서 요일(수치)
     * @return String
     */
    public static String getDateTimeFormat(String sDateTime, String dFormat) {
        
        if(sDateTime == null || sDateTime.equals("")) {
            return "";
        }
        
        if(dFormat == null || dFormat.equals("")) {
            dFormat = "yyyy-MM-dd HH:mm:ss";
        }
        
        sDateTime = sDateTime.replaceAll("-", "");
        sDateTime = sDateTime.replaceAll(":", "");
        sDateTime = sDateTime.replaceAll(" ", "");
        if (sDateTime.length() != 14) {
            return "";
        } else {
            String yyyy = sDateTime.substring(0, 4);
            String MM = sDateTime.substring(4, 6);
            String dd = sDateTime.substring(6, 8);
            String hh = sDateTime.substring(8, 10);
            String mm = sDateTime.substring(10, 12);
            String ss = sDateTime.substring(12, 14);
            Calendar cal = Calendar.getInstance();
            cal.set(Integer.parseInt(yyyy), Integer.parseInt(MM)-1, Integer.parseInt(dd), Integer.parseInt(hh), Integer.parseInt(mm), Integer.parseInt(ss)); //년월일시분초셋팅
            SimpleDateFormat formatter = new SimpleDateFormat(dFormat);
            return formatter.format(cal.getTime());
        }
    }
    
    /**
     * <pre>
     * 날자 및 시간을 원하는 포멧으로 반환한다 (yyyy-MM-dd HH:mm:ss)
     * yyyy 년, MM 월, dd 일
     * HH 24시, mm 분, ss 초
     * aa 오전/오후, hh 12시
     * ww 년에 있어서 주(수치)
     * DDD 년에 있어서 날(수치)
     * F 월에 있어서 요일(수치)
     * </pre>
     * @param sDateTime
     * @return String
     */
    public static Date getDate(String sDateTime) {
        
        if (sDateTime == null || sDateTime.equals("")) {
            return null;
        }
        
        sDateTime = sDateTime.replaceAll("-", "");
        sDateTime = sDateTime.replaceAll(":", "");
        sDateTime = sDateTime.replaceAll(" ", "");
        
        if (sDateTime.length() != 14) {
            return null;
        } else {
            String yyyy = sDateTime.substring(0, 4);
            String MM = sDateTime.substring(4, 6);
            String dd = sDateTime.substring(6, 8);
            String hh = sDateTime.substring(8, 10);
            String mm = sDateTime.substring(10, 12);
            String ss = sDateTime.substring(12, 14);
            Calendar cal = Calendar.getInstance();
            cal.set(Integer.parseInt(yyyy), Integer.parseInt(MM), Integer.parseInt(dd), Integer.parseInt(hh), Integer.parseInt(mm), Integer.parseInt(ss)); //년월일시분초셋팅
            return cal.getTime();
        }
    }
    
}
