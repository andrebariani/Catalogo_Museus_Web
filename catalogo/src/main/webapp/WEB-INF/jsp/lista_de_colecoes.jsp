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
               
                <ul class="list-group">
                    <c:forEach begin="0" end="${maxpages}" var="i">
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

                <c:forEach var="colecao" items="${colecoes}">
                    <c:set var = "colecaoUrl" value = "/museu/${colecao.getMuseu().getCod()}" />
                    <div id="busca" class="row mb-2">
                                <div class="col-md-6">
                                    <div class="row no-gutters border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-2 position-relative">
                                        <div class="col p-4 d-flex flex-column position-static">

                                            <h3 id="nome_colecao" class="mb-0"><a href="${colecaoUrl}">${colecao.getNome()}</a></h3>
                                
                                            <h6 class="mb-0">Horario de Exibição:</h6>
                                            <p class="card-text mb-auto">${colecao.getHorario()}</p>
                                            
                                            <h6 class="mb-0">Tipo: </h6>
                                            <p class="card-text mb-auto"> ${colecao.getTipo()} </p>

                                            <h6 class="mb-0">Disponível no Museu: </h6>
                                            <p class="card-text mb-auto"><a href="${colecaoUrl}"> ${colecao.getMuseu().getNome()}</a></p>
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