package grupo8.catalogo.museu.app.controllers;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import grupo8.catalogo.museu.app.models.Atividade;
import grupo8.catalogo.museu.app.models.Colecao;
import grupo8.catalogo.museu.app.models.Museu;
import grupo8.catalogo.museu.app.repositories.AtividadeRepository;
import grupo8.catalogo.museu.app.repositories.ColecaoRepository;
import grupo8.catalogo.museu.app.repositories.MuseuRepository;

@Controller
public class CatalogoController {

    @Autowired
    MuseuRepository museuRepository;

    @Autowired
    ColecaoRepository colecaoRepository;

    @Autowired
    AtividadeRepository atividadeRepository;

    @GetMapping({ "/museu/busca/nome/{nome}" })
    public String buscaMuseuPorNome(Model model, @PathVariable(value = "nome") String nome) {
        Collection<Museu> museus = museuRepository.findByNome(nome);

        model.addAttribute("museus", museus);
        model.addAttribute("query", nome);

        return "lista_de_museus";
    }

    @GetMapping({ "/museu/busca/cidade/{cidade}" })
    public String buscaMuseuPorCidade(Model model, @PathVariable(value = "cidade") String cidade) {
        Collection<Museu> museus = museuRepository.findByCidade(cidade);

        model.addAttribute("museus", museus);
        model.addAttribute("query", cidade);

        return "lista_de_museus";
    }

    @GetMapping({ "/colecao/busca/nome/{nome}" })
    public String buscaColecaoPorNome(Model model, @PathVariable(value = "nome") String nome) {
        Collection<Colecao> colecoes = colecaoRepository.findByNome(nome);

        model.addAttribute("colecoes", colecoes);
        model.addAttribute("query", nome);

        return "lista_de_colecoes";
    }

    @GetMapping({ "/colecao/busca/tipo/{tipo}" })
    public String buscaColecaoPorTipo(Model model, @PathVariable(value = "tipo") String tipo) {
        Collection<Colecao> colecoes = colecaoRepository.findByNome(tipo);

        model.addAttribute("colecoes", colecoes);
        model.addAttribute("query", tipo);

        return "lista_de_colecoes";
    }
    
    @GetMapping({ "/atividade/busca/nome/{nome}"})
    public String buscaAtividadePorNome(Model model, @PathVariable(value = "nome") String nome) {
        Collection<Atividade> atividades = atividadeRepository.findByNome(nome);

        model.addAttribute("atividades", atividades);
        model.addAttribute("query", nome);

        return "lista_de_atividades";
    }

    @GetMapping({ "/atividade/busca/preco/{preco}"})
    public String buscaAtividadePorPreco(Model model, @PathVariable(value = "preco") Float preco) {
        Collection<Atividade> atividades = atividadeRepository.findByAtividadePreco(preco);

        model.addAttribute("atividades", atividades);
        model.addAttribute("query", preco);

        return "lista_de_atividades";
    }
}