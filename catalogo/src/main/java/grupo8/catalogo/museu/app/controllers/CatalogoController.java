package grupo8.catalogo.museu.app.controllers;

import java.util.ArrayList;
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
        Iterable<Object[]> col_temp = colecaoRepository.findByColecaoCategoria(tipo + "%");
        Collection<Colecao> colecoes = new ArrayList<Colecao>();
        
        for (Object[] linha : col_temp){
            Colecao col = new Colecao();
            Museu mus = new Museu();

            mus.setCod(Integer.parseInt(linha[0].toString()));
            mus.setNome(linha[1].toString());

            col.setNome(linha[2].toString());
            col.setTipo(linha[3].toString());
            col.setHorario(linha[4].toString());

            col.setMuseu(mus);

            colecoes.add(col);
        }
            

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

    @GetMapping({ "/atividade/busca/preco/{preco}/{page}"})
    public String buscaAtividadePorPreco(Model model, @PathVariable(value = "preco") Float preco) {
        Pageable SixCards = PageRequest.of(page, ELEMENTS_PER_PAGE);
        Page<Object[]> ativPages = atividadeRepository.findByAtividadePreco(preco, SixCards);
        Iterator<Object[]> ativ_temp = ativPages.getContent();
        
        Collection<Atividades> atividades = new ArrayList<Atividade>();

        for(Object[] linha : ativ_temp){
            Atividade ativ = new Atividade();
            Museu mus = new Museu();

            mus.setCod(Integer.parseInt(linha[0].toString()));
            mus.setNome(linha[1].toString());
            
            ativ.setHorario(linha[2].toString());
            ativ.setNome(linha[3].toString());
            ativ.setPreco(Float.parseFloat(linha[4].toString()));

            ativ.setMuseu(mus);

            atividades.add(ativ);
        }    

        model.addAttribute("atividades", atividades);
        model.addAttribute("query", preco);

        return "lista_de_atividades";
    }
}