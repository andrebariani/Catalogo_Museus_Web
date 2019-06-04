<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8" />
        <!--bootstrap-->
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="node_modules\bootstrap\compiler\bootstrap.css">
        
        <!--end bootstrap-->
        
        <title>Catálogo Nacional de Museus</title>
        <link rel="icon" src="/imagens/Logo_Museu_icon.png" type="image/png" />
        <link rel="shortcut icon" src="imagens/Logo_Museu_icon.png" type="image/png" />
        <link rel="stylesheet" type="text/css" href="stylesheet.css" />
    </head>

    <body>
        <!--Cabecalho-->
        <header>
            <nav class="navbar navbar-expand-lg" style="background-color: rgb(5, 95, 62);">
            
                    <a class="navbar-brand mb-0 ml-5" href="index.jsp"><img src="views/imagens/Logo_Museu_cropped.png" /></a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target= "#navbarsite">
                        <span class="navbar-toggler-icon"><img src="views/imagens/expandir.png"/></span>
                    </button>
            
                    <div class="collapse navbar-collapse mr-5 mt-3" id = "navbarsite">
                        <ul class="navbar-nav ml-auto">
                            <li class="nav-item ml-5"><a class="nav-link" href="index.html">Início</a></li>
                            <li class="nav-item ml-5"><a class="nav-link" href="busca.html">Busca</a></li>
                            <li class="nav-item ml-5"><a class="nav-link" href="sobre.html">Sobre</a></li>
                        </ul>
                    </div>
            </nav>
        </header>

        <main role="main">
                <div id="myCarousel" class="carousel slide" data-ride="carousel">
                        <ol class="carousel-indicators">
                        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                        <li data-target="#myCarousel" data-slide-to="1" class=""></li>
                        <li data-target="#myCarousel" data-slide-to="2" class=""></li>
                        </ol>

                        <div class="carousel-inner">

                        <div class="carousel-item active">
                            <img src="views/imagens/slider2.jpg" class="img-fluid d-block">
                            <div class="container">
                            <div class="carousel-caption text-left d-none d-md-block">
                                <h1>Museu de Lingua Portuguesa.</h1>
                                <p>Museu da Língua Portuguesa ou Estação Luz da Nossa Língua é um museu interativo sobre a língua portuguesa localizado na cidade de São Paulo, Brasil, no histórico edifício Estação da Luz, no Bairro da Luz.</p>
                            </div>
                            </div>
                        </div>

                        <div class="carousel-item">
                            <img src="views/imagens/slider2.jpg" class="img-fluid d-block ">
                            <div class="container">
                            <div class="carousel-caption d-none d-md-block">
                                <h1>Museu de Lingua Portuguesa.</h1>
                                <p>Museu da Língua Portuguesa ou Estação Luz da Nossa Língua é um museu interativo sobre a língua portuguesa localizado na cidade de São Paulo, Brasil, no histórico edifício Estação da Luz, no Bairro da Luz.</p>
                                <p><a class="btn btn-lg btn-secondary" href="#" role="button">Leia Mais</a></p>
                            </div>
                            </div>
                        </div>

                        <div class="carousel-item">
                            <img src="views/imagens/slider2.jpg" class="img-fluid d-block">
                            <div class="container">
                            <div class="carousel-caption text-right d-none d-md-block">
                                <h1>Museu de Lingua Portuguesa.</h1>
                                <p>Museu da Língua Portuguesa ou Estação Luz da Nossa Língua é um museu interativo sobre a língua portuguesa localizado na cidade de São Paulo, Brasil, no histórico edifício Estação da Luz, no Bairro da Luz.</p>
                                <p><a class="btn btn-lg  btn-secondary" href="#" role="button">Leia Mais</a></p>
                            </div>
                            </div>
                        </div>

                        </div>
                        <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                        </a>
                        <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                        </a>
                    </div>

            <div class="container marketing">
                <hr class="featurette-divider mt-5 mb-5">
                <div class="row featurette">
                    <div class="col-md-7">
                        <h2 class="featurette-heading">Bem-vindo ao Catálogo Nacional de Museus(CNM)!<h3><span class="text-muted">O CNM é a maior e mais confiável fonte de informaçõe sobre museus disponível na internet.</span></h3></h2>
                        <p class="lead text-justify">Catalogados na plataforma estão milhares de museus espalhados pelo país, dentre eles alguns dos mais importantes da América latina.
                            No CNM, você pode consultar endereços, telefones, preços, tipos de exposição e outras informações sobre o seu próximo destino cultural. Descubra os principais museus próximos de você, exposições incríveis e o oceano de cultura que os mais
                            diversificados museus do Brasil têm a oferecer a você!</p>
                    </div>
                    <div class="col-md-5">
                        <img src="views/imagens/MASP.jpg" class="mt-2 img-fluid mx-auto" preserveAspectRatio="xMidYMid slice" focusable="false" role="img">
                    </div>
                </div>
            </div>


        <hr class="featurette-divider mt-5 mb-5 container">

        <div class="container">
            <div class="row my-5">
                <!--Card 1-->
                <div class="col-sm-4">

                <div class="card">
                    <img class="card-img-top" src="imagens/trem.jpg">

                    <div class="card-body">
                        <h4 class="card-title">Museu Ferroviário de Pires do Rio<h4>
                        <h6 class="card-subtitle mb-2 text-muted">História</h6>
                        <p class="card-text">O museu Ferroviário sorocabano com exposições de trens e maquinário da época</p>
                        <h6 class="card-subtitle my-2 text-muted">Horário de funcionamento:</h6>
                            <ul class="list-group">
                            <li class="list-group-item">08:00 - 17:00</li>
                            </ul>
                            <h6 class="card-subtitle my-2 text-muted">Preço do ingresso:</h6>
                            <ul class="list-group mb-3">
                            <li class="list-group-item">Gratuito</li>
                            </ul>
                    
                        <div class="card-footer"><a href="#" class="card-link btn btn-secondary">Saiba mais</a></div>

                    </div>
                </div>
                </div>

                <!--Card 2-->
                <div class="col-sm-4">

                <div class="card">
                    <img class="card-img-top" src="imagens/trem.jpg">

                    <div class="card-body">
                        <h4 class="card-title">Museu Ferroviário de Pires do Rio<h4>
                        <h6 class="card-subtitle mb-2 text-muted">História</h6>
                        <p class="card-text">O museu Ferroviário sorocabano com exposições de trens e maquinário da época</p>
                        <h6 class="card-subtitle my-2 text-muted">Horário de funcionamento:</h6>
                            <ul class="list-group">
                            <li class="list-group-item">08:00 - 17:00</li>
                            </ul>
                            <h6 class="card-subtitle my-2 text-muted">Preço do ingresso:</h6>
                            <ul class="list-group mb-3">
                            <li class="list-group-item">Gratuito</li>
                            </ul>
                    
                        <div class="card-footer"><a href="#"  class="card-link btn btn-secondary">Saiba mais</a></div>
                        
                    </div>
                </div>
                </div>

                <!--Card 3-->
                <div class="col-sm-4">

                    <div class="card">
                    <img class="card-img-top" src="imagens/trem.jpg">
    
                    <div class="card-body">
                        <h4 class="card-title">Museu Ferroviário de Pires do Rio<h4>
                        <h6 class="card-subtitle mb-2 text-muted">História</h6>
                        <p class="card-text">O museu Ferroviário sorocabano com exposições de trens e maquinário da época</p>
                        <h6 class="card-subtitle my-2 text-muted">Horário de funcionamento:</h6>
                            <ul class="list-group">
                                <li class="list-group-item">08:00 - 17:00</li>
                            </ul>
                            <h6 class="card-subtitle my-2 text-muted">Preço do ingresso:</h6>
                            <ul class="list-group mb-3">
                            <li class="list-group-item">Gratuito</li>
                            </ul>
                        
                        <div class="card-footer"><a href="#"  class="card-link btn btn-secondary">Saiba mais</a></div>
                        
                    </div>
                    </div>
                </div>

                </div>
            </div>
        </main>

        <!--Rodape-->
        <footer id="rodape" class="mt-5">
        <div class="row">
            <div id="rodape_info" class="col-6 col-md mt-5">
                <img src="imagens/Logo_Museu_cropped.png" />
                <h4 id="titulo_rodape" class="mt-3">Catálogo Nacional de Museus (CNM)</h4>
                <p id="texto_rodape">Projeto desenvolvido para a disciplina Desenvolvimento para Web, ministrada pela profa. Dra. Luciana Zaina.</p>
            </div>
        
            <div id="rodape_mapa" class="col-6 col-md mt-5">
                <h4 id="titulo_rodape">Mapa</h4>
                <ul class="list-unstyled text-small">
                    <li id="mapa_link"><a  href="index.html">Início</a></li>
                    <li id="mapa_link"><a  href="busca.html">Busca</a></li>
                    <li id="mapa_link"><a  href="sobre.html">Sobre</a></li>
                </ul>
            </div>

            <div id="rodape_equipe" class="col-6 col-md mt-5">
                <h4 id="titulo_rodape" >Equipe</h4>
                <ul class="list-unstyled">
                    <li id="p_equipe">André</li><br>
                    <li id="p_equipe">Guilherme</li><br>
                    <li id="p_equipe">Giovanni</li><br>
                    <li id="p_equipe">Wilson</li>
                </ul>
            </div>
            <div id="rodape_logos" class="col-6 col-md mt-5">
                <img id="logo_dcomp" src="imagens/logo_dcomp.png" />
                <img id="logo_ufscar_rodape" src="imagens/LogoUFSCar_png.png" />
            </div>
        </div>
        </footer>
        
        <!-- jquery bootstrap -->
        <script src="node_modules\jquery\dist\jquery.js"></script>
        <script src="node_modules\popper.js\dist\umd\popper.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </body>
</html>
