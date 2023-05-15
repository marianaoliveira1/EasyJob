package com.easyJob.easyJob.models;

import javax.persistence.*;

@Entity
@Table(name = "TB05_PROFESSORES")
@SequenceGenerator(name = "TB05_PROFESSORES_TB05_COD_PROFESSORES_SEQ", sequenceName = "TB05_PROFESSORES_TB05_COD_PROFESSORES_SEQ",allocationSize = 1)
public class Professor {
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "TB05_PROFESSORES_TB05_COD_PROFESSORES_SEQ")
    @Column(name = "TB05_COD_PROFESSORES")
    private Long id;

    @Column(name = "TB05_NOME")
    private String nome;
    @Column(name = "TB05_SENHA")
    private String senha;

    @Column(name = "TB05_EMAIL")
    private String email;

    @ManyToOne
    @JoinColumn(name = "FKTB05TB01_COD_ENDERECOS")
    private Enderecos enderecos;

    @Column(name = "TB05_TELEFONE")
    private String telefone;

    @ManyToOne
    @JoinColumn(name = "FKTB05TB02_COD_MATERIAS")
    private Materias materias;
    @ManyToOne
    @JoinColumn(name = "FKTB05TB03_COD_TIPO_USUARIO")
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

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Enderecos getEnderecos() {
        return enderecos;
    }

    public void setEnderecos(Enderecos enderecos) {
        this.enderecos = enderecos;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public Materias getMaterias() {
        return materias;
    }

    public void setMaterias(Materias materias) {
        this.materias = materias;
    }

    public TipoUsuario getTipoUsuario() {
        return tipoUsuario;
    }

    public void setTipoUsuario(TipoUsuario tipoUsuario) {
        this.tipoUsuario = tipoUsuario;
    }
}
