package grupo8.catalogo.museu.app.repositories;

import java.util.Collection;
import java.util.Optional;

import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

import grupo8.catalogo.museu.app.models.Museu;

@Repository
public interface MuseuRepository extends PagingAndSortingRepository<Museu, Long> {
    Optional<Museu> findByCod(int cod);

    Collection<Museu> findByNome(String nome);
    Collection<Museu> findByCidade(String cidade);
}