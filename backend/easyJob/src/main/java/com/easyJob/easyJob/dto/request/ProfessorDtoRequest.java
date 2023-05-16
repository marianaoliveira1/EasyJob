package com.easyJob.easyJob.dto.request;

import com.easyJob.easyJob.models.Materias;

public class ProfessorDtoRequest {
    private String nome;
    private String email;
    private String senha;
    private String telefone;
    private Long tipoUsuarioId;

    private EnderecosDtoRequest enderecos;
    private Materias materiasDtoRequest;

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

    public EnderecosDtoRequest getEnderecos() {
        return enderecos;
    }

    public void setEnderecos(EnderecosDtoRequest enderecos) {
        this.enderecos = enderecos;
    }

    public Materias getMateriasDtoRequest() {
        return materiasDtoRequest;
    }

    public void setMateriasDtoRequest(Materias materiasDtoRequest) {
        this.materiasDtoRequest = materiasDtoRequest;
    }
}
