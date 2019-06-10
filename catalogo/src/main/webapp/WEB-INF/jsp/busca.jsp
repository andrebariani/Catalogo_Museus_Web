<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<!DOCTYPE html>
<t:base>
    <script>
        $("#busca a").css("color", "#FFCC47");
        $("#busca").css("borderBottom", "2px solid #FFCC47");
        $("#busca a").css("borderBottomColor", "#FFCC47");
    </script>
    <main role="main">

        <div class="container">


            <ul class="nav nav-tabs" id="lista-tab" role="tablist">
                <li>
                    <a class="nav-link active" id="museu-tab" data-toggle="tab" href="#museu" role="tab" aria-selected="true">
                        Pesquisar por museu
                    </a>
                </li>
                <li>
                    <a class="nav-link" id="colecao-tab" data-toggle="tab" href="#colecao" role="tab" aria-selected="false">
                        Pesquisar por coleção
                    </a>
                </li>
                <li>
                    <a class="nav-link" id="atividade-tab" data-toggle="tab" href="#atividade" role="tab" aria-selected="false">
                        Pesquisar por Atividade
                    </a>
                </li>
            </ul>

            <div class="tab-content" id="conteudo-tab">
                <div class="tab-pane fade show active" id="museu" role="tabpanel">
                    <div class="searchbar">
                        <input class="search_input" type="text" name="museu" placeholder="Selecione ao lado uma opção de busca e abaixo o tipo...">
                        <input type="submit" href="/museu/busca/nome/museu" class="search_icon" text="">Pesquisar</a>
                    </div>
                </div>
                <div class="tab-pane fade show" id="colecao" role="tabpanel">
                    <div class="searchbar">
                        <input class="search_input" type="text" name="Pesquisar" placeholder="Selecione...">
                        <a href="/busca_resultados" class="search_icon"><img id="icon_busca" class="img-fluid mx-auto" src="imagens/icon.png"><i class="fas fa-search"></i></a>
                    </div>
                </div>
                <div class="tab-pane fade show" id="atividade" role="tabpanel">
                    <div class="searchbar">
                        <input class="search_input" type="text" name="Pesquisar" placeholder="Selecione ao lado...">
                        <a href="/busca_resultados" class="search_icon"><img id="icon_busca" class="img-fluid mx-auto" src="imagens/icon.png"><i class="fas fa-search"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </main>
</t:base>