package com.info.perguntasgame;

import com.badlogic.gdx.ApplicationAdapter;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.Input;
import com.badlogic.gdx.Net.HttpRequest;
import com.badlogic.gdx.Net.HttpResponse;
import com.badlogic.gdx.Net.HttpResponseListener;
import com.badlogic.gdx.Net.HttpMethods;
import com.badlogic.gdx.graphics.OrthographicCamera;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.g2d.BitmapFont;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.utils.JsonReader;
import com.badlogic.gdx.utils.JsonValue;
import com.badlogic.gdx.utils.ScreenUtils;

public class PerguntasGame extends ApplicationAdapter {
    private SpriteBatch batch;
    private BitmapFont font;

    private Texture Fundo, PerguntaImg, Resposta;
    private Texture Lucio, LucioCarregar, Pacheco, PoderCarregar;
    private OrthographicCamera camera;


    private Pergunta perguntaAtual;
    private int contador;

    @Override
    public void create() {
        camera = new OrthographicCamera();
        camera.setToOrtho(false,800,600);
        batch = new SpriteBatch();
        font = new BitmapFont();
        contador = 0;

        Fundo = new Texture("Fundo.png");
        PerguntaImg = new Texture("Pergunta.png");
        Resposta = new Texture("Resposta.png");
        Lucio = new Texture("Lucio.png");
        LucioCarregar = new Texture("LucioCarregar.png");
        Pacheco = new Texture("Pacheco.png");
        PoderCarregar = new Texture("PoderCarregar.png");

        buscarPerguntaDaAPI();
    }

    @Override
    public void render() {
        camera.update();
        batch.setProjectionMatrix(camera.combined);
        camera.position.set(400,300,0);
        ScreenUtils.clear(0.15f, 0.15f, 0.2f, 1f);
        contador++;

        batch.begin();

        batch.draw(Fundo, 0, 0, 800, 600);
        batch.draw(Pacheco, 10, 20, 150, 300);
        batch.draw(PerguntaImg, 35, 400, 600, 200);

        if (perguntaAtual != null) {
            font.draw(batch, perguntaAtual.texto, 50, 520);
            for (int i = 0; i < perguntaAtual.alternativas.length; i++) {
                font.draw(batch, (i + 1) + ": " + perguntaAtual.alternativas[i], 70, 480 - i * 40);
            }
        } else {
            font.draw(batch, "Carregando pergunta...", 50, 520);
        }

        if (contador < 100) {
            batch.draw(Lucio, 480, 20, 150, 320);
        } else {
            batch.draw(LucioCarregar, 480, 20, 150, 320);
            batch.draw(PoderCarregar, 500, 220, 80, 80);
        }

        batch.end();

        if (contador > 600) {
            contador = 0;
            buscarPerguntaDaAPI();
        }

        selecionarResposta();
    }

    private void selecionarResposta() {
        if (perguntaAtual == null) return;

        if (Gdx.input.isKeyJustPressed(Input.Keys.NUM_1)) verificarResposta(0);
        if (Gdx.input.isKeyJustPressed(Input.Keys.NUM_2)) verificarResposta(1);
        if (Gdx.input.isKeyJustPressed(Input.Keys.NUM_3)) verificarResposta(2);
        if (Gdx.input.isKeyJustPressed(Input.Keys.NUM_4)) verificarResposta(3);
    }

    private void verificarResposta(int index) {
        if (index >= 0 && index < perguntaAtual.alternativas.length) {
            String selecionada = perguntaAtual.alternativas[index];
            if (selecionada.equals(perguntaAtual.respostaCorreta)) {
                Gdx.app.log("Resposta", "Correta!");
            } else {
                Gdx.app.log("Resposta", "Errada!");
            }
        }
    }

    private void buscarPerguntaDaAPI() {
        HttpRequest request = new HttpRequest(HttpMethods.GET);
        request.setUrl("http://localhost:8000/api.php");

        Gdx.net.sendHttpRequest(request, new HttpResponseListener() {
            @Override
            public void handleHttpResponse(HttpResponse httpResponse) {
                String json = httpResponse.getResultAsString();
                JsonReader reader = new JsonReader();
                JsonValue root = reader.parse(json);

                perguntaAtual = new Pergunta();
                perguntaAtual.texto = root.getString("texto");

                JsonValue alts = root.get("alternativas");
                perguntaAtual.alternativas = new String[alts.size];
                for (int i = 0; i < alts.size; i++) {
                    perguntaAtual.alternativas[i] = alts.getString(i);
                }

                perguntaAtual.respostaCorreta = root.getString("respostaCorreta");
            }

            @Override
            public void failed(Throwable t) {
                Gdx.app.error("API", "Erro ao buscar pergunta: " + t.getMessage());
            }

            @Override
            public void cancelled() {
                Gdx.app.log("API", "Requisição cancelada.");
            }
        });
    }

    @Override
    public void dispose() {
        batch.dispose();
        font.dispose();
        Fundo.dispose();
        PerguntaImg.dispose();
        Resposta.dispose();
        Lucio.dispose();
        LucioCarregar.dispose();
        Pacheco.dispose();
        PoderCarregar.dispose();
    }
}