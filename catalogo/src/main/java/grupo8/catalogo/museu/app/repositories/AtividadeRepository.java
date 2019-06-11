package grupo8.catalogo.museu.app.repositories;

import java.util.Collection;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import grupo8.catalogo.museu.app.models.*;

@Repository
public interface AtividadeRepository extends JpaRepository<Atividade, Long>{
    @Query(value = "SELECT * FROM recuperarPrecoAtiv(:pCod);", nativeQuery = true)
    Page<Object[]> findByAtividadePreco(@Param("pCod") float cod, Pageable Page);

    @Query(value = "SELECT 0 as dtype, nome_mus AS Nome_do_museu, nome_ativ AS Nome_atividade, tipo_ativ AS Tipo_atividade," + 
                    "cidade AS Cidade, preco_ativ AS Preço_atividade FROM colecao as c LEFT OUTER JOIN museu as m" + 
                    "ON (lower(nome_ativ) LIKE ':pCod %')" + 
                    "WHERE m.cod_mus = c.cod_mus", nativeQuery = true)
    Atividade findByAtividadeNome(@Param("pCod") String cod);

    @Query(value = "SELECT 0 as dtype, * FROM ATIVIDADE WHERE cod_mus = :pCod", nativeQuery = true)
    List<Atividade> listAtividadeByMuseu(@Param("pCod") int cod);

    Collection<Atividade> findByNome(String nome);
}