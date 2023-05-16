package com.easyJob.easyJob.dto.response;

import com.easyJob.easyJob.models.TipoUsuario;

public class AlunoDtoResponse {

    private Long id;
    private String nome;
    private String email;
    private String senha;
    private EnderecosDtoResponse enderecosDtoResponse;
    private String telefone;
    private String tipoUsuarioDescricao;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

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

    public EnderecosDtoResponse getEnderecosDtoResponse() {
        return enderecosDtoResponse;
    }

    public void setEnderecosDtoResponse(EnderecosDtoResponse enderecosDtoResponse) {
        this.enderecosDtoResponse = enderecosDtoResponse;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public String getTipoUsuarioDescricao() {
        return tipoUsuarioDescricao;
    }

    public void setTipoUsuarioDescricao(String tipoUsuarioDescricao) {
        this.tipoUsuarioDescricao = tipoUsuarioDescricao;
    }
}
