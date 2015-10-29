<%@page import="javax.xml.ws.Response"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@page import="javax.swing.text.html.FormSubmitEvent"%>
<%@page import="java.awt.event.InputEvent"%>
<%@page import="java.io.ObjectInputStream.GetField"%>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="description" content="Tem de Tudo">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/bootstrap-responsive.css">
        <link rel="stylesheet" href="css/style.css">

        <script src="js/jquery-1.10.1.min.js"></script>
        <script src="js/bootstrap.js"></script>

        <title>Tem de Tudo</title>
    </head>

    <body>

        <%--
           String sec = (String)session.getAttribute ("abre_secao");// aki estou recebendo a sessao antes converter num String e colocando numa variavel "sec"
           if(sec!=null){ // se a sessao for diferente de null (caso a variavel tiver algun dado)
                   
                   //out.println("Sessao aberta no sistema com o seguinte email "+sec);
           }else{
            String volta_index = "index.jsp";//coloca o index.jsp num variavel string
             response.setStatus(response.SC_MOVED_TEMPORARILY); // preparar o status da pagina para ser movida temporariamente
             response.setHeader("Location", volta_index); 	//se a variavel for null entao redireciona a pagiana para index.jsp
           
           }
           
           
        --%>                           


        <div class="container">
            <header id="header" class="">
                <div class="span12">
                    <div class="navbar">
                        <div class="navbar-inner">
                            <a class="brand">O Logo da empresa</a>
                            <ul class="nav" style="position: relative;top: 0px;">
                                <li class="divider-vertical"></li>
                                <li class="">
                                    <a href="#" >Home</a>
                                </li><!--
                                --><li class="divider-vertical"></li>
                                <li>
                                    <a href="#">Sobre Nos</a>
                                </li><!--
                                --><li class="divider-vertical"></li>
                                <li>
                                    <a href="#">Produtos</a>
                                </li><!--
                                --><li class="divider-vertical"></li>

                                <!--Comessa o DropDown-->

                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><font><font>Suspensa </font></font><b class="caret"></b></a>
                                    <ul class="dropdown-menu">
                                        <li>
                                            <a href="#"><font><font>A√ß√£o</font></font></a>
                                        </li>
                                        <li>
                                            <a href="#"><font><font>Outra a√ß√£o</font></font></a>
                                        </li>
                                        <li>
                                            <a href="#"><font><font>Outra coisa aqui</font></font></a>
                                        </li>
                                        <li class="divider"></li>
                                        <li class="nav-header">
                                            <font><font>Cabe√ßalho Nav</font></font>
                                        </li>
                                        <li>
                                            <a href="#"><font><font>Liga√ß√£o Separado</font></font></a>
                                        </li>
                                        <li>
                                            <a href="#"><font><font>Mais um elo separado</font></font></a>
                                        </li>
                                    </ul>
                                </li>

                                <!--Comessa o Formulario-->
                                <form class="navbar-form pull-right">
                                    <Input  type="text"  placeholder="Entrada de texto" >
                                    <button type="submit" class="btn">
                                        <font><font>Pesquisar</font></font>
                                    </button>
                                </form>
                                <!--Termina o formulario-->

                                <!--Termina o DropDown-->
                            </ul>

                            <!--comessa cadastro-->
                            <a href="#" class="btn btn-mini btn-primary" id="openBtn" style="
                               position: relative;
                               top: 5px;
                               left: 2em;
                               display: none;
                               ">Cadastrar</a>



                            <!--comessa Login-->
                            <!-- Button to trigger modal -->
                            <%// clicar no link È direcionado
     // para pagina endSession.jsp %>      <a href="endSession.jsp"  class=" btn btn-mini btn-danger"  style="
                               position: relative;
                               top: 5px;
                               left: 2em;
                               ">Fazer log-out
                                <i class="icon-off"></i>
                            </a>







                            <!--onde termina div procura-->

                        </div>
                    </div><!--onde termina o Div navegador-->
                </div><!--onde termina o o Div Span que controla o Navegador-->
            </header><!-- / fim do header -->

            <div style="clear:both;padding-top:15px;background:#FFF;"></div>

            <!--Corpo do sistema-->
            <div class="hero-unit corpo" style="
                 background-color: rgba(192, 152, 83, 0.61);
                 ">

                <div class="controles_jsp" id="nadainda"> 
                    <%// nesse input com tipo=botao
          // e empresso o valor da secao %>              
                    <Input class="btn btn-info disabled"  type="button"  placeholder="" value="<%--out.println("sess„o aberta como o usuario: "+sec);--%>" style="
                           position: relative;
                           margin: auto;
                           left: -4em;
                           top: -4em;">

                </div>

                <h1>SEJA BEM VINDO </h1>
                <p>
                    INFORMA«’ES
                </p>






                <p>

                    <button type="button" id="BtM" name="BTN_ap" 
                            class="btn btn-primary btn-large" onclick="">Aprenda </button>
                </p>






            </div>
            <!--Corpo do sistema-->

        </div>



        <footer class="rodape">
            <ul class="nav nav-list pull-left">
                <li class="nav-header">
                    <font><font>Links do Site</font></font>
                </li>
                <li>
                    <a href="#"><font><font>Casa</font></font></a>
                </li>
                <li>
                    <a href="#"><font><font>Blog</font></font></a>
                </li>
                <li>
                    <a href="#"><font><font>FAQ</font></font></a>
                </li>
            </ul>
            <ul class="nav nav-list pull-left">
                <li class="nav-header">
                    <font><font>Links Externos</font></font>
                </li>
                <li>
                    <a href="http://google.com.br" target="_blank"><font><font>Boating Livros</font></font></a>
                </li>
            </ul>
        </footer>

        <script>
            $(document).ready(function () {
                $('.dropdown-toggle').dropdown();
            });
        </script>

    </body>
</html>