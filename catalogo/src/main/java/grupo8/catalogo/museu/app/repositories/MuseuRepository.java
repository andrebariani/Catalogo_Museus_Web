package grupo8.catalogo.museu.app.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import grupo8.catalogo.museu.app.models.*;

// Classe onde as consultas são executadas, tipo um DAO

@Repository
public interface MuseuRepository extends JpaRepository<Museu, Long> {
    @Query(value = "SELECT 0 as dtype, * FROM MUSEU WHERE cod_mus = :pCod ", nativeQuery = true)
    Museu findByMuseuCodigo(@Param("pCod") int cod);

    @Query(value = "SELECT 0 as dtype, *  * FROM museu WHERE nome_mus LIKE ':pCod%'' ", nativeQuery = true)
    Museu findByMuseuNome(@Param("pCod") String cod);
}