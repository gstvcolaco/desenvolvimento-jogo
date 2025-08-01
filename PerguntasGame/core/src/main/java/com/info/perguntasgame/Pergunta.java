public class Pergunta {
    public String pergunta;
    public String alt1;
    public String alt2;
    public String alt3;
    public String alt4;
    public String resposta;

    public String[] getAlternativas(){
        return new String[]{alt1,alt2,alt3,alt4};
    }
}
