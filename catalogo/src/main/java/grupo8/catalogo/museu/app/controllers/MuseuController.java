package grupo8.catalogo.museu.app.controllers;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.server.ResponseStatusException;

import grupo8.catalogo.museu.app.models.*;
import grupo8.catalogo.museu.app.repositories.*;

@Controller
public class MuseuController {

    @Autowired
    private MuseuRepository museuRepository;

    @GetMapping({ "/museu/{cod}" })
    public String Museu(Model model, @PathVariable("cod") int cod) {

        Optional<Museu> result = museuRepository.findByCod(cod);

        if(!result.isPresent()) {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "Museu não encontrado");
        }

        Museu museu = result.get();

        System.out.println(museu.getColecoes());

        model.addAttribute("museu", museu);

        return "museu";
    }
}