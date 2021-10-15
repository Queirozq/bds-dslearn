package com.devsuperior.dslearnbds.services.exceptions;

//error 401 OAuth2
public class UnauthorizedException extends RuntimeException{

    public UnauthorizedException(String msg){
        super(msg);
    }
}
