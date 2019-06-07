<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<!DOCTYPE html>
<t:base>
    <main role="main">

        <div class="container">
            <div class="d-flex justify-content-center h-100">
                <div class="searchbar">
                    <input class="search_input" type="text" name="Pesquisar" placeholder="Search...">
                    <a href="/busca_resultados" class="search_icon"><img id="icon_busca" class="img-fluid mx-auto" src="imagens/icon.png"><i class="fas fa-search"></i></a>
                </div>
            </div>
        </div>

        <!--
        <section>
            <article id="barra_busca">
                <h1>
                    Busca de Dados
                </h1>

                <p>
                    Realize aqui sua pesquisa por categoria de coleção ou por preço de atividade.
                </p>

                <p style="color:grey;">
                    Exemplo de categoria de Coleção: "História", "Tecnologia", "Arqueologia", "Arte", "Outros";
                </p>

                <p style="color:grey;">
                    Exemplo de Preços: "15", "49.99", "0";
                </p>

                <p>
                    <select class="right" name="state" id="state">
                        <option value="categoria" selected>Categoria de Coleção</option>
                        <option value="preco">Preço de Atividade</option>
                    </select>
                    <label for="login"></label><input type="text" id="query" name="Pesquisar" placeholder="Digite Termo de Busca Aqui">
                    <a href="busca_resultados.html"><input class="button_query" type="submit" value="Pesquisar" href="sobre.html"></a>
                </p>
            </article>
        </section>

    -->
    </main>
</t:base>