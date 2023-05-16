package com.easyJob.easyJob.dto.request;


import javax.validation.constraints.NotNull;
import java.util.Objects;

public class EnderecosDtoRequest {

    @NotNull(message = "Logradouro não pode ser nulo!")
    private String logradouro;
    @NotNull(message = "Numero não pode ser nulo!")
    private String numero;
    private String complemento;
    @NotNull(message = "Bairro não pode ser nulo!")
    private String bairro;
    @NotNull(message = "Cidade não pode ser nulo!")
    private String cidade;
    @NotNull(message = "Estado não pode ser nulo!")
    private String estado;
    @NotNull(message = "Ce não pode ser nulo!")
    private String cep;

    public String getLogradouro() {
        return logradouro;
    }

    public void setLogradouro(String logradouro) {
        this.logradouro = logradouro;
    }

    public String getNumero() {
        return numero;
    }

    public void setNumero(String numero) {
        this.numero = numero;
    }

    public String getComplemento() {
        return complemento;
    }

    public void setComplemento(String complemento) {
        this.complemento = complemento;
    }

    public String getBairro() {
        return bairro;
    }

    public void setBairro(String bairro) {
        this.bairro = bairro;
    }

    public String getCidade() {
        return cidade;
    }

    public void setCidade(String cidade) {
        this.cidade = cidade;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public String getCep() {
        return cep;
    }

    public void setCep(String cep) {
        this.cep = cep;
    }

//    public EnderecosDtoRequest UPPERCASE() {
//        this.logradouro = Objects.isNull(this.logradouro) ? this.logradouro : this.logradouro.toUpperCase();
//        this.bairro = Objects.isNull(this.bairro) ? this.bairro : this.bairro.toUpperCase();
//        this.complemento = Objects.isNull(this.complemento) ? this.complemento : this.complemento.toUpperCase();
//        this.cidade = Objects.isNull(this.cidade) ? this.cidade : this.cidade.toUpperCase();
//        this.estado = Objects.isNull(this.estado) ? this.estado : this.estado.toUpperCase();
//        return this;
//    }

}
