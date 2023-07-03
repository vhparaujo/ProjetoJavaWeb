<%-- 
    Document   : salvarUsuario
    Created on : 2 de jul. de 2023, 11:59:52
    Author     : Valdir
--%>

<%@page import="view.FormUsuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%
        
        FormUsuario user = new FormUsuario();
        user.nome = request.getParameter("nome");
        user.cpf = request.getParameter("cpf");
        user.telefone = request.getParameter("telefone");
        user.email = request.getParameter("email");
       
        if(user.btnSalvar()) {
            out.print("Salvou");
        } else {
            out.print("Não Salvou");
        }
        
        %>
        
        <h1>Hello World!</h1>
    </body>
</html>
