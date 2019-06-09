package grupo8.catalogo.museu.app.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "COLECAO")
public class Colecao extends Museu {
    @Id
    private int cod;

    @Column(name = "nome_col")
    private String nome;

    @Column(name = "tipo_col")
    private String tipo;

    @Column(name = "horario_exib")
    private String horario;

    @Column(name = "idioma")
    private String idioma;

    @ManyToOne(fetch = FetchType.EAGER, optional = false)
    @JoinColumn(name = "cod_col", nullable = false)
    private Museu museu;
    
    public void Colecao(){
        nome = "";
        idioma = "";
        tipo = "";
        horario = "";
        museu = new Museu();
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

    public Museu getMuseu() {
        return this.museu;
    }
}
