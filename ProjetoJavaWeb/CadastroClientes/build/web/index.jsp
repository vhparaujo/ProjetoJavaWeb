<%-- 
    Document   : index.jsp
    Created on : 29 de jun. de 2023, 09:53:30
    Author     : Valdir
--%>

<%@page import="ConnectionJDBC.ConnectionJDBC"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>TrincaSports</title>
    </head>
    <body>
        
        <%
            Connection con = new ConnectionJDBC().getConnection();
            try {

                Statement statement = con.createStatement();
                ResultSet resultSet = statement.executeQuery("SELECT * FROM tabela");
                out.print("Sucesso");

            } catch (SQLException e) {
                e.printStackTrace();
                e.getMessage();
                out.print("Erro de conexao");
            }

        %>
        
        

        <h3>Formulario de Cadastro</h3>

        <form name="DadosUsuario" action="salvarUsuario.jsp" method="get">
            <hr>
            <h6>Dados Pessoais</h6>
            <div class="form-outline mb-3">
                <label class="form-label" for="nome">Nome</label>
                <input name="nome" type="input" id="nome" class="form-control">
                <br>
                <label class="form-label" for="cpf">Cpf</label>
                <input name="cpf" type="input" id="cpf" class="form-control">
                <br>
                 <label class="form-label" for="telefone">Telefone</label>
                <input name="telefone" type="input" id="telefone" class="form-control">
            </div>

            <div class="form-group">
                <label for="email">Endereço de email</label>
                <input name="email" type="input" class="form-control" id="email" placeholder="nome@exemplo.com">
            </div>
            
            <button type="submit" onclick="submit()" class="btn btn-primary">Salvar</button>
            <br>
            <a href="listarUsuarios.jsp">Listar Usuarios</a>

        </form>
       
    </body>
</html
