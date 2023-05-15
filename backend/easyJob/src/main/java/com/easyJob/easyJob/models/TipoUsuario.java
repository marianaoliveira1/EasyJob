package com.easyJob.easyJob.models;

import javax.persistence.*;


@Entity
@Table(name = "TB03_TIPOUSUARIO")
@SequenceGenerator(name = "TB03_TIPOUSUARIO_TB03_COD_TIPO_USUARIO_SEQ", sequenceName = "TB03_TIPOUSUARIO_TB03_COD_TIPO_USUARIO_SEQ",allocationSize = 1)
public class TipoUsuario {
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "TB03_TIPOUSUARIO_TB03_COD_TIPO_USUARIO_SEQ")
    @Column(name = "TB03_COD_TIPO_USUARIO")
    private Long id;

    @Column(name = "TB03_DESCRICAO")
    private String descricao;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }
}
