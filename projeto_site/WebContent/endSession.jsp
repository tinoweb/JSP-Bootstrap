<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<%
session.removeAttribute("abre_secao");//* o nome da sessao que esta aberto na pagina "princ.jsp" aki ele remove a sessao
session.invalidate();// esse termina a sessao ou seja destroi completamente a sessao
response.sendRedirect("index.jsp"); // direciona automaticamente para a pagina index.jsp 
%>

