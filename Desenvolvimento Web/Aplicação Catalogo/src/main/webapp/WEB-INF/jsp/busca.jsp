<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<t:base>
    
    <script>
        $("#busca a").css("color", "#FFCC47");
        $("#busca").css("borderBottom", "2px solid #FFCC47");
        $("#busca a").css("borderBottomColor", "#FFCC47");

        function onSubmitColecao() {
            var colecaoQuery = document.getElementById("colecaoQuery").value;
            
            document.formColecao.action="/colecao/busca/tipo/" + colecaoQuery;
        }

        function onSubmitAtividade() {
            var atividadeQuery = document.getElementById("atividadeQuery").value;
            
            document.formAtividade.action="/atividade/busca/preco/" + atividadeQuery;
        }
    
    </script>
    <main role="main">

        <div class="container">
            <nav>
            <ul class="nav nav-tabs" id="lista-tab" role="tablist">
                <li>
                    <a class="nav-link active" id="museu-tab" data-toggle="tab" href="#museu" role="tab" aria-selected="true">
                        Pesquisar por Museu
                    </a>
                </li>
                <li>
                    <a class="nav-link" id="colecao-tab" data-toggle="tab" href="#colecao" role="tab" aria-selected="false">
                        Pesquisar por Coleção
                    </a>
                </li>
                <li>
                    <a class="nav-link" id="atividade-tab" data-toggle="tab" href="#atividade" role="tab" aria-selected="false">
                        Pesquisar por Atividade
                    </a>
                </li>
            </ul>
            </nav>

            <div class="tab-content" id="conteudo-tab">

                <div class="tab-pane fade show active" id="museu" role="tabpanel">
                    <div>
                        <p id="text_busca_form">
                            Pesquisa pelo Nome do Museu
                        </p>
                    </div>
                    <form action="/museu/busca" name="formMuseu">
                        <div class="searchbar">
                            <input class="search_input" type="text" id="museuQuery" name="nome" placeholder="Selecione um campo de busca abaixo...">
                            <input type="image" id="museu_input" class="search_icon" src="imagens/icon.png"></a>
                        </div>

                        <div id="page-helper">
                        <p><input type="hidden" name="page" value="0">
                        </p>
                        </div>
                    </form>
                </div>
                
                
                <div class="tab-pane fade show" id="colecao" role="tabpanel">

                    <div>
                    <p id="text_busca_form">
                        Pesquisa pelo Tipo de Coleção (Exemplo: "História", "Arte", etc.)
                    </p>
                    </div>

                    <form action="" name="formColecao" onsubmit="onSubmitColecao();">
                        <div class="searchbar">
                            <input class="search_input" type="text" id="colecaoQuery" placeholder="Selecione um campo de busca abaixo...">
                            <input type="image" id="museu_input" class="search_icon" src="imagens/icon.png"></a>
                        </div>
                    </form>
                </div>

                <div class="tab-pane fade show" id="atividade" role="tabpanel">

                     <div>
                    <p id="text_busca_form">
                        Pesquisa pelo Preço Máximo de Atividade (Em R$)
                    </p>
                    </div>
                    <form action="" name="formAtividade" onsubmit="onSubmitAtividade();">
                        <div class="searchbar">
                            <input class="search_input" type="text" id="atividadeQuery" placeholder="Selecione um campo de busca abaixo...">
                            <input type="image" id="museu_input" class="search_icon" src="imagens/icon.png"></a>
                        </div>

                    </form>
                </div>
            </div>
        </div>
    </main>
</t:base>