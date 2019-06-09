<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<!DOCTYPE html>
<t:base>

<link rel="icon" href="../imagens/Logo_Museu_icon.png" type="image/png" />
    <link rel="shortcut icon" href="../imagens/Logo_Museu_icon.png" type="image/png" />
    <link rel="stylesheet" type="text/css" href="../stylesheet.css" />

    <main>
        <section>
            <article>
                <div id="titulo_museu">
                    <h1 id="titulo_museu">Museu "${museu.getNome()}"</h1>
                </div>
            </article>
            <div id="atributos_museu">
                <ul>
                    <li>
                      Rua: 
                    </li>
                    <li>
                        Número: 
                    </li>
                    <li>
                        Bairro:
                    </li>
                    <li>
                        Cidade:
                    </li>
                    <li>
                        Telefone:
                    </li>
                    <li>
                        Email:
                    </li>
                </ul>
            </div>
            <div id="atributos_atividades">
                <article id="titulo_secoes">
                    <h4>Atividades</h4>
                </article>
                <div id="atributos_atividades"></div>
                    <h5 id="titulo_atributos"></h5>
                        <ul>                                     
                            <li>
                                Horário:
                            </li>
                            <li>
                                Tipo:
                            </li>
                        </ul>
                </div>
            </div>
        </section>
    </main>
</t:base>