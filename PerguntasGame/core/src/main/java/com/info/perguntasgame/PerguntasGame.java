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

    @Override
    public void create() {
        batch = new SpriteBatch();
        image = new Texture("libgdx.png");
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
        batch.begin();
        batch.draw(Fundo, 00, 0,800,600);
        batch.draw(Pacheco, 10,20,150,300);
        batch.draw(Lucio, 480,20,150,320);
        batch.end();
    }

    @Override
    public void dispose() {
        batch.dispose();
        image.dispose();
    }
}
