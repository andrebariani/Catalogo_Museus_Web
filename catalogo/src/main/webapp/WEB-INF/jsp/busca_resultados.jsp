<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<!DOCTYPE html>
<t:base>
    <link rel="icon" href="../imagens/Logo_Museu_icon.png" type="image/png" />
    <link rel="shortcut icon" href="../imagens/Logo_Museu_icon.png" type="image/png" />
    <link rel="stylesheet" type="text/css" href="../stylesheet.css" />
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
                                <li class="nav-item">
                                    
                                </li>
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
                        <div class="col-md-6">
                            <div class="row no-gutters border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
                                <div class="col p-4 d-flex flex-column position-static">
                                    <strong class="d-inline-block mb-2 text-primary"></strong>
                                    <!-- 
                                        <c:url var="museu_link" value="/museu">
                                        <c:param name="cod" value="100002" />
                                        </c:url>
                                    -->
                                    <h1 id="nome_museu" class="mb-0"><a href="/museu/100003">Museu Ferroviário clique aqui plz</a></h1>
                                    
                                    <h3 class="mb-0"> Horário de Funcionamento: </h3>
                                    <p class="card-text mb-auto"></p>

                                    <h3 class="mb-0"> Preço do ingresso: </h3>
                                </div>
                            </div>
                        </div>
                </div>
            </section>
        </main>
        </div>
    </div>
</t:base>