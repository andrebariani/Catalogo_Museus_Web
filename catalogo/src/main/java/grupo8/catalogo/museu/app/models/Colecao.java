package grupo8.catalogo.museu.app.models;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Embeddable
@Table(name = "COLECAO")
public class Colecao {

    @Id
    @Column(name = "cod_col")
    private int cod;

    @Column(name = "nome_col")
    private String nome;

    @Column(name = "tipo_col")
    private String tipo;

    @Column(name = "horario_exib")
    private String horario;

    @Column(name = "idioma")
    private String idioma;

    @ManyToOne
    @JoinColumn(name = "cod_mus")
    private Museu museu;

    public int getCod() {
        return cod;
    }

    public void setCod(int cod) {
        this.cod = cod;
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

    public String getIdioma() {
        return idioma;
    }

    public void setIdioma(String idioma) {
        this.idioma = idioma;
    }

    public Museu getMuseu() {
        return museu;
    }

    public void setMuseu(Museu museu) {
        this.museu = museu;
    }

}
