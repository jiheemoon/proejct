package com.common.util.mail;

import java.util.ArrayList;
import java.util.List;
import java.util.TreeSet;

import com.common.util.StringUtil;
import com.common.web.vo.ValueObject;

public class MailVO extends ValueObject {

    private static final long serialVersionUID = 1804344000928470878L;

    public MailVO() {
        //
    }

    //메일서버
    //Globals.smtp.Host
    private String host;
    
    //포트번호
    //Globals.smtp.Port
    private String port;
    
    //발신메일계정
    //Globals.smtp.UserName
    private String userName;
    
    //발신자표시명
    //Globals.smtp.FromName
    private String fromName;
    
    //비밀번호
    //Globals.smtp.UserHash
    private String userHash;
    
    //발신메일주소
    //Globals.smtp.FromAddr
    private String fromAddr;
    
    //메일형식
    //Globals.smtp.MineType (plain | html)
    private String mineType;

    //서버인증
    //Globals.smtp.Auth     (true | false)
    private String auth;
    
    //보안연결
    //Globals.smtp.AuthType (tls | ssl | auto)
    private String authType;
    
    //문자형식
    //Globals.smtp.Encoding (utf-8 | euc-kr)
    private String encoding;
    
    //타임아웃
    //Globals.smtp.Timeout  (default:8500)
    private String timeout;
    
    //연결타임아웃
    //Globals.smtp.ConnectionTimeout  (default:8500)
    private String connectionTimeout;
    
    //상세로그출력
    //Globals.smtp.Debug    (true | false)
    private String debug;

    private String templateName;

    //수신
    private String toName;
    private String toAddr;
    private List<String> toAddrs = new ArrayList<String>();

    //참조
    private String ccAddr;
    private List<String> ccAddrs = new ArrayList<String>();

    //숨은참조
    private String bccAddr;
    private List<String> bccAddrs = new ArrayList<String>();
    
    //메일본문
    private String subject;
    private String content;

    /**
     * 기존 toAddrs리스트에 toAddr스트링 합하여 반환
     * @return the toAddrs
     */
    public List<String> getToAddrs() {
        
        // 공백 제거후 리스트에 추가
        if (!StringUtil.isEmpty(this.toAddr)) {
            for (String toAddr : StringUtil.split(this.toAddr, ";")) {
                String s = toAddr.replaceAll(" ", "").replaceAll("\\p{Z}", "");
                if(!StringUtil.isEmpty(s)) toAddrs.add(s);
            }
        } 
        // 중복값 제거 후 정렬
        return new ArrayList<String>(new TreeSet<String>(toAddrs));
    }

    /**
     * @param toAddrs the toAddrs to add
     */
    public void addToAddrs(List<String> toAddrs) {
    
        this.toAddrs.addAll(toAddrs);
    }
    
    public void addToAddr(String toAddr) {
    
        this.toAddrs.add(toAddr);
    }
    
    /**
     * 기존 ccAddrs리스트에 ccAddr스트링 합하여 반환
     * @return the ccAddrs
     */
    public List<String> getCcAddrs() {
        
        // 공백 제거후 리스트에 추가
        if(!StringUtil.isEmpty(this.ccAddr)) {
            for (String ccAddr : StringUtil.split(this.ccAddr, ";")) {
                String s = ccAddr.replaceAll(" ", "").replaceAll("\\p{Z}", "");
                if(!StringUtil.isEmpty(s)) ccAddrs.add(s);
            }
        } 
        // 중복값 제거 후 정렬
        return new ArrayList<String>(new TreeSet<String>(ccAddrs));
    }
    
    /**
     * @param ccAddrs the ccAddrs to add
     */
    public void addCcAddrs(List<String> ccAddrs) {
    
        this.ccAddrs.addAll(ccAddrs);
    }
    
    public void addCcAddr(String ccAddr) {
    
        this.ccAddrs.add(ccAddr);
    }

    /**
     * 기존 bccAddrs리스트에 bccAddr스트링 합하여 반환
     * @return the bccAddrs
     */
    public List<String> getBccAddrs() {
        
        // 공백 제거후 리스트에 추가
        if (!StringUtil.isEmpty(this.bccAddr)) {
            for (String bccAddr : StringUtil.split(this.bccAddr, ";")) {
                String s = bccAddr.replaceAll(" ", "").replaceAll("\\p{Z}", "");
                if (!StringUtil.isEmpty(s)) bccAddrs.add(s);
            }
        } 
        // 중복값 제거 후 정렬
        return new ArrayList<String>(new TreeSet<String>(bccAddrs));
    }

    /**
     * @param bccAddrs the bccAddrs to add
     */
    public void addBccAddrs(List<String> bccAddrs) {
    
        this.bccAddrs.addAll(bccAddrs);
    }
    
