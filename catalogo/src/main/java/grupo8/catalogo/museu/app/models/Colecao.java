package grupo8.catalogo.museu.app.models;

public class Colecao extends Museu {
    private String nome;
    private String idioma;
    private String tipo;
    private String horario;
    private Museu museu;
    
    public void Colecao(){
        nome = "";
        idioma = "";
        tipo = "";
        horario = "";
        museu = new Museu();
    }
    
    public void Colecao(Museu m){
        nome = "";
        idioma = "";
        tipo = "";
        horario = "";
        museu = m;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getIdioma() {
        return idioma;
    }

    public void setIdioma(String idioma) {
        this.idioma = idioma;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public String getHorario() {
        return horario;
    }

    public void setHorario(String horario) {
        this.horario = horario;
    }
    
    
}
