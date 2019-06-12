package grupo8.catalogo.museu.app.repositories;

import java.util.Collection;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import grupo8.catalogo.museu.app.models.Colecao;

@Repository
public interface ColecaoRepository extends PagingAndSortingRepository<Colecao, Long>{
    @Query(value = "SELECT * FROM recuperartipocol(:pCod);", nativeQuery = true)
    Iterable<Object[]> findByColecaoCategoria(@Param("pCod") String cod);

    @Query(value = "SELECT * FROM COLECAO WHERE cod_mus = :pCod", nativeQuery = true)
    Collection<Colecao> listColecaoByMuseu(@Param("pCod") int cod);

    Page<Colecao> findByNomeIgnoreCaseContaining(String nome, Pageable page);
    Page<Colecao> findByTipoIgnoreCaseContaining(String tipo, Pageable page);
}