package com.common.web;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.util.UrlPathHelper;

@Controller
public class ErrorController {
	
	private static final Logger logger = LoggerFactory.getLogger(ErrorController.class);

    private void pageErrorLog(HttpServletRequest request) {
        if (logger.isDebugEnabled()) {
            UrlPathHelper urlPathHelper = new UrlPathHelper();
            logger.debug("Servlet Name  : {}", request.getAttribute("javax.servlet.error.servlet_name"));
            logger.debug("Servlet Path  : {}", urlPathHelper.getOriginatingServletPath(request));
            logger.debug("Request Url   : {}", request.getAttribute("javax.servlet.error.request_url"));
            logger.debug("Status Code   : {}", request.getAttribute("javax.servlet.error.status_code"));
            logger.debug("Exception Type: {}", request.getAttribute("javax.servlet.error.exception_type"));
            logger.debug("Message       : {}", request.getAttribute("javax.servlet.error.message"));
            logger.debug("Exception     : {}", request.getAttribute("javax.servlet.error.exception"));
        }
    }
    
    @RequestMapping(value = "/error/filter400")
    public String filter400(Model model, HttpServletRequest request) {
        
        logger.info("IP NOT ALLOWED");
        
        return "common/error/filter400";
    }
    
    @RequestMapping(value = "/error/throwable")
    public String throwable(Model model, HttpServletRequest request) {
        
        UrlPathHelper urlPathHelper = new UrlPathHelper();
        String ctlPath = urlPathHelper.getOriginatingServletPath(request);
        
        pageErrorLog(request);
        
        model.addAttribute("CTL_PATH", ctlPath);
        model.addAttribute("CTL_ERR", "Throwable");
        model.addAttribute("CTL_MSG", "예외가 발생하였습니다.");
        
        return "common/error/errorPage";
    }
    
    @RequestMapping(value = "/error/exception")
    public String exception(Model model, HttpServletRequest request) {
        
        UrlPathHelper urlPathHelper = new UrlPathHelper();
        String ctlPath = urlPathHelper.getOriginatingServletPath(request);
        
        pageErrorLog(request);
        
        model.addAttribute("CTL_PATH", ctlPath);
        model.addAttribute("CTL_ERR", "Exception");
        model.addAttribute("CTL_MSG", "예외가 발생하였습니다.");
        
        return "common/error/errorPage";
    }
    
    @RequestMapping(value = "/error/400")
    public String error400(Model model, HttpServletRequest request) {
        
        pageErrorLog(request);
        
        model.addAttribute("CTL_ERR", "400");
        model.addAttribute("CTL_MSG", "잘못된 요청입니다.");
        
        return "common/error/codeError";
    }
    
    @RequestMapping(value = "/error/403")
    public String error403(Model model, HttpServletRequest request) {
        
        pageErrorLog(request);

        //Access Denied
        model.addAttribute("CTL_ERR", "403");
        model.addAttribute("CTL_MSG", "접근이 거부되었습니다.");
        return "common/error/codeError";
    }
    
    @RequestMapping(value = "/error/404")
    public String error404(Model model, HttpServletRequest request) {
        
        pageErrorLog(request);

        //This page doesn't exist
        model.addAttribute("CTL_ERR", "404");
        model.addAttribute("CTL_MSG", "요청하신 페이지를 찾을 수 없습니다.");
        
        return "common/error/codeError";
    }
    
    @RequestMapping(value = "/error/405")
    public String error405(Model model, HttpServletRequest request) {
        
        pageErrorLog(request);
        
        model.addAttribute("CTL_ERR", "405");
        model.addAttribute("CTL_MSG", "요청된 메소드가 허용되지 않습니다.");
        
        return "common/error/codeError";
    }
    
    @RequestMapping(value = "/error/500")
    public String error500(Model model, HttpServletRequest request) {
        
        pageErrorLog(request);

        // Internal Server Error
        model.addAttribute("CTL_ERR", "500");
        model.addAttribute("CTL_MSG", "서버에 오류가 발생하였습니다.");
        
        return "common/error/codeError";
    }
    
    @RequestMapping(value = "/error/503")
    public String error503(Model model, HttpServletRequest request) {
        
        pageErrorLog(request);
        
        model.addAttribute("CTL_ERR", "503");
        model.addAttribute("CTL_MSG", "서비스를 사용할 수 없습니다.");
        
        return "common/error/codeError";
    }
}
