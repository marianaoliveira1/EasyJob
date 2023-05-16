package com.easyJob.easyJob.exceptions;

import java.util.function.Supplier;

public class ConflitoException extends RuntimeException implements Supplier<ConflitoException> {

    private String mensagem;

    public ConflitoException(String message){

        super(message);
        this.mensagem = message;
    }

    @Override
    public ConflitoException get() {
        return new ConflitoException(mensagem);
    }
}
