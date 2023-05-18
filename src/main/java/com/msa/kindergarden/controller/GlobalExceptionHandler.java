package com.msa.kindergarden.controller;

import io.jsonwebtoken.ExpiredJwtException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.Map;

@RestController
@ControllerAdvice
public class GlobalExceptionHandler {

    @ExceptionHandler(value = Exception.class)
    public Map<String, String> handleException(Exception e){
        Map<String, String> map = new HashMap<String, String>();
        map.put("errorMsg",e.getMessage());
        return map;
    }

    @ExceptionHandler(value = ExpiredJwtException.class)
    public Map<String, String> handleException(ExpiredJwtException e){
        Map<String, String> map = new HashMap<String, String>();
        map.put("jwt_errorMsg",e.getMessage());
        return map;
    }
}
