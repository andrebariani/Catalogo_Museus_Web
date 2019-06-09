package grupo8.catalogo.museu.app.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import grupo8.catalogo.museu.app.models.*;

@Repository
public interface AtividadeRepository extends JpaRepository<Atividade, Long>{
    @Query(value = "SELECT nome_mus AS Nome_do_museu, tipo_ativ AS Tipo_atividade, preco_ativ AS Preço_atividade, nome_ativ AS Nome_atividade, cidade AS Cidade 
                    FROM museu AS m, atividade AS a 
                    WHERE m.cod_mus = a.cod_mus AND preco_ativ <= :pCod 
                    ORDER BY preco_ativ", nativeQuerry = true)
    Atividade findByAtividadePreco(@Param("pCod") float cod);

    @Query(value = "SELECT 0 as dtype, nome_mus AS Nome_do_museu, nome_ativ AS Nome_atividade, tipo_ativ AS Tipo_atividade, 
                    cidade AS Cidade, preco_ativ AS Preço_atividade FROM colecao as c LEFT OUTER JOIN museu as m 
                    ON (lower(nome_ativ) LIKE ':pCod %')
                    WHERE m.cod_mus = c.cod_mus", nativeQuerry = true)
    Atividade findByAtividadeNome(@Param("pCod") String cod);
}