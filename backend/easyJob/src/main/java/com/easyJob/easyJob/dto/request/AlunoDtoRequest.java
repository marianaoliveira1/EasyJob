package com.easyJob.easyJob.dto.request;

import com.easyJob.easyJob.dto.response.EnderecosDtoResponse;
import com.easyJob.easyJob.models.Enderecos;

import java.util.List;
import java.util.Objects;

public class AlunoDtoRequest {
    private String nome;
    private String email;
    private String senha;
    private String telefone;
    private Long tipoUsuarioId;

    private EnderecosDtoRequest enderecos;

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public EnderecosDtoRequest getEnderecos() {
        return enderecos;
    }

    public void setEnderecos(EnderecosDtoRequest enderecos) {
        this.enderecos = enderecos;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public Long getTipoUsuarioId() {
        return tipoUsuarioId;
    }

    public void setTipoUsuarioId(Long tipoUsuarioId) {
        this.tipoUsuarioId = tipoUsuarioId;
    }

//    public AlunoDtoRequest UPPERCASE() {
//        this.email = Objects.isNull(this.email) ? this.email : this.email.toUpperCase();
//        this.nome = Objects.isNull(this.nome) ? this.nome : this.nome.toUpperCase();
//        this.telefone = Objects.isNull(this.telefone) ? this.telefone : this.telefone.toUpperCase();
//        return this;
//    }

}
