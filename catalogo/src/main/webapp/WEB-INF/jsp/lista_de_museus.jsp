<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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
                            </ul>
                <button type="submit" class="btn btn-primary">Filtrar</button>
            </div>
        </nav>


        <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4">
            <section>
                <article>
                        <h1>Resultados da busca por: ${query}</h1>
                </article>
                <c:forEach var="museu" items="${museus}">
                    <c:set var = "museuUrl" value = "/museu/${museu.getCod()}" />
                    <div id="busca" class="row mb-2">
                                <div class="col-md-6">
                                    <div class="row no-gutters border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
                                        <div class="col p-4 d-flex flex-column position-static">
                                            <strong class="d-inline-block mb-2 text-primary"></strong>
                                            <h1 id="nome_museu" class="mb-0"><a href="${museuUrl}">${museu.getNome()}</a></h1>
                                
                                            <h3 class="mb-0"> Preço de Entrada: <fmt:formatNumber type = "number" minFractionDigits = "2" maxFractionDigits = "2" value = "${museu.getPreco()}" /></h3>
                                            
                                            <h5 class="mb-0">Cidade: ${museu.getCidade()}</h5>
                                        </div>
                                    </div>
                                </div>
                    </div>
                </c:forEach>    
            </section>
        </main>
        </div>
    </div>
    </div>
</t:base>