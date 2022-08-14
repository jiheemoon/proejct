package com.common.util.mail;

import com.common.web.vo.ValueObject;

public class Mail extends ValueObject {
    
    /**
     * 
     */
    private static final long serialVersionUID = 513122741962990567L;

    public Mail() {
        //
    }
 
    private String recvAddr;
    private String subject;
    private String content;
    
    /**
     * @return the recvAddr
     */
    public String getRecvAddr() {
    
        return recvAddr;
    }
    
    /**
     * @param recvAddr the recvAddr to set
     */
    public void setRecvAddr(String recvAddr) {
    
        this.recvAddr = recvAddr;
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
    
}