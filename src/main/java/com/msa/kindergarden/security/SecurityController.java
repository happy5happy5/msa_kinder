//package com.msa.kindergarden.security;
//
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestParam;
//import org.springframework.web.bind.annotation.RestController;
//
//import java.util.LinkedHashMap;
//import java.util.Map;
//
//@RestController
//@RequestMapping("/security")
//public class SecurityController {
//    @Autowired
//    private SecurityService securityService;
//
//
//    //원래는 createToken 의 파라미터 subject로 id나 pw를 넣어야 하는데 일단 get으로 확인해보자
//    @GetMapping("/create/token")
//    public Map<String , Object> createToken(@RequestParam(value = "subject") String subject){
//        System.out.println("create token....");
//        String token= securityService.createToken(subject,2*1000*60);
//        Map<String,Object> map = new LinkedHashMap<>();
//        map.put("result",token);
//        return map;
//    }
//    @GetMapping("/get/subject")
//    public Map<String , Object> createSubject(@RequestParam(value = "token") String token){
//        System.out.println("create token....");
//        String subject= securityService.getSubject(token);
//        Map<String,Object> map = new LinkedHashMap<>();
//        map.put("result",subject);
//        return map;
//    }
//}
