<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

</head>
<body>

			<%  Integer hitsCount = (Integer)application.getAttribute("hitCounter");
			if( hitsCount ==null || hitsCount == 0 )
			{ /* First visit */
			//	out.println("<h2>SEJA BEM VINDO AO SISTEMA!</h2>"); 
				hitsCount = 1;
			}
			
			application.setAttribute("hitCounter", hitsCount);
			%>	
			
		
			
 

        <div class="container" style="
             position: relative;
             margin: auto;
             top: 5em;
             ">
            <!--Corpo do sistema-->
            <div class="hero-unit corpo">
               <div class="control_Pbtns">
                  
               <h2>SEJA BEM VINDO AO SISTEMA!</h2>
				
                <p>
                    FACA O SEU LOGIN OU CADASTRE CASO FOR NOVO POR AQUI.
                </p>
                <center> <p style="
			    border: solid;
			    width: 12em;
			    position: relative;
			    margin: auto;
			    left: 472px;
			    top: -158px;
			    border-radius: 4px;
			    border-color: rgba(81, 87, 102, 0.25);">
			    Total de Visitas: <%= hitsCount%>
			    </p> 
			    </center>
    			
    			<p style="position: relative;left: -34px;">
                 

                    <a href="#meuModal" role="button" class="btn btn-large btn-success" data-toggle="modal" style="position: relative; top: 5px;  left: 2em;
                       ">Fazer login
                    </a>  



                    <a href="#" class="btn btn-large btn-primary" id="openBtn" style="
                       position: relative;
                       top: 5px;
                       left: 2em;
                       ">Cadastrar

                    </a> 

                </p>
              </div>

            </div>

            <!--Corpo do sistema-->

        </div>


        <!-- Modal -->
        <div id="meuModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    X
                </button>
                <h3 id="myModalLabel">Fazer Login</h3>
            </div>



            <div class="modal-body">

                <!--Formulario de login-->
                <form class="form-horizontal" action="logar.jsp" method="POST">

                    <div class="control-group">
                        <label class="control-label" for="inputEmail">Email</label>
                        <div class="controls">
                            <input name="email" type="text" id="inputEmail" placeholder="Email">
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="inputPassword">Senha</label>
                        <div class="controls">
                            <input name="senha" type="password" id="inputPassword" placeholder="Password">
                        </div>
                    </div>
                    <div class="control-group">
                        <div class="controls">

                            <button type="submit" class="btn btn-success">
                                Entrar
                            </button>
                        </div>
                    </div>
                </form>
                <!--Formulario de login-->


            </div>
            <div class="modal-footer">

                <button class="btn" data-dismiss="modal">
                    Fechar
                </button>
            </div>
        </div>
        <!--Termina Login-->



        <div id="myModal" class="modal hide fade" tabindex="-1" role="dialog">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">
                    X
                </button>
                <h3 class="">Cadastrar</h3>
            </div>
            <div class="modal-body">
                <form class="form-horizontal">
                    <div class="control-group">
                        <label class="control-label" for="inputEmail">Nome</label>
                        <div class="controls">
                            <input type="text" id="inputNome" placeholder="Email">
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="inputEmail">Email</label>
                        <div class="controls">
                            <input type="text" id="inputEmail" placeholder="Email">
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="inputPassword">Senha</label>
                        <div class="controls">
                            <input type="password" id="inputPassword" placeholder="Password">
                        </div>
                    </div>
                    <div class="control-group">
                        <div class="controls">

                            <button type="submit" class="btn btn-success">
                                Cadastrar
                            </button>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button class="btn" data-dismiss="modal">
                    Fechar
                </button>
            </div>

        </div><!--termina cadastro-->


        <script>
            $(document).ready(function() {
                $('.dropdown-toggle').dropdown();
            });
        </script>


        <script type="text/javascript">
            $('#openBtn').click(function() {

                $('.modal-body').load('/render/62805', function(result) {
                    $('#myModal').modal({
                        show : true
                    });
                });
            });

        </script>

</body>
</html>