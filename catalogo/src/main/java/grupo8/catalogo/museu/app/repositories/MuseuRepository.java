package grupo8.catalogo.museu.app.repositories;

import java.util.Optional;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import grupo8.catalogo.museu.app.models.*;

// Classe onde as consultas são executadas, tipo um DAO

@Repository
public interface MuseuRepository extends PagingAndSortingRepository<Museu, Long> {
    Optional<Museu> findByCod(int cod);

    @Query(value = "SELECT * FROM museu WHERE nome_mus LIKE '%:pCod%' ", nativeQuery = true)
    Museu findByMuseuNome(@Param("pCod") String cod);
}