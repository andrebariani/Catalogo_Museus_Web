<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<t:base>
    <div class="container-fluid">
        <div class="row">
        <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4 container">
            <section>
                <h1 class="align-text-top mt-3 mb-3">Resultados da busca por: ${query}</h1>
                
                <c:forEach var="atividade" items="${atividades}">
                    <c:set var = "atividadeUrl" value = "/museu/${atividade.getMuseu().getCod()}" />
                    <div id="busca" class="row mb-2">
                                <div class="col-md-6">
                                    <div class="row no-gutters border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-2 position-relative">
                                        <div class="col p-4 d-flex flex-column position-static">

                                            <h3 id="nome_atividade" class="mb-0"><a href="${atividadeUrl}">${atividade.getNome()}</a></h3>
                                
                                            <h6 class="mb-0">Horario de Início:</h6>
                                            <p class="card-text mb-auto">${atividade.getHorario()}</p>
                                            
                                            <h6 class="mb-0">Preço: </h6>
                                            <c:choose>  
                                                <c:when test="${atividade.getPreco() eq 0}">
                                                    <p class="card-text mb-auto">
                                                        Gratuito
                                                    </p>
                                                </c:when>
                                                <c:otherwise>
                                                    <p class="card-text mb-auto">
                                                        R$ <fmt:formatNumber type = "number" minFractionDigits = "2" maxFractionDigits = "2" value = "${atividade.getPreco()}"/>
                                                    </p>
                                                </c:otherwise>
                                            </c:choose>

                                            <h6 class="mb-0">Disponível no Museu: </h6>
                                            <p class="card-text mb-auto"><a href="${atividadeUrl}"> ${atividade.getMuseu().getNome()}</a></p>
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