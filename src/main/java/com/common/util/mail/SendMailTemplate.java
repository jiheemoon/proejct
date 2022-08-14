package com.common.util.mail;

import java.util.Properties;

import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMessage.RecipientType;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.mail.MailException;
import org.springframework.mail.javamail.JavaMailSenderImpl;

import com.common.util.StringUtil;

public class SendMailTemplate {
    
    private static final Logger logger = LoggerFactory.getLogger(SendMailTemplate.class);

    //=============================================================================
    ////SSL (587포트)
    //=============================================================================
    //Properties props = new Properties();  
    //props.put("mail.smtp.host", host); //SMTP Host  
    //props.put("mail.smtp.port", "587"); //TLS Port  
    //props.put("mail.smtp.auth", "true"); //enable authentication  
    //props.put("mail.smtp.starttls.enable", "true"); //enable   
    //props.put("mail.smtp.ssl.trust", host);  
    //=============================================================================
    ////TLS (465포트)
    //=============================================================================
    //Properties props = new Properties();
    //props.put("mail.smtp.host", host);
    //props.put("mail.smtp.port", "465"); 
    //props.put("mail.smtp.starttls.enable","true"); 
    //props.put("mail.smtp.auth", "true"); 
    //props.put("mail.smtp.debug", "true"); 
    //props.put("mail.smtp.socketFactory.port", "465"); 
    //props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");  
    //props.put("mail.smtp.socketFactory.fallback", "false");
    //=============================================================================

    /**
     * Default Constructor
     */
    public SendMailTemplate() {
        //
    }
    
