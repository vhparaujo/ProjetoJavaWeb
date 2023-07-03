<%-- 
    Document   : listarUsuarios
    Created on : 3 de jul. de 2023, 10:22:00
    Author     : Valdir
--%>

<%@page import="java.util.List"%>
<%@page import="model.persistence.Usuario"%>
<%@page import="controller.UsuarioController"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    
UsuarioController userController = new UsuarioController();
List<Usuario> listaUsuarios = userController.listar();



    %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listar Usuarios</title>
    </head>
    <body>
        <%
        for(Usuario user: listaUsuarios){
    
        %>
        <br>
        
        <%
            out.println(user.getNome());
        %>
         <br>
         <%
            out.println(user.getCpf());
        %>
         <br>
         <%
            out.println(user.getTelefone());
        %>
         <br>
         <%
            out.println(user.getEmail());
        %>
        
        
        <% } %>
        
        <br>
        <br>
        <a href="index.jsp"> Voltar </a>
        
    </body>
</html>
