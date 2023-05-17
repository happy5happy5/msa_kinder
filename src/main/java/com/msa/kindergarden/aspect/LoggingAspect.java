package com.msa.kindergarden.aspect;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.stereotype.Component;

@Aspect
@Component
public class LoggingAspect {
    @Before("execution(* com.msa.kindergarden.service.*.get*(..))")
    public void loggerBefore() {
        System.out.println("시작::get으로 시작하는 service에 있는 모든 메서드 ");
    }

    @After("execution(* com.msa.kindergarden.service.*.get*(..))")
    public void loggerAfter() {
        System.out.println("끝::get으로 시작하는 service에 있는 모든 메서드 ");
    }

    @Around("execution(* com.msa.kindergarden.controller.UserController.get*(..))")
    public Object loggerAround(ProceedingJoinPoint pjp) throws Throwable {
        long beforeTimeMillis = System.currentTimeMillis();
        System.out.println("[UserController] 실행 시작: " +
                pjp.getSignature().getDeclaringTypeName() + ".." +
                pjp.getSignature().getName()
        );
        Object result = pjp.proceed();

        long afterTimeMillis = System.currentTimeMillis() - beforeTimeMillis;
        System.out.println("[UserController] 실행 완료: " +
                pjp.getSignature().getDeclaringTypeName() + ".." +
                pjp.getSignature().getName()
        );
        return result;
    }
}
