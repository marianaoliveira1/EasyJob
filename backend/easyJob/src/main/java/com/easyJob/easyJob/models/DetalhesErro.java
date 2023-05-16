package com.easyJob.easyJob.models;

// CLASSE USADA APENAS NAS EXECEPTIONS

/**
 created by Emanoel Adolpho on 17/03/2021
 */
public class DetalhesErro {

    private String titulo;
    private Long status;
    private Long timestamp;
    private String menssagemDesenvolvedor;
    private String menssagemUsuario;

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public Long getStatus() {
        return status;
    }

    public void setStatus(Long status) {
        this.status = status;
    }

    public Long getTimestamp() {
        return timestamp;
    }

    public void setTimestamp(Long timestamp) {
        this.timestamp = timestamp;
    }

    public String getMenssagemDesenvolvedor() {
        return menssagemDesenvolvedor;
    }

    public void setMenssagemDesenvolvedor(String menssagemDesenvolvedor) {
        this.menssagemDesenvolvedor = menssagemDesenvolvedor;
    }

    public String getMenssagemUsuario() {
        return menssagemUsuario;
    }

    public void setMenssagemUsuario(String menssagemUsuario) {
        this.menssagemUsuario = menssagemUsuario;
    }
}