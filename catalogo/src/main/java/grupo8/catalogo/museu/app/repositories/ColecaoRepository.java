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
    Colecao findByColecaoCategoria(@Param("pCod") String cod);

    @Query(value = "SELECT 0 as dtype, nome_mus AS Nome_do_museu, nome_col AS Nome_coleção, tipo_col AS Tipo_coleção,"+
                   "idioma AS Idioma, preco_ent AS Preço_entrada FROM colecao as c LEFT OUTER JOIN museu as m" +
                   "ON (lower(nome_col) LIKE ':pCod %')" +
                   "WHERE m.cod_mus = c.cod_mus", nativeQuery = true)
    Colecao findByColecaoNome(@Param("pCod") String cod);
}