package com.common.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Repository;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
import org.springframework.web.util.UrlPathHelper;

@Repository
public class InjectionInterceptor extends HandlerInterceptorAdapter {
    
    private static final Logger logger = LoggerFactory.getLogger(InjectionInterceptor.class);

    @Value("${Globals.System.Name}")
    private String systemName;

    @Value("${Globals.System.Desc}")
    private String systemDesc;

    @Value("${Globals.System.Version}")
    private String systemVersion;
    
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        
        try {
            
            UrlPathHelper urlPathHelper = new UrlPathHelper();
            String ctxPath = urlPathHelper.getOriginatingContextPath(request);//request.getContextPath();
            String curPath = urlPathHelper.getOriginatingRequestUri(request); //request.getRequestURI();
            String ctlPath = urlPathHelper.getOriginatingServletPath(request);//request.getServletPath(); // Controller Path

            if (logger.isDebugEnabled()) logger.debug("CTX_PATH ==> {}", ctxPath);
            if (logger.isDebugEnabled()) logger.debug("CTL_PATH ==> {}", ctlPath);
            if (logger.isDebugEnabled()) logger.debug("CUR_PATH ==> {}", curPath);
            if (logger.isDebugEnabled()) logger.debug("[{}] {} SessionId: {}", request.getMethod(), request.getRequestURL(), request.getRequestedSessionId());

            request.setAttribute("CTX_PATH", ctxPath);
            request.setAttribute("CTL_PATH", ctlPath);
            request.setAttribute("CUR_PATH", curPath);
            request.setAttribute("SYS_NAME", systemName);
            request.setAttribute("SYS_DESC", systemDesc);
            request.setAttribute("SYS_VERSION", systemVersion);
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return super.preHandle(request, response, handler);
    }
    
}