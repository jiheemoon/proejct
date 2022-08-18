package com.common.aspect;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@Aspect
public class DaoLogAspect {

    private static final Logger logger = LoggerFactory.getLogger("evident");

    @Before(value = "execution(* com.material.*.*DAO.*(..))")
    public void beforeLog(JoinPoint joinPoint) throws Throwable {
        try {
            if (logger.isDebugEnabled()) {
                logger.debug(
                    new StringBuilder("\n")
                        .append("* --------------------------------------------------------------------------------------------- START\n")
                        .append("* Class.Method  : {}.{}\n")
                        .append("* Arguments     : {}\n")
                        .append("* ---------------------------------------------------------------------------------------------\n")
                        .toString(),
                    joinPoint.getTarget().getClass().getName(), joinPoint.getSignature().getName(),
                    joinPoint.getArgs()
                );
            }
        } catch (Throwable t) {
            t.printStackTrace();
            throw t;
        }
    }
    
    @After(value = "execution(* com.material.*.*DAO.*(..))")
    public void afterLog(JoinPoint joinPoint) throws Throwable {
        
        if (logger.isDebugEnabled()) logger.debug("\n* --------------------------------------------------------------------------------------------- END\n");
    }
    
}