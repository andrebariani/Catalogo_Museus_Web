package grupo8.catalogo.museu.app.models;

public class Atividade extends Museu {
    private String nome;
    private String tipo;
    private String horario;
    private float preco;
    private Museu museu;
    
    public void Atividade(){
        nome = "";
        tipo = "";
        horario = "";
        preco = 0;
        museu = new Museu();
    }
    
    public void Atividade(Museu m){
        nome = "";
        tipo = "";
        horario = "";
        preco = 0;
        museu = m;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
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

    public float getPreco() {
        return preco;
    }

    public void setPreco(float preco) {
        this.preco = preco;
    }
    
}
