package com.info.perguntasgame;

import com.badlogic.gdx.ApplicationAdapter;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.utils.ScreenUtils;

/** {@link com.badlogic.gdx.ApplicationListener} implementation shared by all platforms. */
public class PerguntasGame extends ApplicationAdapter {
    private SpriteBatch batch;
    private Texture image;
    private Texture Bley;
    private Texture BleyCarregar;
    private Texture Cassio;
    private Texture Cosmoski;
    private Texture CosmoskiCarregar;
    private Texture Diego;
    private Texture DiegoCarregar;
    private Texture Fundo;
    private Texture Lucio;
    private Texture LucioCarregar;
    private Texture Pacheco;
    private Texture PachecoCarregar;
    private Texture Pergunta;
    private Texture Resposta;
    private Texture PoderCarregar;
    private Texture PoderEmitido;
  
    int contador;


    @Override
    public void create() {
        contador=0;
     
        batch = new SpriteBatch();
        image = new Texture("libgdx.png");
        Pergunta = new Texture("Pergunta.png");
        Resposta = new Texture("Resposta.png");
        PoderCarregar = new Texture("PoderCarregar.png");
        PoderEmitido = new Texture("PoderEmitido.png");
        Bley = new Texture("Bley.png");
        BleyCarregar = new Texture("BleyCarregar.png");
        Cassio = new Texture("Cassio.png");
        Cosmoski = new Texture("Cosmoski.png");
        CosmoskiCarregar = new Texture("CosmoskiCarregar.png");
        Diego = new Texture("Diego.png");
        DiegoCarregar = new Texture("DiegoCarregar.png");
        Fundo = new Texture("Fundo.png");
        Lucio = new Texture("Lucio.png");
        LucioCarregar = new Texture("LucioCarregar.png");
        Pacheco = new Texture("Pacheco.png");
        PachecoCarregar = new Texture("PachecoCarregar.png");
    
    }

    @Override
    public void render() {
        ScreenUtils.clear(0.15f, 0.15f, 0.2f, 1f);
        contador++;
        batch.begin();
        batch.draw(Fundo, 00, 0,800,600);
        batch.draw(Pacheco, 10,20,150,300);
        batch.draw(Pergunta, 30, 350,600,200);
        /*batch.draw(Resposta, 100, 400,600,400);
        batch.draw(Resposta, 300, 400,600,400);
        batch.draw(Resposta, 400, 400,600,400);
        batch.draw(Resposta, 500, 400,600,400);*/
        if (contador<100){
            batch.draw(Lucio, 480,20,150,320);
        }else{
            batch.draw(LucioCarregar, 480,20,150,320);
            batch.draw(PoderCarregar, 500,220,80,80);
        }
        if (contador>300)contador=0;
     
        batch.end();
    }

    @Override
    public void dispose() {
        batch.dispose();
        image.dispose();
    }
    private void selecionarResposta{
        if(Gdx.input.isKeyJustPressed(Input.Keys.NUM_1)){
            
        }
    }
    }
}
