<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<t:base>
    <div class="container-fluid">
        <div class="row">
            <nav class="col-md-2 d-none d-md-block bg-light sidebar  mt-3 mb-3">
                <h1 id="Titulo">Filtrar </h1>
                <div class="sidebar-sticky">
                    <ul class="nav flex-column">
                        <li class="nav-item">
                            <form action="" name="formMuseu">
                                <div class="form-group">
                                    <label for="preco">Preço de Entrada: </label>
                                    <input type="text" class="form-control" name="preco" id="preco" placeholder="Digite o Preço de Entrada">
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="radio" name="order" id="inlineRadio1" value="asc">
                                        <label class="form-check-label" for="inlineRadio1">Crescente</label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="radio" name="order" id="inlineRadio2" value="desc">
                                        <label class="form-check-label" for="inlineRadio2">Decrescente</label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="telefone">Telefone: </label>
                                    <input type="text" class="form-control" name="telefone" id="telefone" placeholder="Digite Telefone">
                                </div>
                                <div class="form-group">
                                    <label for="telefone">E-mail: </label>
                                    <input type="text" class="form-control" name="email" id="email" placeholder="Digite o E-mail">
                                </div>
                                <div class="form-group">
                                    <label for="rua">Rua: </label>
                                    <input type="text" class="form-control" name="rua" id="rua" placeholder="Digite a Rua">
                                </div>
                                <div class="form-group">
                                    <label for="rua">Número: </label>
                                    <input type="text" class="form-control" name="numero" id="numero" placeholder="Digite o Número">
                                </div>
                                <div class="form-group">
                                    <label for="cidade">Cidade: </label>
                                    <input type="text" class="form-control" name="cidade" id="cidade" placeholder="Digite a Cidade">
                                </div>
                                <div class="form-group">
                                    <label for="bairro">Bairro: </label>
                                    <input type="text" class="form-control" name="bairro" id="bairro" placeholder="Digite o Bairro">
                                </div>
                                <button id="botao_edicao" type="submit" class="btn btn-light">Filtrar</button>
                            </form>
                        </li>
                    </ul>
            </div>
        </nav>


        <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4 container">
            <section>
                
                <h1 class="align-text-top mt-3 mb-3">Resultados da Pesquisa</h1>
               
               <ul class="list-group">
                    <c:forEach begin="0" end="${maxPages}" var="i">
                        <c:choose>  
                            <c:when test="${page eq i}">
                                <li class="list-group-item active">${i+1}
                                </li>
                            </c:when>
                            <c:otherwise>
                                <li class="list-group-item"><a href="${url}${i}">${i+1}</a>
                                </li>
                            </c:otherwise>
                        </c:choose>
                    </c:forEach>
                </ul>
                <c:forEach var="museu" items="${museus}">
                    <c:set var = "museuUrl" value = "/museu/${museu.getCod()}" />
                    <div id="busca" class="row mb-2">
                                <div class="col-md-6">
                                    <div class="row no-gutters border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-2 position-relative">
                                        <div class="col p-4 d-flex flex-column position-static">

                                            <h3 id="nome_museu" class="mb-0"><a href="${museuUrl}">${museu.getNome()}</a></h3>
                                
                                            <h6 class="mb-0">Preço de Entrada:</h6>
                                            
                                            <c:choose>  
                                                <c:when test="${museu.getPreco() eq 0}">
                                                    <p class="card-text mb-auto">
                                                        Gratuito
                                                    </p>
                                                </c:when>
                                                <c:otherwise>
                                                    <p class="card-text mb-auto">
                                                        R$ <fmt:formatNumber type = "number" minFractionDigits = "2" maxFractionDigits = "2" value = "${museu.getPreco()}"/>
                                                    </p>
                                                </c:otherwise>
                                            </c:choose>
                                            
                                            <h6 class="mb-0">Cidade: </h6>
                                            <p class="card-text mb-auto"> ${museu.getCidade()} </p>
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