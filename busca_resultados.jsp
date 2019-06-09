<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<!DOCTYPE html>
<t:base>
    <div class="container-fluid">
        <div class="row">
            <nav class="col-md-2 d-none d-md-block bg-light sidebar">
                <h1>Filtrar: </h1>
                <div class="sidebar-sticky">
                            <ul class="nav flex-column">
                                <li class="nav-item">
                                    <form>
                                    <div class="form-group">
                                        <label for="cidade">cidade: </label>
                                        <input type="text" class="form-control" id="cidade" placeholder="Digite a Cidade">
                                    </div>
                                    </form>
                                </li>
                                <!--
                                <%
                                     Request vai conter o tipo de pesquisa que será feita 

                                    String tipopesquisa = request.getParameter("tipopesquisa");
                                    if(tipopesquisa === "PREÇO"){
                                        %>
                                        <li class="nav-item">
                                            
                                        </li>
                                    <% }
                                %>
                                -->
                            </ul>
                <button type="submit" class="btn btn-primary">Filtrar</button>
            </div>
        </nav>

        <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4">
            <section>
                <article>
                        <h1>Resultados da busca por: </h1>
                </article>
                <div id="busca" class="row mb-2">

                    <!-- O banco de dado irá retornar um variavel com os objetos para serem listados , "lista". 
                        
                    
                    <%
                        ArrayList<'tipo do obejeto = 'obejeto' a ser retornada>'  nome da lista = BancodeDados.Listar();  banco de dados e a funcao de listagem;

                        percorrer a lista:
                        
                        for(int i = 0; i < nome da lista.size(); i++ ){

                            objeto cadaobejto = nome da lista.get(i); %>
                            
                            <div class="col-md-6">
                                <div class="row no-gutters border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
                                    <div class="col p-4 d-flex flex-column position-static">
                                        <strong class="d-inline-block mb-2 text-primary"><%=cadaobjeto.getCategoria()%></strong>
                                        <h1 id="nome_museu" class="mb-0"><a href="museu.jsp?objeto=<%=identificacao unica para o objeto - nome, ou id%>"><%=cadaobjeto.getNome()%></a></h1>
                            
                                        <h3 class="mb-0"> Horário de Funcionamento: </h3>
                                        <p class="card-text mb-auto"><%=cadaobjeto.getHorarioFuncionamento()%></p>

                                        <h3 class="mb-0"> Preço do ingresso: </h3>
                                        <% if(cadaobjeto.getHorarioPreco() == 0){ >%
                                            <p class="card-text mb-auto">Gratuito</p>

                                    <% } else{ %>
                                            <p class="card-text mb-auto"><%=cadaobjeto.getHorarioPreco()%></p>

                                    <% } %>
                                    </div>
                                </div>
                            </div>

                    <% }
                    %>

                    importar os arquivo necessarios
                    -->
                </div>
            </section>
        </main>
        </div>
    </div>
</t:base>