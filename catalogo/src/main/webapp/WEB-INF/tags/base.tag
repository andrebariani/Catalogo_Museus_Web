<%@tag description="Overall Page template" pageEncoding="UTF-8"%>
<%@attribute name="header" fragment="true" %>
<%@attribute name="footer" fragment="true" %>
<html lang="pt">
<head>
    <meta charset="UTF-8">
    <!--bootstrap-->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
    <!--end bootstrap-->

    <title>Catálogo Nacional de Museus</title>
    <link rel="icon" href="imagens/Logo_Museu_icon.png" type="image/png" />
    <link rel="shortcut icon" href="imagens/Logo_Museu_icon.png" type="image/png" />
    <link rel="stylesheet" type="text/css" href="stylesheet.css" />
</head>
<body>

    <!--Cabecalho-->
    <header>
        <nav class="navbar navbar-expand-lg" style="background-color: rgb(5, 95, 62);">

            <a class="navbar-brand mb-0 ml-5" href="index.html"><img src="imagens/Logo_Museu_cropped.png" /></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsite">
                <span class="navbar-toggler-icon"><img src="imagens/expandir.png" /></span>
            </button>

            <div class="collapse navbar-collapse mr-5 mt-3" id="navbarsite">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item ml-5"><a class="nav-link" href="index.jsp">Início</a></li>
                    <li class="nav-item ml-5"><a class="nav-link" href="busca.jsp">Busca</a></li>
                    <li class="nav-item ml-5"><a class="nav-link" href="/sobre">Sobre</a></li>
                </ul>
            </div>
        </nav>
    </header>

    <main>
        <jsp:doBody/>
    </main>

    <!--Rodape-->
    <footer id="rodape" class="mt-5">
            <div class="row">
                <div id="rodape_info" class="col-6 col-md mt-5">
                    <img src="imagens/Logo_Museu_cropped.png" />
                    <h4 id="titulo_rodape" class="mt-3">Catálogo Nacional de Museus (CNM)</h4>
                    <p id="texto_rodape">Projeto desenvolvido para a disciplina Desenvolvimento para Web, ministrada pela
                        profa. Dra. Luciana Zaina.</p>
                </div>

                <div id="rodape_mapa" class="col-6 col-md mt-5">
                    <h4 class="titulo_rodape">Mapa</h4>
                    <ul class="list-unstyled text-small">
                        <li class="mapa_link"><a href="index.html">Início</a></li>
                        <li class="mapa_link"><a href="busca.html">Busca</a></li>
                        <li class="mapa_link"><a href="sobre.html">Sobre</a></li>
                    </ul>
                </div>

                <div id="rodape_equipe" class="col-6 col-md mt-5">
                    <h4 class="titulo_rodape">Equipe</h4>
                    <ul class="list-unstyled">
                        <li class="p_equipe">André</li><br>
                        <li class="p_equipe">Guilherme</li><br>
                        <li class="p_equipe">Giovanni</li><br>
                        <li class="p_equipe">Wilson</li>
                    </ul>
                </div>
                <div id="rodape_logos" class="col-6 col-md mt-5">
                    <img id="logo_dcomp" src="imagens/logo_dcomp.png" />
                    <img id="logo_ufscar_rodape" src="imagens/LogoUFSCar_png.png" />
                </div>
            </div>

    </footer>
</body>
</html>