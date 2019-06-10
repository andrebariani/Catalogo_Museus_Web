<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<t:base>
    <div class="container-fluid">
        <div class="row">
            <div id="list-example" class="list-group col-md-2 d-none d-md-block sidebar ml-3 fixed-top">
                    <a  class="list-group-item list-group-item-action" href="#list-item-1">Endereço</a>
                    <a  class="list-group-item list-group-item-action" href="#list-item-2">Coleções</a>
                    <a  class="list-group-item list-group-item-action" href="#list-item-3">Atividades</a>
            </div>
                  
            <main role="main" class="col-md-9 ml-sm-auto col-lg-20 px-4 container my-5">
                <div data-spy="scroll" data-target="#navbar-museu" data-offset="0" class="scrollspy-example" id="main_museu">

                    <h4 id="list-item-1">${museu.getNome()}</h4>
                        <div class="row no-gutters border rounded overflow-hidden flex-md-row shadow-sm h-md-2 card w-85 mb-5 mt-3">
                            <div class="card-body">
                                <h5 class="card-title">Telefone: ${museu.getTelefone()}</h5>
                                <h5 class="card-title">Endereço</h5>
                                <ul class="list-group">
                                    <li class="list-group-item">${museu.getRua()}</li>
                                    <li class="list-group-item">Número: ${museu.getNumero()}</li>
                                    <li class="list-group-item">Bairro: ${museu.getBairro()}</li>
                                    <li class="list-group-item">Cidade: ${museu.getCidade()}</li>
                                    <li class="list-group-item">Email: ${museu.getEmail()}</li>
                                </ul>
                            </div>
                        </div>

                    

                    <h4 id="list-item-2">Coleções</h4>
                        <c:forEach var="colecao" items="${museu.colecoes}">
                        <div class="row no-gutters border rounded overflow-hidden flex-md-row shadow-sm h-md-2 card w-85 mb-5 mt-3">
                            <div class="col p-4 d-flex flex-column position-static card-body">
                                <h5 class="card-title">${colecao.nome}</h5>
                                <ul class="list-group">
                                    <li class="list-group-item">
                                        <strong>Tipo: </strong>${colecao.tipo}
                                    </li>
                                    <li class="list-group-item">
                                        <strong>Idioma disponível: </strong>${colecao.idioma}
                                    </li>
                                    <li class="list-group-item">
                                        <strong>Hora de abertura: </strong>${colecao.horario}
                                    </li>
                                </ul>
                            </div>
                        </div>
                        </c:forEach>

                    <h4 id="list-item-3">Atividades</h4>
                        <c:if test = "${museu.atividades.size() == 0}">
                            <div class="row no-gutters border rounded overflow-hidden flex-md-row shadow-sm h-md-2 card w-85 mb-5 mt-3">
                                <div class="col p-4 d-flex flex-column position-static card-body">
                                    <h5 class="card-title">${atividade.nome}</h5>
                                    <ul class="list-group">
                                        <li class="list-group-item">
                                            <h5>Nenhuma atividade disponível.</h5>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </c:if>
                        <c:forEach var="atividade" items="${museu.atividades}">
                        
                            <div class="row no-gutters border rounded overflow-hidden flex-md-row shadow-sm h-md-2 card w-85 mb-5 mt-3">
                                <div class="col p-4 d-flex flex-column position-static card-body">
                                    <h5 class="card-title">${atividade.nome}</h5>
                                    <ul class="list-group">
                                        <li class="list-group-item">
                                            <strong>Tipo: </strong>${atividade.tipo}
                                        </li>
                                        <li class="list-group-item">
                                            <strong>Preço: </strong>R$ <fmt:formatNumber type = "number" minFractionDigits = "2" maxFractionDigits = "2" value = "${atividade.preco}" />
                                        </li>
                                        <li class="list-group-item">
                                            <strong>Hora de abertura: </strong>${atividade.horario}
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </c:forEach>

                </div>
            </main>
        </div>
    </div>
  
</t:base>