    public void addBccAddr(String bccAddr) {
    
        this.bccAddrs.add(bccAddr);
    }

    
    /**
     * @return the host
     */
    public String getHost() {
    
        return host;
    }

    
    /**
     * @param host the host to set
     */
    public void setHost(String host) {
    
        this.host = host;
    }

    
    /**
     * @return the port
     */
    public String getPort() {
    
        return StringUtil.isNumeric(port) ? port : "25";
    }

    
    /**
     * @param port the port to set
     */
    public void setPort(String port) {
    
        this.port = StringUtil.isNumeric(port) ? port : "25";
    }

    
    /**
     * @return the userName
     */
    public String getUserName() {
    
        return userName;
    }

    
    /**
     * @param userName the userName to set
     */
    public void setUserName(String userName) {
    
        this.userName = userName;
    }

    
    /**
     * @return the fromName
     */
    public String getFromName() {
    
        return fromName;
    }

    
    /**
     * @param fromName the fromName to set
     */
    public void setFromName(String fromName) {
    
        this.fromName = fromName;
    }

    
    /**
     * @return the userHash
     */
    public String getUserHash() {
    
        return userHash;
    }

    
    /**
     * @param userHash the userHash to set
     */
    public void setUserHash(String userHash) {
    
        this.userHash = userHash;
    }

    
    /**
     * @return the fromAddr
     */
    public String getFromAddr() {
    
        return fromAddr;
    }

    
    /**
     * @param fromAddr the fromAddr to set
     */
    public void setFromAddr(String fromAddr) {
    
        this.fromAddr = fromAddr;
    }

    
    /**
     * @return the mineType
     */
    public String getMineType() {

        return !StringUtil.isEmpty(mineType) ? mineType : "html";
    }

    
    /**
     * @param mineType the mineType to set
     */
    public void setMineType(String mineType) {
    
        this.mineType = !StringUtil.isEmpty(mineType) ? mineType : "html";
    }

    
    /**
     * @return the auth
     */
    public String getAuth() {
    
        return !StringUtil.isEmpty(auth) ? auth : "false";
    }

    
    /**
     * @param auth the auth to set
     */
    public void setAuth(String auth) {
    
        this.auth = !StringUtil.isEmpty(auth) ? auth : "false";
    }

    
    /**
     * @return the authType
     */
    public String getAuthType() {
    
        return !StringUtil.isEmpty(authType) ? authType : "auto";
    }

    
    /**
     * @param authType the authType to set
     */
    public void setAuthType(String authType) {
    
        this.authType = !StringUtil.isEmpty(authType) ? authType : "auto";
    }

    
    /**
     * @return the encoding
     */
    public String getEncoding() {
    
        return !StringUtil.isEmpty(encoding) ? encoding : "utf-8";
    }

    
    /**
     * @param encoding the encoding to set
     */
    public void setEncoding(String encoding) {
    
        this.encoding = !StringUtil.isEmpty(encoding) ? encoding : "utf-8";
    }

    
    /**
     * @return the timeout
     */
    public String getTimeout() {
    
        return StringUtil.isNumeric(timeout) ? timeout : "8500";
    }

    
    /**
     * @param timeout the timeout to set
     */
    public void setTimeout(String timeout) {
    
        this.timeout = StringUtil.isNumeric(timeout) ? timeout : "8500";
    }

    
    /**
     * @return the connectionTimeout
     */
    public String getConnectionTimeout() {
    
        return StringUtil.isNumeric(connectionTimeout) ? connectionTimeout : "8500";
    }

    
    /**
     * @param connectionTimeout the connectionTimeout to set
     */
    public void setConnectionTimeout(String connectionTimeout) {
    
        this.connectionTimeout = StringUtil.isNumeric(connectionTimeout) ? connectionTimeout : "8500";
    }

    
    /**
     * @return the debug
     */
    public String getDebug() {
    
        return !StringUtil.isEmpty(debug) ? debug : "false";
    }

    
    /**
     * @param debug the debug to set
     */
    public void setDebug(String debug) {
    
        this.debug = !StringUtil.isEmpty(debug) ? debug : "false";
    }

    
    /**
     * @return the templateName
     */
    public String getTemplateName() {
    
        return templateName;
    }

    
    /**
     * @param templateName the templateName to set
     */
    public void setTemplateName(String templateName) {
    
        this.templateName = templateName;
    }

    
    /**
     * @return the toName
     */
    public String getToName() {
    
        return toName;
    }

    
    /**
     * @param toName the toName to set
     */
    public void setToName(String toName) {
    
        this.toName = toName;
    }

    
    /**
     * @return the toAddr
     */
    public String getToAddr() {
    
        return toAddr;
    }

    
    /**
     * @param toAddr the toAddr to set
     */
    public void setToAddr(String toAddr) {
    
        this.toAddr = toAddr;
    }

    
    /**
     * @return the ccAddr
     */
    public String getCcAddr() {
    
        return ccAddr;
    }

    
    /**
     * @param ccAddr the ccAddr to set
     */
    public void setCcAddr(String ccAddr) {
    
        this.ccAddr = ccAddr;
    }

    
    /**
     * @return the bccAddr
     */
    public String getBccAddr() {
    
        return bccAddr;
    }

    
    /**
     * @param bccAddr the bccAddr to set
     */
    public void setBccAddr(String bccAddr) {
    
        this.bccAddr = bccAddr;
    }

    
    /**
     * @return the subject
     */
    public String getSubject() {
    
        return subject;
    }

    
    /**
     * @param subject the subject to set
     */
    public void setSubject(String subject) {
    
        this.subject = subject;
    }

    
    /**
     * @return the content
     */
    public String getContent() {
    
        return content;
    }

    
    /**
     * @param content the content to set
     */
    public void setContent(String content) {
    
        this.content = content;
    }

    
    /**
     * @param toAddrs the toAddrs to set
     */
    public void setToAddrs(List<String> toAddrs) {
    
        this.toAddrs = toAddrs;
    }

    
    /**
     * @param ccAddrs the ccAddrs to set
     */
    public void setCcAddrs(List<String> ccAddrs) {
    
        this.ccAddrs = ccAddrs;
    }

    
    /**
     * @param bccAddrs the bccAddrs to set
     */
    public void setBccAddrs(List<String> bccAddrs) {
    
        this.bccAddrs = bccAddrs;
    }
}