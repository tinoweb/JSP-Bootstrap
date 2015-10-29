<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@page language="java" import="java.io.*,java.sql.*,javax.sql.*,javax.naming.*" %> 
<%@ page language="java" import="database.Conexao" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Insert title here</title>
    </head>
    <body>
        <%
            String email = request.getParameter("email");
            String senha = request.getParameter("senha");

            String emaile = null;
            String senhae = null;

        //chamando a classe do banco de dados atraves do instancia abaixos
            try {
                //instancia classe de conexao
                Conexao conexao = new Conexao("localhost", "jsp_unasp", "root", "Jn$270813");
                //conecta no banco
                Connection connection = conexao.connect();

                //cria o statment e realiza a consulta
                Statement st = connection.createStatement();
                String sql = "SELECT * FROM usuario";
                ResultSet rs = st.executeQuery(sql);

                while (rs.next()) {
                    emaile = rs.getString(2); //mostra o campo 2 da tabela
                    senhae = rs.getString(3);//mostra o campo 3 da tabela
                }

                //fecha a conexao com o banco
                connection.close();
            } catch (Exception e) {
                out.println(e.toString());
            }

        //out.println(emaile);
        //out.println(senhae);
        // out.println("o email e "+email );
            if (emaile.equals(email) && senhae.equals(senha)) {

                // abre a seccao para a pagina a ser redirecionado
                session.setAttribute("abre_secao", emaile); // criar a sesscao com a chave=abre_secao e valor emaile(email   )
                //se o email e a senha estiverem coretos faca o codigo aseguir
                //direciona a pagina para princ.jsp
                String site = new String("princ.jsp");
                response.setStatus(response.SC_MOVED_TEMPORARILY);
                response.setHeader("Location", site);
            } else {

                          // se o email e a senha naum forem verdadeiros 
                // direciona a pagina para index.jsp
                String volta_index = "falha.jsp";
                response.setStatus(response.SC_MOVED_TEMPORARILY);
                response.setHeader("Location", volta_index);
            }

        %>
    </body>
</html>