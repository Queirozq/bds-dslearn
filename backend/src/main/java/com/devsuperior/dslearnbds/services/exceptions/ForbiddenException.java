package com.devsuperior.dslearnbds.services.exceptions;

//error 403 OAuth2
public class ForbiddenException extends RuntimeException{

    public ForbiddenException(String msg){
        super(msg);
    }
}
