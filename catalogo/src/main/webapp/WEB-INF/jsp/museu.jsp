<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<!DOCTYPE html>
<t:base>
    <main>
        <!--
        <% 
        Objeto objeto = null;

        String idobjeto = request.getParameter("identificacao para o objeto");

            objeto = bancodados.getById(idobjeto); --verificar se no banco existe um retorno de objeto pelo identificador

            ArrayList<'tipo do obejeto = 'obejetoAtividade' a ser retornada>'  listaAtivide = BancodeDados.ListarAtividade(idObjeto);

           
                
            for(int i = 0; i < nome da lista.size(); i++ ){

               
            }
        %>
        
        <section>
            <article>
                <div id="titulo_museu">
                    <h1 id="titulo_museu"><%= objeto.getNome() %></h1>
                </div>
            </article>
            <div id="atributos_museu">
                <ul>
                    <li>
                      Rua: <%= objeto.getNome()%>
                    </li>
                    <li>
                        Número: <%= objeto.getNumero() %>
                    </li>
                    <li>
                        Bairro: <%= objeto.getBairro() %>
                    </li>
                    <li>
                        Cidade:  <%= objeto.getCidade() %>
                    </li>
                    <li>
                        Telefone: <%= objeto.getTelefone() %>
                    </li>
                    <li>
                        Email:  <%= objeto.getEmail() %>
                    </li>
                    <% if(bjeto.getPreco() == 0){ >%
                        <li>  Ingresoo: Gratuito </li>

                    <% } else{ %>
                        <li>  Ingresoo: <%= objeto.getPreco()%></li>

                    <% } %>
                 
                </ul>
            </div>

            
                <%

                    for(int i = 0; i < listaAtividade.size(); i++ ){ 

                        ObjetoAtividade = listaAtividade.get(i);
                        
                        %>

                        <div id="atributos_atividades">
                            <article id="titulo_secoes">
                                <h4>Atividades</h4>
                            </article>
                            <div id="atributos_atividades"></div>
                                <h5 id="titulo_atributos"><%= ObjetoAtividade.getNomeAtiv() %></h5>
                                    <ul>
                                        <% if(bjeto.getPreco() == 0){ >%
                                            <li>  Ingresoo: Gratuito </li>

                                        <% } else{ %>
                                            <li>  Ingresoo: <%= objetoAtividade.getPreco()%></li>

                                        <% } %>                                        
                                        <li>
                                            Horário: <%= ObjetoAtividade.getNomeAtiv() %>
                                        </li>
                                        <li>
                                            Tipo: <%= ObjetoAtividade.getTipoAtiv() %>
                                        </li>
                                    </ul>
                            </div>
                        </div>

                  <%  } %>
              -->
        </section>
    </main>
</t:base>