package com.msa.kindergarden.security;

import io.jsonwebtoken.Claims;
import io.jsonwebtoken.JwtException;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.security.Keys;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

import javax.crypto.SecretKey;
import java.util.Date;

@Component
public class JwtTokenProvider {
    @Value("${jwt.secret}")
    private String jwtSecret;

    public String generateToken(Claims claims) {
        SecretKey key = getSecretKey();
        return Jwts.builder()
                .setClaims(claims)
                .signWith(key)
                .compact();
    }

    public Claims getClaims(String token) {
        SecretKey key = getSecretKey();
        return Jwts.parserBuilder()
                .setSigningKey(key)
                .build()
                .parseClaimsJws(token)
                .getBody();
    }

    public boolean validateToken(String token) {
        try {
            Jwts.parserBuilder()
                    .setSigningKey(getSecretKey())
                    .build()
                    .parseClaimsJws(token);
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    public String extendTokenExpiration(String token) {
        Claims claims = getClaims(token);
        Date now = new Date();
        Date expiration = new Date(now.getTime() + (1000 * 60 * 60)); // 1시간 연장
        claims.setExpiration(expiration);
        return generateToken(claims);
    }

    public String refreshJwtToken(String token) {
        if (validateToken(token)) {
            return extendTokenExpiration(token);
        } else {
            throw new JwtException("Invalid token");
        }
    }

    private SecretKey getSecretKey() {
        byte[] keyBytes = jwtSecret.getBytes();
        return Keys.hmacShaKeyFor(keyBytes);
    }
}
