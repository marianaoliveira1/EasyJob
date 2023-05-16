package com.easyJob.easyJob.models;


import javax.persistence.*;


@Entity
@Table(name = "TB01_ENDERECOS")
@SequenceGenerator(name = "TB01_ENDERECOS_TB01_COD_ENDERECOS_SEQ", sequenceName = "TB01_ENDERECOS_TB01_COD_ENDERECOS_SEQ",allocationSize = 1)
public class Enderecos {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "TB01_ENDERECOS_TB01_COD_ENDERECOS_SEQ")
    @Column(name = "TB01_COD_ENDERECOS")
    private Long id;

    @Column(name = "TB01_LOGRADOURO")
    private String logradouro;

    @Column(name = "TB01_NUMERO")
    private String numero;

    @Column(name = "TB01_COMPLEMENTO")
    private String complemento;

    @Column(name = "TB01_BAIRRO")
    private String bairro;

    @Column(name = "TB01_CIDADE")
    private String cidade;

    @Column(name = "TB01_ESTADO")
    private String estado;

    @Column(name = "TB01_CEP")
    private String cep;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

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
}
