package grupo8.catalogo.museu.app.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import grupo8.catalogo.museu.app.models.Museu;
import grupo8.catalogo.museu.app.repositories.MuseuRepository;

@Controller
public class MuseuController {

    @Autowired
    private MuseuRepository museu_repository;

    @GetMapping({"/museu/{cod}"})
    public String Museu(Model model, @PathVariable("cod" ) int cod) {        
        Museu museu = museu_repository.findByMuseuCodigo( cod );

        model.addAttribute("museu", museu);
        return "museu";
    }
}