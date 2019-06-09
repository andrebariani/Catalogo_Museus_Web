package grupo8.catalogo.museu.app.models;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.DiscriminatorValue;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@DiscriminatorValue("0")
@Table(name = "MUSEU")
public class Museu {
    
    @Id
    @Column(name = "cod_mus")
    private int cod;

    @Column(name = "nome_mus")
    private String nome;

    @Column(name = "email")
    private String email;

    @Column(name = "telefone")
    private String telefone;

    @Column(name = "rua")
    private String rua;

    @Column(name = "numero")
    private String numero;

    @Column(name = "bairro")
    private String bairro;

    @Column(name = "cidade")
    private String cidade;

    @Column(name = "preco_ent")
    private float preco;
    
    // private List<Colecao> colecoes;
    
    // private List<Atividade> atividades;

    // @OneToMany(mappedBy="museu", fetch = FetchType.EAGER, targetEntity = Colecao.class)
    // public List<Colecao> getColecoes() {
    //     if (this.colecoes == null) {
    //         this.colecoes = new ArrayList<>();
    //     }
    //     return this.colecoes;
    // }

    // @OneToMany(mappedBy="museu", fetch = FetchType.EAGER, targetEntity = Atividade.class)
    // public List<Atividade> getAtividades() {
    //     if (this.atividades == null) {
    //         this.atividades = new ArrayList<>();
    //     }
    //     return this.atividades;
    // }

    public void Museu(){
        nome = "";
        email = "";
        telefone = "";
        rua = "";
        numero = "";
        bairro = "";
        cidade = "";
        preco = 0;
    }

    public int getCod() {
        return cod;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public String getRua() {
        return rua;
    }

    public void setRua(String rua) {
        this.rua = rua;
    }

    public String getNumero() {
        return numero;
    }

    public void setNumero(String numero) {
        this.numero = numero;
    }

    public String getBairro() {
        return bairro;
    }

    public void setBairro(String bairro) {
        this.bairro = bairro;
    }

    public String getCidade() {
        return cidade;
    }

    public void setCidade(String cidade) {
        this.cidade = cidade;
    }

    public float getPreco() {
        return preco;
    }

    public void setPreco(float preco) {
        this.preco = preco;
    }
}
