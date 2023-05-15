package com.easyJob.easyJob.dto.request;

import java.util.Objects;

public class MateriasDtoRequest {
    private String descricao;

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

//    public MateriasDtoRequest UPPERCASE() {
//        this.descricao = Objects.isNull(this.descricao) ? this.descricao : this.descricao.toUpperCase();
//        return this;
//    }
}
