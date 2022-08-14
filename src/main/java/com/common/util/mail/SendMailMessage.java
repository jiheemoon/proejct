package com.common.util.mail;

import java.util.Properties;

import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMessage.RecipientType;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.common.util.StringUtil;

public class SendMailMessage {
    
    private static final Logger logger = LoggerFactory.getLogger(SendMailMessage.class);

    /**
     * Default Constructor
     */
    public SendMailMessage() {
        //
    }

    private String fromname;
    private String fromaddr;
    private String username;
    private String password;
    private String subtype;
    private String charset;
    private Properties mailProperties;
    private Properties mailTemplates;
        
    /**
     * @return the mailTemplates
     */
    public Properties getMailTemplates() {
    
        return mailTemplates;
    }
    
    /**
     * @param mailTemplates the mailTemplates to set
     */
    public void setMailTemplates(Properties mailTemplates) {
    
        this.mailTemplates = mailTemplates;
    }

    /**
     * @return the subtype
     */
    public String getSubtype() {
    
        return subtype;
    }

    
    /**
     * @param subtype the subtype to set
     */
    public void setSubtype(String subtype) {
    
        this.subtype = StringUtil.getString(subtype, "html");
    }

    
    /**
     * @return the charset
     */
    public String getCharset() {
    
        return charset;
    }

    
    /**
     * @param charset the charset to set
     */
    public void setCharset(String charset) {
    
        this.charset = StringUtil.getString(charset, "utf-8");
    }

    /**
     * @return the mailProperties
     */
    public Properties getMailProperties() {
    
        return mailProperties;
    }
    
    /**
     * @param mailProperties the mailProperties to set
     */
    public void setMailProperties(Properties mailProperties) {

        //if (logger.isDebugEnabled()) logger.debug("setMailProperties: {}", mailProperties);
        this.mailProperties = mailProperties;
    }

    /**
     * @return the fromname
     */
    public String getFromname() {
    
        return fromname;
    }

    /**
     * @param fromname the fromname to set
     */
    public void setFromname(String fromname) {
    
        this.fromname = fromname;
    }

    /**
     * @return the fromaddr
     */
    public String getFromaddr() {
    
        return fromaddr;
    }

    /**
     * @param fromaddr the fromaddr to set
     */
    public void setFromaddr(String fromaddr) {
    
        this.fromaddr = fromaddr;
    }

    /**
     * @return the username
     */
    public String getUsername() {
    
        return username;
    }

    /**
     * @param username the username to set
     */
    public void setUsername(String username) {
    
        this.username = username;
    }

    /**
     * @return the password
     */
    public String getPassword() {
    
        return password;
    }

    /**
     * @param password the password to set
     */
    public void setPassword(String password) {
    
        this.password = password;
    }

    /**
     * sendHtmlMail
     * 
     * @param mailVO
     * @throws Exception
     */
    public void sendHtmlMail(Mail mailVO) throws Exception {
        
        //Properties prop = new Properties();
        //prop.put("mail.smtp.host", "smtp.gmail.com");
        //prop.put("mail.smtp.port", 465);
        //prop.put("mail.smtp.auth", "true");
        //prop.put("mail.smtp.ssl.enable", "true");
        //prop.put("mail.smtp.ssl.trust", "smtp.gmail.com");

        try {
            
            if (logger.isDebugEnabled()) logger.debug("mailProperties: {}", mailProperties);
            if (logger.isDebugEnabled()) logger.debug("mailVO        : {}", mailVO);
            
            if (null != mailVO) {
                
                if (!StringUtil.isEmpty(mailVO.getSubject()) && !StringUtil.isEmpty(mailVO.getContent()) && !StringUtil.isEmpty(mailVO.getRecvAddr())) {

                    //---------------------------------------------------------
                    if (logger.isDebugEnabled()) logger.debug("***** E-Mail send to {}<{}> Started.", StringUtil.isEmpty(fromname) ? "" : fromname, mailVO.getRecvAddr());
                    //---------------------------------------------------------
                    Session session = null;
                    if (!StringUtil.isEmpty(username) && ! StringUtil.isEmpty(password)) {
                        // 발신자 계정정보가 있는 경우 (계정 인증)
                        mailProperties.setProperty("mail.smtp.auth", "true");
                        session = Session.getDefaultInstance(mailProperties, new javax.mail.Authenticator() {
                            protected PasswordAuthentication getPasswordAuthentication() {
                                return new PasswordAuthentication(username, password);
                            }
                        });
                    } else {
                        // 발신자 계정정보가 없는 경우 (비인증)
                        mailProperties.setProperty("mail.smtp.auth", "false");
                        session = Session.getDefaultInstance(mailProperties);
                    }
                    //---------------------------------------------------------
                    MimeMessage message = new MimeMessage(session);
                    //---------------------------------------------------------
                    // From
                    InternetAddress from = null;
                    if (!StringUtil.isEmpty(fromname)) {
                        from = new InternetAddress(fromaddr, fromname, charset);
                    } else {
                        from = new InternetAddress(fromaddr);
                    }
                    message.setFrom(from);
                    //message.setFrom(new InternetAddress(fromaddr));
                    //---------------------------------------------------------
                    // To
                    message.addRecipient(RecipientType.TO, new InternetAddress(mailVO.getRecvAddr()));
                    //InternetAddress[] toList = { new InternetAddress(mailVO.getRecvAddr()) };
                    //message.addRecipients(Message.RecipientType.TO, toList);
                    //---------------------------------------------------------
                    // Subject
                    message.setSubject(mailVO.getSubject()); //메일 제목을 입력
                    //---------------------------------------------------------
                    // Text
                    message.setText(mailVO.getContent(), charset, subtype);
                    //---------------------------------------------------------
                    // Send the message
                    //---------------------------------------------------------
                    Transport.send(message); // E-Mail 전송
                    //---------------------------------------------------------
                    if (logger.isDebugEnabled()) logger.debug("***** E-Mail Send to {}<{}> Stopped.", StringUtil.isEmpty(fromname) ? "" : fromname, mailVO.getRecvAddr());
                    //---------------------------------------------------------
                } else {
                    throw new Exception("Subject, Contents or To E-Mail address was not defined.");
                }
            } else {
                throw new Exception("MailVO is null.");
            }
        } catch (MessagingException me) {
            if (logger.isWarnEnabled()) logger.warn("MessagingException: {}", me.getMessage());
        } catch (Exception ex) {
            if (logger.isWarnEnabled()) logger.warn("Exception: {}", ex.getMessage());
        }
    }
}