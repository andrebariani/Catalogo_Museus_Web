package grupo8.catalogo.museu.app.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import grupo8.catalogo.museu.app.models.Museu;
import grupo8.catalogo.museu.app.repositories.MuseuRepository;

@Controller
public class MuseuController {

    @Autowired
    private MuseuRepository museu_repository;
    
    // @GetMapping({ "/museu" })
    // public String Museu(Model model, @RequestParam(value="name", required=false, defaultValue="World") String name) {
        
    //     model.addAttribute("name", name);
    //     return "museu";
    // }

    @RequestMapping({"/museu"})
    public String Museu(Model model) {
        Museu museu = museu_repository.findByCodigo(193748);

        model.addAttribute("museu", museu);

        // model.addAttribute("nome", museu.getNome());
        
        return "museu";
    }

    
    // @RequestMapping("/search/{id}")
    // public String searchById(@PathVariable int id){
    //     String museu = "";
    //     museu = museu_repository.findByCod(id).toString();
    //     return museu;
    // }
}