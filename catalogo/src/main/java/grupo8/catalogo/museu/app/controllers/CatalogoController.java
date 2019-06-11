package grupo8.catalogo.museu.app.controllers;

import java.util.ArrayList;
import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

import grupo8.catalogo.museu.app.models.Atividade;
import grupo8.catalogo.museu.app.models.Colecao;
import grupo8.catalogo.museu.app.models.Museu;
import grupo8.catalogo.museu.app.models.MuseuSpecs;
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

    private static final int ELEMENTS_PER_PAGE = 6;

    @GetMapping({ "/museu/busca/{page}" })
    public String buscaMuseuPorNome(Model model, @PathVariable(value = "page") int page,
                                    @RequestParam(name = "sort", required = false) String sort,
                                    @RequestParam(name = "order", required = false) String order,
                                    @RequestParam(name = "nome", required = false) String nome,
                                    @RequestParam(name = "preco", required = false) String preco,
                                    @RequestParam(name = "telefone", required = false) String telefone,
                                    @RequestParam(name = "rua", required = false) String rua,
                                    @RequestParam(name = "numero", required = false) String numero,
                                    @RequestParam(name = "cidade", required = false) String cidade,
                                    @RequestParam(name = "bairro", required = false) String bairro,
                                    @RequestParam(name = "email", required = false) String email) {

        Specification<Museu> museuSpecs = Specification.where(null);

        if(sort == null || sort.isEmpty()) {
            sort = "nome";
        }

        if(order == null || order.isEmpty()) {
            order = "asc";
        }

        if(nome != null && !nome.isEmpty()) {
            museuSpecs = museuSpecs.and(MuseuSpecs.museuLikeNome(nome));
        }

        if(email != null && !email.isEmpty()) {
            museuSpecs = museuSpecs.and(MuseuSpecs.museuLikeEmail(email));
        }

        if(preco != null && !preco.isEmpty()) {
            museuSpecs = museuSpecs.and(MuseuSpecs.museuLessThanPreco(Float.parseFloat(preco)));
        }

        if(cidade != null && !cidade.isEmpty()) {
            museuSpecs = museuSpecs.and(MuseuSpecs.museuLikeCidade(cidade));
        }

        if(numero != null && !numero.isEmpty()) {
            museuSpecs = museuSpecs.and(MuseuSpecs.museuLikeNumero(numero));
        }

        if(bairro != null && !bairro.isEmpty()) {
            museuSpecs = museuSpecs.and(MuseuSpecs.museuLikeBairro(bairro));
        }

        Sort s;

        if(order.equals("asc")) {
            s = Sort.by(sort).ascending();
        } else {
            s = Sort.by(sort).descending();
        }

        Page<Museu> museusPage = museuRepository.findAll(museuSpecs, PageRequest.of(page, ELEMENTS_PER_PAGE, s));

        int maxPages = museusPage.getTotalPages();

        Collection<Museu> museus = museusPage.getContent();

        model.addAttribute("museus", museus);
        model.addAttribute("maxpages", maxPages);
        model.addAttribute("page", page);
        model.addAttribute("query", nome);

        return "lista_de_museus";
    }

    @GetMapping({ "/colecao/busca/nome/{nome}/{page}" })
    public String buscaColecaoPorNome(Model model, @PathVariable(value = "nome") String nome, @PathVariable(value = "page") int page) {
        Pageable SixCards = PageRequest.of(page, ELEMENTS_PER_PAGE);
        Page<Colecao> colecoesPage = colecaoRepository.findByNomeIgnoreCaseContaining(nome, SixCards);

        int maxPages = colecoesPage.getTotalPages();

        Collection<Colecao> colecoes = colecoesPage.getContent();

        model.addAttribute("colecoes", colecoes);
        model.addAttribute("maxpages", maxPages);
        model.addAttribute("page", page);
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
        model.addAttribute("maxpages", maxPages);
        model.addAttribute("page", page);
        model.addAttribute("query", tipo);

        return "lista_de_colecoes";
    }
    
    @GetMapping({ "/atividade/busca/nome/{nome}/{page}" })
    public String buscaAtividadePorNome(Model model, @PathVariable(value = "nome") String nome, @PathVariable(value = "page") int page) {
        Pageable SixCards = PageRequest.of(page, ELEMENTS_PER_PAGE);
        Page<Atividade> atividadesPage = atividadeRepository.findByNomeIgnoreCaseContaining(nome, SixCards);

        int maxPages = atividadesPage.getTotalPages();

        Collection<Atividade> atividades = atividadesPage.getContent();

        model.addAttribute("atividades", atividades);
        model.addAttribute("maxpages", maxPages);
        model.addAttribute("page", page);
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
        model.addAttribute("maxpages", maxPages);
        model.addAttribute("page", page);
        model.addAttribute("query", preco);

        return "lista_de_atividades";
    }
}