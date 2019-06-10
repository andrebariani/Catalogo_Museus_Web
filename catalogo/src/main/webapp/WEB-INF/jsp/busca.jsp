<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<!DOCTYPE html>
<t:base>
    <script>
        $("#busca a").css("color", "#FFCC47");
        $("#busca").css("borderBottom", "2px solid #FFCC47");
        $("#busca a").css("borderBottomColor", "#FFCC47");
    </script>
    <main role="main">

        <div class="container">
            <div class="d-flex justify-content-center h-100">
                <div class="opcao_busca">
                    <select id="search_op">
                        <option select="selected" value="museu">Museu</option>
                        <option value="colecao">Coleção</option>
                        <option value="atividade">Atividade</option>
                    </select>
                </div>
                <div class="searchbar">
                    <input class="search_input" type="text" name="Pesquisar" id="ph" placeholder="Selecione ao lado uma opção de busca e abaixo o tipo...">
                    <a href="/busca_resultados" class="search_icon"><img id="icon_busca" class="img-fluid mx-auto" src="imagens/icon.png"><i class="fas fa-search"></i></a>
                    <div id="museu" class="opcao">
                            <p>Buscar por:
                            <input type="radio" name="museu" value="1" class="tipobusca"/> Nome</p>
                        </div>
                        <div id="colecao" class="opcao">
                            <p>Buscar por:
                            <input type="radio" name="colecao" value="2" class="tipobusca"/> Nome</p>  
                            <p class="in_2"><input type="radio" name="colecao" value="3" class="tipobusca"/> Categoria</p>
                        </div>
                        <div id="atividade" class="opcao">
                            <p>Buscar por:
                            <input type="radio" name="atividade" value="4" class="tipobusca"/> Nome</p>  
                            <p class="in_2"><input type="radio" name="atividade" value="5" class="tipobusca"/> Preço máximo</p>
                        </div>
                </div>

            </div>
            <script>
                $("#search_op").on('change', function(){
                    $('.opcao').hide();
                    $('#' + this.value).show();
                });
                /**
                $(".tipobusca").on('change', function(){
                        if($(this).val()==='1'){
                            $("#id").attr(placeholder:"Digite o nome do museu aqui");       
                        }
                        if($(this).val()==='2'){
                            $("#id").attr(placeholder:"Digite o nome da coleção aqui");       
                        }
                        if($(this).val()==='3'){
                            $("#id").attr(placeholder:"Digite a categoria da coleção aqui");                               }
                        if($(this).val()==='4'){
                            $("#id").attr(placeholder:"Digite o nome da atividade aqui");
                        }
                        if($(this).val()==='4'){
                            $("#id").attr(placeholder:"Digite o preço da atividade aqui");
                        }
                    });**/
            </script>                
        </div>
    </main>
</t:base>