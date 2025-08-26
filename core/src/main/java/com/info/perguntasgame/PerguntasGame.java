package com.info.perguntasgame;

import com.badlogic.gdx.ApplicationAdapter;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.Input;
import com.badlogic.gdx.Net.HttpRequest;
import com.badlogic.gdx.Net.HttpResponse;
import com.badlogic.gdx.Net.HttpResponseListener;
import com.badlogic.gdx.audio.Music;
import com.badlogic.gdx.audio.Sound;
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
    private Music musicajogo;
    private Sound somPoder, Cassio;

    private Texture Fundo, PerguntaImg, Resposta;
    private Texture Lucio, LucioCarregar, Pacheco, PoderCarregar;
    private OrthographicCamera camera;

    private Pergunta perguntaAtual;
    private boolean respondeu;

    @Override
    public void create() {
        camera = new OrthographicCamera();
        camera.setToOrtho(false, 800, 600);
        batch = new SpriteBatch();
        font = new BitmapFont();

        // Música de fundo


        // Texturas
        Fundo = new Texture("Fundo.png");
        PerguntaImg = new Texture("Pergunta.png");
        Resposta = new Texture("Resposta.png");
        Lucio = new Texture("Lucio.png");
        LucioCarregar = new Texture("LucioCarregar.png");
        Pacheco = new Texture("Pacheco.png");
        PoderCarregar = new Texture("PoderCarregar.png");

        respondeu = false;
        buscarPerguntaDaAPI();
    }

    @Override
    public void render() {
        camera.update();
        batch.setProjectionMatrix(camera.combined);
        camera.position.set(400, 300, 0);
        ScreenUtils.clear(0.15f, 0.15f, 0.2f, 1f);

        batch.begin();

        batch.draw(Fundo, 0, 0, 800, 600);
        batch.draw(Pacheco, 10, 20, 150, 300);
        batch.draw(PerguntaImg, 35, 400, 600, 200);

        if (perguntaAtual != null) {
            font.draw(batch, perguntaAtual.pergunta, 50, 520);
            for (int i = 0; i < perguntaAtual.alternativas.length; i++) {
                font.draw(batch, (i + 1) + ": " + perguntaAtual.alternativas[i], 70, 480 - i * 40);
            }
        } else {
            font.draw(batch, "Carregando pergunta...", 50, 520);
        }

        if (!respondeu) {
            batch.draw(Lucio, 480, 20, 150, 320);
        } else {
            batch.draw(LucioCarregar, 480, 20, 150, 320);
            batch.draw(PoderCarregar, 500, 220, 80, 80);
        }

        batch.end();

        selecionarResposta();

        musicajogo = Gdx.audio.newMusic(Gdx.files.internal("beatFundo.ogg"));
        musicajogo.setLooping(true);
        musicajogo.play();

        // Efeitos sonoros
       // somPoder = Gdx.audio.newSound(Gdx.files.internal("SomPoder.mp3"));
       // Cassio   = Gdx.audio.newSound(Gdx.files.internal("Cassio.mp3"));
    }

    private void selecionarResposta() {
        if (perguntaAtual == null || respondeu) return;

        if (Gdx.input.isKeyJustPressed(Input.Keys.NUM_1)) verificarResposta(0);
        if (Gdx.input.isKeyJustPressed(Input.Keys.NUM_2)) verificarResposta(1);
        if (Gdx.input.isKeyJustPressed(Input.Keys.NUM_3)) verificarResposta(2);
        if (Gdx.input.isKeyJustPressed(Input.Keys.NUM_4)) verificarResposta(3);
    }

    private void verificarResposta(int index) {
        if (index >= 0 && index < perguntaAtual.alternativas.length) {
            respondeu = true;

            String selecionada = perguntaAtual.alternativas[index];
            if (selecionada.equals(perguntaAtual.respostaCorreta)) {
                Gdx.app.log("Resposta", "Correta!");
                somPoder.play();  
            } else {
                Gdx.app.log("Resposta", "Errada!");
                Cassio.play();    
            }

           
            Gdx.app.postRunnable(() -> {
                try {
                    Thread.sleep(1000); 
                } catch (InterruptedException ignored) {}

                respondeu = false;
                buscarPerguntaDaAPI();
            });
        }
    }

    private void buscarPerguntaDaAPI() {
        HttpRequest request = new HttpRequest(HttpMethods.GET);
        request.setUrl("http://192.168.193.168:8080/perguntas");
    
        Gdx.net.sendHttpRequest(request, new HttpResponseListener() {
            @Override
            public void handleHttpResponse(HttpResponse httpResponse) {
                String json = httpResponse.getResultAsString();
                JsonReader reader = new JsonReader();
                JsonValue root = reader.parse(json);
    
                perguntaAtual = new Pergunta();
                perguntaAtual.pergunta = root.getString("pergunta");
    
                perguntaAtual.alternativas = new String[4];
                perguntaAtual.alternativas[0] = root.getString("alt1");
                perguntaAtual.alternativas[1] = root.getString("alt2");
                perguntaAtual.alternativas[2] = root.getString("alt3");
                perguntaAtual.alternativas[3] = root.getString("alt4");
    
                perguntaAtual.respostaCorreta = root.getString("resposta");
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
        musicajogo.dispose();
       // somPoder.dispose();
       // Cassio.dispose();
    }
}
