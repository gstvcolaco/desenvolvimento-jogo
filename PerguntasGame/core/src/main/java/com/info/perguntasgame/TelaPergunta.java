public class TelaPergunta implements Screen {

    private SpriteBatch batch;
    private BitmapFont font;
    private Array<Pergunta> perguntas;
    private Pergunta perguntaAtual;
    private int perguntaIndex = 0;
    private boolean carregando = true;

    public TelaPergunta() {
        batch = new SpriteBatch();
        font = new BitmapFont();

        PerguntaService service = new PerguntaService();
        service.buscarPerguntas("https://seuservidor.com/api/perguntas", new PerguntaService.Callback() {
            @Override
            public void onSuccess(Array<Pergunta> resultado) {
                perguntas = resultado;
                if (perguntas.size > 0) {
                    perguntaAtual = perguntas.get(0);
                }
                carregando = false;
            }

            @Override
            public void onError(Throwable t) {
                System.out.println("Erro ao buscar perguntas: " + t.getMessage());
                carregando = false;
            }
        });
    }

    @Override
    public void render(float delta) {
        Gdx.gl.glClear(GL20.GL_COLOR_BUFFER_BIT);
        batch.begin();

        if (carregando) {
            font.draw(batch, "Carregando perguntas...", 100, 300);
        } else if (perguntaAtual != null) {
            font.draw(batch, perguntaAtual.pergunta, 100, 400);
            String[] alternativas = perguntaAtual.getAlternativas();
            for (int i = 0; i < alternativas.length; i++) {
                font.draw(batch, (i + 1) + ") " + alternativas[i], 100, 350 - i * 40);
            }

            if (Gdx.input.isKeyJustPressed(Input.Keys.NUM_1)) verificarResposta(0);
            if (Gdx.input.isKeyJustPressed(Input.Keys.NUM_2)) verificarResposta(1);
            if (Gdx.input.isKeyJustPressed(Input.Keys.NUM_3)) verificarResposta(2);
            if (Gdx.input.isKeyJustPressed(Input.Keys.NUM_4)) verificarResposta(3);
        } else {
            font.draw(batch, "Fim das perguntas!", 100, 300);
        }

        batch.end();
    }

    private void verificarResposta(int index) {
        String[] alternativas = perguntaAtual.getAlternativas();
        if (alternativas[index].equalsIgnoreCase(perguntaAtual.resposta)) {
            System.out.println("✅ Acertou!");
        } else {
            System.out.println("❌ Errou!");
        }

        perguntaIndex++;
        if (perguntaIndex < perguntas.size) {
            perguntaAtual = perguntas.get(perguntaIndex);
        } else {
            perguntaAtual = null;
        }
    }

    @Override public void resize(int width, int height) {}
    @Override public void show() {}
    @Override public void hide() {}
    @Override public void pause() {}
    @Override public void resume() {}
    @Override public void dispose() {
        batch.dispose();
        font.dispose();
    }
}
