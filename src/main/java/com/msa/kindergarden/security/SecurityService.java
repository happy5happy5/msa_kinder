package com.msa.kindergarden.security;

import io.jsonwebtoken.Claims;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;
import org.springframework.stereotype.Service;

import javax.crypto.spec.SecretKeySpec;
import javax.xml.bind.DatatypeConverter;
import java.security.Key;
import java.util.Date;

@Service
public class SecurityService {
    private static final String SCRETE_KEY = "wqqefefasdfavaewwrgsGsdgwegzfshdjzetjtzsefaewfwefawergaerjakzdrfd";

    public String createToken(String subject,long expTime){
        if(expTime<=0){
            throw new RuntimeException("만료시간이 0보다 커야함");
        }

        SignatureAlgorithm signatureAlgorithm = SignatureAlgorithm.HS256;

        byte[] secretKeyBytes = DatatypeConverter.parseBase64Binary(SCRETE_KEY);

        //signing된 키를 만들기
        //이해가 안되면 자바 공식문서 확인할것
        Key signingKey = new SecretKeySpec(secretKeyBytes,signatureAlgorithm.getJcaName());


        //exptime뿐 아니라 여러 정보를 claim 선언이나 header에 추가할수있다는 것만 알고 넘어가자
        return Jwts.builder()
                .setSubject(subject)
                .signWith(signingKey,signatureAlgorithm)
                .setExpiration(new Date(System.currentTimeMillis()+expTime))
                .compact();

    }


    //todo 토큰 검증 하는 메소드 만들어야함
    public String getSubject(String token) {
        Claims claims = Jwts.parserBuilder()
                .setSigningKey(DatatypeConverter.parseBase64Binary(SCRETE_KEY))
                .build()
                .parseClaimsJws(token)
                .getBody();
        //바디에 여러정보가 있지만 subject만 꺼내서 확인해보자
        return claims.getSubject();

    }

    public Claims getClaims(String token) {
        return Jwts.parserBuilder()
                .setSigningKey(DatatypeConverter.parseBase64Binary(SCRETE_KEY))
                .build()
                .parseClaimsJws(token)
                .getBody();
    }

}
