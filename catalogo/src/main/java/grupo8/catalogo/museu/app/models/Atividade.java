package grupo8.catalogo.museu.app.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "ATIVIDADE")
public class Atividade extends Museu {

    @Id
    private int cod;

    @Column(name = "nome_ativ")
    private String nome;

    @Column(name = "tipo_ativ")
    private String tipo;

    @Column(name = "horario_ativ")
    private String horario;

    @Column(name = "preco_ativ")
    private float preco;

    @ManyToOne(fetch = FetchType.EAGER, optional = false)
    @JoinColumn(name = "cod_ativ", nullable = false)
    private Museu museu;
    
    public void Atividade(){
        nome = "";
        tipo = "";
        horario = "";
        preco = 0;
        museu = new Museu();
    }

    public int getId() {
        return this.cod;
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
        return this.museu;
    }
    
}
