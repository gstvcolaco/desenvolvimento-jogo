import com.badlogic.gdx.Net;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.net.HttpRequestBuilder;
import com.badlogic.gdx.net.HttpResponse;
import com.badlogic.gdx.net.HttpResponseListener;
import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.Array;

public class PerguntaService {

    public interface Callback {
        void onSuccess(Array<Pergunta> perguntas);
        void onError(Throwable t);
    }

    public void buscarPerguntas(String url, Callback callback) {
        HttpRequestBuilder builder = new HttpRequestBuilder();
        Net.HttpRequest request = builder.newRequest().method(Net.HttpMethods.GET).url(url).build();

        Gdx.net.sendHttpRequest(request, new HttpResponseListener() {
            @Override
            public void handleHttpResponse(HttpResponse httpResponse) {
                String json = httpResponse.getResultAsString();
                Json jsonParser = new Json();
                try {
                    Array<Pergunta> perguntas = jsonParser.fromJson(Array.class, Pergunta.class, json);
                    callback.onSuccess(perguntas);
                } catch (Exception e) {
                    callback.onError(e);
                }
            }

            @Override public void failed(Throwable t) {
                callback.onError(t);
            }

            @Override public void cancelled() {
                callback.onError(new Exception("Requisição cancelada"));
            }
        });
    }
}
