package com.easyJob.easyJob.models;

import javax.persistence.*;

@Entity
@Table(name = "TB02_MATERIAS")
@SequenceGenerator(name = "TB02_MATERIAS_TB02_COD_MATERIAS_SEQ", sequenceName = "TB02_MATERIAS_TB02_COD_MATERIAS_SEQ",allocationSize = 1)
public class Materias {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "TB02_MATERIAS_TB02_COD_MATERIAS_SEQ")
    @Column(name = "TB02_COD_MATERIAS")
    private Long id;

    @Column(name = "TB02_DESCRICAO")
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
