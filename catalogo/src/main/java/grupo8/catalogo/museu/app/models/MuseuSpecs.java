package grupo8.catalogo.museu.app.models;

import org.springframework.data.jpa.domain.Specification;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

public interface MuseuSpecs extends JpaSpecificationExecutor<Museu> {
    public static Specification<Museu> museuLessThanCod(int cod) {
        return (root, query, cb) -> {
            return cb.lessThan(root.get(Museu_.cod), cod);
        };
    }

    public static Specification<Museu> museuGreaterThanCod(int cod) {
        return (root, query, cb) -> {
            return cb.greaterThan(root.get(Museu_.cod), cod);
        };
    }
    
    public static Specification<Museu> museuLikeNome(String nome) {
        return (root, query, cb) -> {
            return cb.like(root.get(Museu_.nome), "%" + nome + "%");
        };
    }

    public static Specification<Museu> museuLikeEmail(String email) {
        return (root, query, cb) -> {
            return cb.like(root.get(Museu_.email), "%" + email + "%");
        };
    }

    public static Specification<Museu> museuLikeTelefone(String telefone) {
        return (root, query, cb) -> {
            return cb.like(root.get(Museu_.telefone), "%" + telefone + "%");
        };
    }

    public static Specification<Museu> museuLessThanPreco(float preco) {
        return (root, query, cb) -> {
            return cb.lessThanOrEqualTo(root.get(Museu_.preco), preco);
        };
    }

    public static Specification<Museu> museuLikeRua(String rua) {
        return (root, query, cb) -> {
            return cb.like(root.get(Museu_.rua), "%" + rua + "%");
        };
    }
    
    public static Specification<Museu> museuLikeCidade(String cidade) {
        return (root, query, cb) -> {
            return cb.like(root.get(Museu_.cidade), "%" + cidade + "%");
        };
    }

    public static Specification<Museu> museuLikeNumero(String numero) {
        return (root, query, cb) -> {
            return cb.like(root.get(Museu_.numero), "%" + numero + "%");
        };
    }

    public static Specification<Museu> museuLikeBairro(String bairro) {
        return (root, query, cb) -> {
            return cb.like(root.get(Museu_.bairro), "%" + bairro + "%");
        };
    }
}