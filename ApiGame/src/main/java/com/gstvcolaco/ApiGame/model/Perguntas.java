package com.gstvcolaco.ApiGame.model;
import javax.annotation.processing.Generated;


import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;


@Entity
public class Perguntas {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Integer id;
    String pergunta;
    String alt1;
    String alt2;
    String alt3;
    String alt4;
    String resposta;


    public String getAlt1() {
        return alt1;
    }
    public void setAlt1(String alt1) {
        this.alt1 = alt1;
    }
    public String getAlt2() {
        return alt2;
    }
    public void setAlt2(String alt2) {
        this.alt2 = alt2;
    }
    public String getAlt3() {
        return alt3;
    }
    public void setAlt3(String alt3) {
        this.alt3 = alt3;
    }
    public String getAlt4() {
        return alt4;
    }
    public void setAlt4(String alt4) {
        this.alt4 = alt4;
    }
    public String getResposta() {
        return resposta;
    }
    public void setResposta(String resposta) {
        this.resposta = resposta;
    }
    public Integer getId() {
        return id;
    }
    public void setId(Integer id) {
        this.id = id;
    }
    public String getPergunta() {
        return pergunta;
    }
    public void setPergunta(String pergunta) {
        this.pergunta = pergunta;
    }

}

