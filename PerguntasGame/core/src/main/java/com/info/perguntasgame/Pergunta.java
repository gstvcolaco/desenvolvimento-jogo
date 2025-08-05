package com.info.perguntasgame;

public class Pergunta {
    public String texto;
    public String[] alternativas;
    public String respostaCorreta;


    public Pergunta(String texto, String alt1, String alt2, String alt3, String alt4, String respostaCorreta) {
        this.texto = texto;
        this.alternativas = new String[] { alt1, alt2, alt3, alt4 };
        this.respostaCorreta = respostaCorreta;
    }

    public Pergunta() {
    }
}
