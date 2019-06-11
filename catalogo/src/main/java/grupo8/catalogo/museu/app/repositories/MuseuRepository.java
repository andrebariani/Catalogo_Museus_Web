package grupo8.catalogo.museu.app.repositories;

import java.util.Collection;
import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

import grupo8.catalogo.museu.app.models.Museu;

@Repository
public interface MuseuRepository extends PagingAndSortingRepository<Museu, Long>, JpaSpecificationExecutor<Museu> {
    Optional<Museu> findByCod(int cod);

    Page<Museu> findByNomeIgnoreCaseContaining(String nome, Pageable page);
    Collection<Museu> findByCidadeIgnoreCaseContaining(String cidade);
}