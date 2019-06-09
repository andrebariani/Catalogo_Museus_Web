<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<!DOCTYPE html>
<t:base>
<link rel="icon" href="../imagens/Logo_Museu_icon.png" type="image/png" />
    <link rel="shortcut icon" href="../imagens/Logo_Museu_icon.png" type="image/png" />
    <link rel="stylesheet" type="text/css" href="../stylesheet.css" />
    <script>
        $("#inicio a").css("color", "#FFCC47");
        $("#inicio").css("borderBottom", "2px solid #FFCC47");
        $("#inicio a").css("borderBottomColor", "#FFCC47");
    </script>
    <main role="main">
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class=""></li>
                <li data-target="#myCarousel" data-slide-to="1" class=""></li>
                <li data-target="#myCarousel" data-slide-to="2" class=""></li>
            </ol>

            <div class="carousel-inner">

                <div class="carousel-item active">

                    <img src="imagens/slider1.jpg" class="img-fluid d-block">
                    <div class="container">
                        <div class="carousel-caption text-left d-none d-md-block">
                            <h1>Museu de Lingua Portuguesa.</h1>
                            <p>Museu da Língua Portuguesa ou Estação Luz da Nossa Língua é um museu interativo sobre a
                                língua portuguesa localizado na cidade de São Paulo, Brasil, no histórico edifício
                                Estação da Luz, no Bairro da Luz.</p>
                        </div>
                    </div>
                </div>

                <div class="carousel-item">
                    <img src="imagens/slider2.jpg" class="img-fluid d-block ">
                    <div class="container">
                        <div class="carousel-caption d-none d-md-block">
                            <h1>Museu de Lingua Portuguesa.</h1>
                            <p>Museu da Língua Portuguesa ou Estação Luz da Nossa Língua é um museu interativo sobre a
                                língua portuguesa localizado na cidade de São Paulo, Brasil, no histórico edifício
                                Estação da Luz, no Bairro da Luz.</p>
                        </div>
                    </div>
                </div>

                <div class="carousel-item">
                    <img src="imagens/slider3.jpg" class="img-fluid d-block">
                    <div class="container">
                        <div class="carousel-caption text-right d-none d-md-block">
                            <h1>Museu de Lingua Portuguesa.</h1>
                            <p>Museu da Língua Portuguesa ou Estação Luz da Nossa Língua é um museu interativo sobre a
                                língua portuguesa localizado na cidade de São Paulo, Brasil, no histórico edifício
                                Estação da Luz, no Bairro da Luz.</p>
                        </div>
                    </div>
                </div>

            </div>
            <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
                <span class="sr-only">Next</span>
            </a>
        </div>

        <div class="container marketing">
            <hr class="featurette-divider mt-5 mb-5">
            <div class="row featurette">
                <div class="col-md-7">
                    <h2 class="featurette-heading">Bem-vindo ao Catálogo Nacional de Museus (CNM)!
                    </h2>
                    <p class="lead text-justify">O CNM é a maior e mais confiável fonte de informações sobre
                        museus disponível na internet. Catalogados na plataforma estão milhares de museus espalhados pelo
                        país, dentre eles alguns dos mais importantes da América latina.</p>
                    <p class="lead text-justify">No CNM, você pode consultar endereços, telefones, preços, tipos de 
                        exposição e outras informações sobre o seu próximo destino cultural. Descubra os principais museus 
                        próximos de você, exposições incríveis e o oceano de cultura que os mais diversificados museus do 
                        Brasil têm a oferecer a você!</p>
                </div>
                <div class="col-md-5">
                    <img src="imagens/MASP.jpg" class="mt-2 img-fluid mx-auto" preserveAspectRatio="xMidYMid slice"
                        focusable="false" role="img">
                </div>
            </div>
        </div>


        <hr class="featurette-divider mt-5 mb-5 container">

        <h2 class="museus_destaque">Museus em destaque:</h2>

        <div class="container">
            <div class="row my-5">
                <!--Card 1-->
                <div class="col-sm-4">

                    <div class="card">
                        <img class="card-img-top" src="imagens/trem.jpg">

                        <div class="card-body">
                            <h4 class="card-title">Museu Ferroviário de Pires do Rio<h4>
                                    <h6 class="card-subtitle mb-2 text-muted">História</h6>
                                    <p class="card-text">O museu Ferroviário sorocabano com exposições de trens e
                                        maquinário da época</p>
                                    <h6 class="card-subtitle my-2 text-muted">Horário de funcionamento:</h6>
                                    <ul class="list-group">
                                        <li class="list-group-item">08:00 - 17:00</li>
                                    </ul>
                                    <h6 class="card-subtitle my-2 text-muted">Preço do ingresso:</h6>
                                    <ul class="list-group mb-3">
                                        <li class="list-group-item">Gratuito</li>
                                    </ul>

                                    <div class="card-footer"><a href="#" class="card-link btn btn-secondary">Saiba
                                            mais</a></div>

                        </div>
                    </div>
                </div>

                <!--Card 2-->
                <div class="col-sm-4">

                    <div class="card">
                        <img class="card-img-top" src="imagens/futebol.jpg">

                        <div class="card-body">
                            <h4 class="card-title">Museu do Futebol<h4>
                                    <h6 class="card-subtitle mb-2 text-muted">Esportes</h6>
                                    <p class="card-text">Museu interativo localizado embaixo das arquibancadas do Pacaembú, em São Paulo</p>
                                    <h6 class="card-subtitle my-2 text-muted">Horário de funcionamento:</h6>
                                    <ul class="list-group">
                                        <li class="list-group-item">09:00 - 17:00</li>
                                    </ul>
                                    <h6 class="card-subtitle my-2 text-muted">Preço do ingresso:</h6>
                                    <ul class="list-group mb-3">
                                        <li class="list-group-item">R$ 15,00</li>
                                    </ul>

                                    <div class="card-footer"><a href="#" class="card-link btn btn-secondary">Saiba
                                            mais</a></div>

                        </div>
                    </div>
                </div>

                <!--Card 3-->
                <div class="col-sm-4">

                    <div class="card">
                        <img class="card-img-top" src="imagens/amanha.jpg">

                        <div class="card-body">
                            <h4 class="card-title">Museu do Amanhã<h4>
                                    <h6 class="card-subtitle mb-2 text-muted">Tecnologia e Meio Ambiente</h6>
                                    <p class="card-text">Localizado ao lado da praia Mauá, conta com uma exposição digital</p>
                                    <h6 class="card-subtitle my-2 text-muted">Horário de funcionamento:</h6>
                                    <ul class="list-group">
                                        <li class="list-group-item">10:00 - 18:00</li>
                                    </ul>
                                    <h6 class="card-subtitle my-2 text-muted">Preço do ingresso:</h6>
                                    <ul class="list-group mb-3">
                                        <li class="list-group-item">R$ 20,00</li>
                                    </ul>

                                    <div class="card-footer"><a href="#" class="card-link btn btn-secondary">Saiba
                                            mais</a></div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </main>
</t:base>