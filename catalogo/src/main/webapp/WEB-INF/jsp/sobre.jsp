<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<!DOCTYPE html>
<t:base>
<link rel="icon" href="../imagens/Logo_Museu_icon.png" type="image/png" />
    <link rel="shortcut icon" href="../imagens/Logo_Museu_icon.png" type="image/png" />
    <link rel="stylesheet" type="text/css" href="../stylesheet.css" />
    <script>
        $("#sobre a").css("color", "#FFCC47");
        $("#sobre").css("borderBottom", "2px solid #FFCC47");
        $("#sobre a").css("borderBottomColor", "#FFCC47");
    </script>
    <main>
        <section>
            <article id="museu_sobre">
                <img id="museu_sobre_img" src="imagens/Logo_Museu_cropped.png" />
                <div id="paragrafo_sobre">
                    <h1>Sobre nós</h1>
                    <p>Uma das maiores riquezas do Brasil é, sem dúvida, a nossa imensa riqueza cultural, que pode ser vista por todos os cantos do país. Esta riqueza nada mais é que a união da cultura de todos os povos que aqui vieram e fundiram suas histórias,
                        formando a nossa história.</p>
                    <p>Com esta visão, criamos o Catálogo Nacional de Museus, um projeto sem fins lucrativos,democrático e acessível, para reunir as informações sobre espaços fascinantes e transformadores: os museus. Nosso objetivo é mostrar a todos a vastidão
                        de conhecimento que os aguarda de norte a sul, para todos os gostos. Afinal, aprender com o passado é o primeiro passo para o futuro.</p>
                </div>
                <div id="paragrafo_sobre">
                    <h1>Sobre o projeto</h1>
                    <p>O Catálogo Nacional de Museus é um projeto criado como componente avaliativo das disciplinas de Sistemas de Bancos de Dados, Engenharia de Software II e Desenvolvimento para Web, em 2019.</p>
                </div>
            </article>
        </section>
    </main>
</t:base>