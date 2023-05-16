package com.easyJob.easyJob.models;


import javax.persistence.*;

@Entity
@Table(name = "TB04_ALUNOS")
@SequenceGenerator(name = "TB04_ALUNOS_TB04_COD_ALUNOS_SEQ", sequenceName = "TB04_ALUNOS_TB04_COD_ALUNOS_SEQ",allocationSize = 1)
public class Alunos {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "TB04_ALUNOS_TB04_COD_ALUNOS_SEQ")
    @Column(name = "TB04_COD_ALUNOS")
    private Long id;

    @Column(name = "TB04_NOME")
    private String nome;
    @Column(name = "TB04_SENHA")
    private String senha;

    @Column(name = "TB04_EMAIL")
    private String email;

    @ManyToOne
    @JoinColumn(name = "FKTB04TB01_COD_ENDERECOS")
    private Enderecos enderecos;

    @Column(name = "TB04_TELEFONE")
    private String telefone;

    @ManyToOne
    @JoinColumn(name = "FKTB04TB03_COD_TIPO_USUARIO")
    private TipoUsuario tipoUsuario;

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

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public Enderecos getEnderecos() {
        return enderecos;
    }

    public void setEnderecos(Enderecos enderecos) {
        this.enderecos = enderecos;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public TipoUsuario getTipoUsuario() {
        return tipoUsuario;
    }

    public void setTipoUsuario(TipoUsuario tipoUsuario) {
        this.tipoUsuario = tipoUsuario;
    }
}