    /**
     * 
     * 
     * sendHtmlTemplateMail
     * 
     * @param mailVO
     * @throws Exception
     */
    public void sendHtmlMail(MailVO mail) throws Exception {
        
        try {
            if (null != mail) {
                //
                //if (logger.isDebugEnabled()) logger.debug("mail: {}", mail);
                //
                if (!StringUtil.isEmpty(mail.getSubject()) && !StringUtil.isEmpty(mail.getContent()) 
                    && (0 < mail.getToAddrs().size() || 0 < mail.getCcAddrs().size() || 0 < mail.getBccAddrs().size())) {
                    //---------------------------------------------------------
                    if (logger.isDebugEnabled()) logger.debug("***** E-Mail Started.");
                    //---------------------------------------------------------
                    JavaMailSenderImpl mailSender = new JavaMailSenderImpl();
                    mailSender.setUsername(mail.getUserName());
                    mailSender.setPassword(mail.getUserHash());
                    mailSender.setDefaultEncoding(mail.getEncoding());
                    Properties props = mailSender.getJavaMailProperties();
                    //Globals.smtp.Auth
                    //Globals.smtp.AuthType
                    if ("true".equalsIgnoreCase(mail.getAuth()) ||
                        "tls".equalsIgnoreCase(mail.getAuthType()) ||
                        "ssl".equalsIgnoreCase(mail.getAuthType())) {
                        props.put("mail.smtp.auth", "true");
                    }
                    //Globals.smtp.AuthType
                    if ("tls".equalsIgnoreCase(mail.getAuthType())) {
                        //props.put("mail.smtp.auth", "true");
                        props.put("mail.smtp.host", mail.getHost());
                        props.put("mail.smtp.port", mail.getPort());
                        props.put("mail.smtp.socketFactory.port", mail.getPort());
                        props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
                    } else if ("ssl".equalsIgnoreCase(mail.getAuthType())) {
                        //props.put("mail.smtp.auth", "true");
                        props.put("mail.smtp.host", mail.getHost());
                        props.put("mail.smtp.port", mail.getPort());
                        props.put("mail.smtp.starttls.enable", "true");
                        props.put("mail.smtp.ssl.trust", mail.getHost());  
                    } else {
                        mailSender.setHost(mail.getHost());
                        mailSender.setPort(Integer.valueOf(mail.getPort()));
                    }
                    ////Globals.smtp.Debug
                    //if ("true".equalsIgnoreCase(mail.getDebug())) {
                    //    props.put("mail.debug", "true");
                    //}
                    ////Globals.smtp.Timeout
                    //if (StringUtil.isNumeric(mail.getTimeout()) && 0 < Int32Util.getInteger(mail.getTimeout(), -1)) {
                    //    props.put("mail.smtp.timeout", mail.getTimeout());
                    //    props.put("mail.smtp.connectiontimeout", mail.getTimeout());
                    //}
                    mailSender.setJavaMailProperties(props);
                    MimeMessage message = mailSender.createMimeMessage();
                    //---------------------------------------------------------
                    // From
                    //---------------------------------------------------------
                    InternetAddress from = null;
                    if (!StringUtil.isEmpty(mail.getFromName())) {
                        from = new InternetAddress(mail.getFromAddr(), mail.getFromName(), mail.getEncoding());
                    } else {
                        from = new InternetAddress(mail.getFromAddr());
                    }
                    if (logger.isDebugEnabled()) logger.debug("E-Mail send from {}", from);
                    message.setFrom(from);
                    //---------------------------------------------------------
                    // To
                    //---------------------------------------------------------
                    if (0 < mail.getToAddrs().size()) {
                        InternetAddress[] toAddrs = new InternetAddress[mail.getToAddrs().size()];
                        int i = 0;
                        for(String toAddr: mail.getToAddrs()) {
                            toAddrs[i++] = new InternetAddress(toAddr);
                            if (logger.isDebugEnabled()) logger.debug("E-Mail send to <{}>", toAddr);
                        }
                        message.setRecipients(RecipientType.TO, toAddrs); //수신자 셋팅
                    } 
                    //else {
                    //    if (logger.isDebugEnabled()) logger.debug("E-Mail send to {}", mail.getToAddr());
                    //    message.addRecipient(RecipientType.TO, new InternetAddress(mail.getToAddr()));
                    //}
                    //---------------------------------------------------------
                    // Cc
                    //---------------------------------------------------------
                    if (0 < mail.getCcAddrs().size()) {
                        InternetAddress[] ccAddrs = new InternetAddress[mail.getCcAddrs().size()];
                        int i = 0;
                        for(String ccAddr: mail.getCcAddrs()) {
                            ccAddrs[i++] = new InternetAddress(ccAddr);
                            if (logger.isDebugEnabled()) logger.debug("E-Mail send cc <{}>", ccAddr);
                        }
                        message.setRecipients(RecipientType.CC, ccAddrs); //참조 셋팅
                    } 
                    //---------------------------------------------------------
                    // Bcc
                    //---------------------------------------------------------
                    if (0 < mail.getBccAddrs().size()) {
                        InternetAddress[] bccAddrs = new InternetAddress[mail.getBccAddrs().size()];
                        int i = 0;
                        for(String bccAddr: mail.getBccAddrs()) {
                            bccAddrs[i++] = new InternetAddress(bccAddr);
                            if (logger.isDebugEnabled()) logger.debug("E-Mail send bcc <{}>", bccAddr);
                        }
                        message.setRecipients(RecipientType.BCC, bccAddrs); //숨은참조 셋팅
                    } 
                    //---------------------------------------------------------
                    // Subject
                    //---------------------------------------------------------
                    message.setSubject(mail.getSubject()); //메일 제목을 입력
                    //---------------------------------------------------------
                    // Template & Content
                    //VelocityEngine velocityEngine = new VelocityEngine();
                    //Properties props = new Properties();
                    //props.setProperty(RuntimeConstants.RESOURCE_LOADER, "classpath");
                    //props.setProperty("classpath.resource.loader.class", ClasspathResourceLoader.class.getName());    
                    //velocityEngine.init(props);
                    //Template template = velocityEngine.getTemplate("templates/" + mail.getTemplateName());
                    //VelocityContext velocityContext = new VelocityContext();
                    //velocityContext.put("content", mail.getContent());
                    // ...
                    //StringWriter stringWriter = new StringWriter();
                    //template.merge(velocityContext, stringWriter);
                    //---------------------------------------------------------
                    // Text //utf-8, html
                    //Globals.smtp.Encoding (utf-8 | euc-kr)
                    //Globals.smtp.MineType (plain | html)
                    //message.setText(stringWriter.toString(), mail.getCharset(), mail.getSubtype());
                    //---------------------------------------------------------
                    // Content
                    //---------------------------------------------------------
                    message.setText(mail.getContent().replace("\r\n", "<br/>"), mail.getEncoding(), mail.getMineType());
                    //---------------------------------------------------------
                    // file 
                    //DataSource fds = new FileDataSource("C:\\eHaesol\\workspace\\inetics\\java\\templates\\images\\logo.png");
                    //MimeBodyPart attachPart = new MimeBodyPart();
                    //attachPart.setDataHandler(new DataHandler(fds));
                    //attachPart.setHeader("Content-ID","<logo>");
                    //MimeMultipart multipart = new MimeMultipart("related");
                    //multipart.addBodyPart(attachPart);
                    //message.setContent(multipart);
                    //---------------------------------------------------------
                    // Send the message
                    //---------------------------------------------------------
                    mailSender.send(message);
                    //---------------------------------------------------------
                    if (logger.isDebugEnabled()) logger.debug("***** E-Mail Stopped.");
                    //---------------------------------------------------------
                } else {
                    //writeErrorScript(response, MessageUtils.getMessage("file.NullMailVO"));
                    if (logger.isErrorEnabled()) logger.error("Subject, Contents or To E-Mail address was not defined.");
                    throw new Exception("제목과 내용 혹은 수신자가 존재하지 않습니다");
                }
            } else {
                if (logger.isErrorEnabled()) logger.error("MailVO is null.");
                throw new Exception("수신 메일정보가 올바르지 않은 형식입니다.");
            }
        } catch (MessagingException me) {
            if (logger.isErrorEnabled()) logger.error("MessagingException: {}", me.getMessage());
            throw new Exception("예외가 발생하였습니다");
        } catch (MailException me) {
            if (logger.isErrorEnabled()) logger.error("MailException: {}", me.getMessage());
            throw new Exception("발신 메일 계정이 존재하지 않습니다. 메일설정을 확인해주세요.");
        } catch (Exception ex) {
            if (logger.isErrorEnabled()) logger.error("Exception: {}", ex.getMessage());
            throw new Exception(ex.getMessage());
        }
    }
}
