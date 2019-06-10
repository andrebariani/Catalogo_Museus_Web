package grupo8.catalogo.museu.app.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import grupo8.catalogo.museu.app.models.*;

@Repository
public interface ColecaoRepository extends JpaRepository<Colecao, Long>{
    @Query(value = "SELECT 0 as dtype, nome_mus AS Nome_do_museu, nome_col AS Nome_coleção, tipo_col AS Tipo_coleção,"+
                   "idioma AS Idioma, preco_ent AS Preço_entrada FROM colecao as c LEFT OUTER JOIN museu as m" + 
                   "ON (lower(tipo_col) LIKE ':pCod %')"+
                   "WHERE m.cod_mus = c.cod_mus", nativeQuery = true)
    Iterable<Object[]> findByColecaoCategoria(@Param("pCod") String cod);

    @Query(value = "SELECT * FROM COLECAO WHERE cod_mus = :pCod", nativeQuery = true)
    List<Colecao> listColecaoByMuseu(@Param("pCod") int cod);
}