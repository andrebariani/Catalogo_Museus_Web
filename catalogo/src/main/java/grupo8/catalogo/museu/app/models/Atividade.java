package grupo8.catalogo.museu.app.models;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Embeddable
@Table(name = "ATIVIDADE")
public class Atividade {

    @Id
    @Column(name = "cod_ativ")
    private int cod;

    @Column(name = "nome_ativ")
    private String nome;

    @Column(name = "tipo_ativ")
    private String tipo;

    @Column(name = "horario_ativ")
    private String horario;

    @Column(name = "preco_ativ")
    private float preco;

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

    public float getPreco() {
        return preco;
    }

    public void setPreco(float preco) {
        this.preco = preco;
    }

    public Museu getMuseu() {
        return museu;
    }

    public void setMuseu(Museu museu) {
        this.museu = museu;
    }

}
