package grupo8.catalogo.museu.app.repositories;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import grupo8.catalogo.museu.app.models.*;

@Repository
public interface AtividadeRepository extends PagingAndSortingRepository<Atividade, Long>{
    @Query(value = "SELECT * FROM recuperarPrecoAtiv(:pCod);", nativeQuery = true)
    Iterable<Object[]> findByAtividadePreco(@Param("pCod") float cod);
}