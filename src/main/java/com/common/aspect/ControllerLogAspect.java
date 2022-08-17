package com.common.aspect;

import java.lang.reflect.Method;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.reflect.MethodSignature;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.RequestMapping;

@Aspect
public class ControllerLogAspect {
    
    private static final Logger logger = LoggerFactory.getLogger("evident");
    
    @Before(value = "execution(* com.moon.material.*.*Controller.*(..))")
	public void beforeLog(JoinPoint joinPoint) throws Throwable {
        try {
            if (logger.isDebugEnabled()) {
                Method method = ((MethodSignature) joinPoint.getSignature()).getMethod();
                String[] paths = method.getAnnotation(RequestMapping.class).produces();//.path();
                String[] values = method.getAnnotation(RequestMapping.class).value();
                logger.debug(
            	    new StringBuilder("\n")
                        .append("* ============================================================================================= START\n")
                        .append("* RequestMapping: {}\n")
                        .append("* Class.Method  : {}.{}\n")
                	    .append("* Arguments     : {}\n")
                        .append("* =============================================================================================\n")
                        .toString(),
                    paths != null && paths.length > 0 ? paths[0] : (values != null && values.length > 0 ? values[0] : ""),
                    joinPoint.getTarget().getClass().getName(),
                    method.getName(),
                    joinPoint.getArgs()
                );
            }
	    } catch (Throwable t) {
            t.printStackTrace();
            throw t;
        }
	}

    @After(value = "execution(* com.moon.material.*.*Controller.*(..))")
    public void afterLog(JoinPoint joinPoint) throws Throwable {

        if (logger.isDebugEnabled()) logger.debug("\n* ============================================================================================= END\n");
        
    }
    
}