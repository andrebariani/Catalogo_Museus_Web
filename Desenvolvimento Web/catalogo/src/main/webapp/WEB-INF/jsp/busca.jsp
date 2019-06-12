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
            var colecaoAtributo = document.getElementById("colecaoAtributo").value;
            
            document.formColecao.action="/colecao/busca/" + colecaoAtributo + "/" + colecaoQuery;
        }

        function onSubmitAtividade() {
            var atividadeQuery = document.getElementById("atividadeQuery").value;
            var atividadeAtributo = document.getElementById("atividadeAtributo").value;
            
            document.formAtividade.action="/atividade/busca/" + atividadeAtributo + "/" + atividadeQuery;
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

            <div>
                <p id="text_busca_form">
                    Selecione na aba acima a pesquisa a ser realizada.
                </p>
            </div>

            <div class="tab-content" id="conteudo-tab">
                
                <div class="tab-pane fade show active" id="museu" role="tabpanel">
                    <form action="/museu/busca" name="formMuseu">
                        <div class="searchbar">
                            <input class="search_input" type="text" id="museuQuery" name="nome" placeholder="Selecione um campo de busca abaixo...">
                            <input type="image" id="museu_input" class="search_icon" src="imagens/icon.png"></a>
                        </div>

                        <p>Começando da página
                        <input id="helperPage" name="page" value="0">
                        </p>
                    </form>
                </div>
                
                
                <div class="tab-pane fade show" id="colecao" role="tabpanel">
                    <form action="" name="formColecao" onsubmit="onSubmitColecao();">
                        <div class="searchbar">
                            <input class="search_input" type="text" id="colecaoQuery" placeholder="Selecione um campo de busca abaixo...">
                            <input type="image" id="museu_input" class="search_icon" src="imagens/icon.png"></a>
                        </div>

                        <div class="form-group">
                            <p class="form_busca"> Pesquisar por
                            <select id="colecaoAtributo">
                                <option value="nome">Nome</option>
                                <option value="tipo">Tipo (Exemplo: "História", "Arte", etc.)</option>
                            </select>
                            </p>
                        </div>

                    </form>
                </div>

                <div class="tab-pane fade show" id="atividade" role="tabpanel">
                    <form action="" name="formAtividade" onsubmit="onSubmitAtividade();">
                        <div class="searchbar">
                            <input class="search_input" type="text" id="atividadeQuery" placeholder="Selecione um campo de busca abaixo...">
                            <input type="image" id="museu_input" class="search_icon" src="imagens/icon.png"></a>
                        </div>

                        <div class="form-group">
                            <p class="form_busca"> Pesquisar por
                            <select id="atividadeAtributo">
                                <option value="nome">Nome</option>
                                <option value="preco">Preço</option>
                            </select>
                            </p>
                        </div>

                    </form>
                </div>
            </div>
        </div>
    </main>
</t:base>