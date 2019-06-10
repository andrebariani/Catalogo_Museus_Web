package grupo8.catalogo.museu.app.controllers;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import grupo8.catalogo.museu.app.models.Museu;
import grupo8.catalogo.museu.app.repositories.MuseuRepository;

@Controller
public class CatalogoController {

    @Autowired
    MuseuRepository museuRepository;

    @GetMapping({ "/museu/busca/nome/{nome}" })
    public String buscaMuseuPorNome(Model model, @PathVariable(value = "nome") String nome) {
        Collection<Museu> museus = museuRepository.findByNome(nome)

        model.addAttribute(museus);

        return "lista_de_museus";
    }
}