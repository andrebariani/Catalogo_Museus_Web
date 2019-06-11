package grupo8.catalogo.museu.app.repositories;

import java.util.Collection;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import grupo8.catalogo.museu.app.models.*;

@Repository
public interface ColecaoRepository extends JpaRepository<Colecao, Long>{
    @Query(value = "SELECT * FROM recuperarTipoCol(':pCod%');", nativeQuery = true)
    Iterable<Object[]> findByColecaoCategoria(@Param("pCod") String cod);

    @Query(value = "SELECT * FROM COLECAO WHERE cod_mus = :pCod", nativeQuery = true)
    Collection<Colecao> listColecaoByMuseu(@Param("pCod") int cod);

    Collection<Colecao> findByNome(String nome);
    Iterable<Object[]> findByTipoIgnoreCaseContaining(String tipo);
}