
<%@page import="ConnectionJDBC.ConnectionJDBC"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <title>Cadastro</title>

        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta http-equiv="X-UA-Compatible" content="ie=edge" />

        <style>
            /* Import Google font - Poppins */
            @import url("https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap");
            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
                font-family: "Poppins", sans-serif;
            }
            body {
                min-height: 100vh;
                display: flex;
                align-items: center;
                justify-content: center;
                padding: 20px;
                background: rgb(130, 106, 251);
            }
            .container {
                position: relative;
                max-width: 700px;
                width: 100%;
                background: #fff;
                padding: 25px;
                border-radius: 8px;
                box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
            }
            .container header {
                font-size: 1.5rem;
                color: #333;
                font-weight: 500;
                text-align: center;
            }
            .container .form {
                margin-top: 30px;
            }
            .form .input-box {
                width: 100%;
                margin-top: 20px;
            }
            .input-box label {
                color: #333;
            }
            .form :where(.input-box input, .select-box) {
                position: relative;
                height: 50px;
                width: 100%;
                outline: none;
                font-size: 1rem;
                color: #707070;
                margin-top: 8px;
                border: 1px solid #ddd;
                border-radius: 6px;
                padding: 0 15px;
            }
            .input-box input:focus {
                box-shadow: 0 1px 0 rgba(0, 0, 0, 0.1);
            }
            .form .column {
                display: flex;
                column-gap: 15px;
            }
            .form .gender-box {
                margin-top: 20px;
            }
            .gender-box h3 {
                color: #333;
                font-size: 1rem;
                font-weight: 400;
                margin-bottom: 8px;
            }
            .form :where(.gender-option, .gender) {
                display: flex;
                align-items: center;
                column-gap: 50px;
                flex-wrap: wrap;
            }
            .form .gender {
                column-gap: 5px;
            }
            .gender input {
                accent-color: rgb(130, 106, 251);
            }
            .form :where(.gender input, .gender label) {
                cursor: pointer;
            }
            .gender label {
                color: #707070;
            }
            .address :where(input, .select-box) {
                margin-top: 15px;
            }
            .select-box select {
                height: 100%;
                width: 100%;
                outline: none;
                border: none;
                color: #707070;
                font-size: 1rem;
            }
            .form button {
                height: 55px;
                width: 100%;
                color: #fff;
                font-size: 1rem;
                font-weight: 400;
                margin-top: 30px;
                border: none;
                cursor: pointer;
                transition: all 0.2s ease;
                background: rgb(130, 106, 251);
            }
            .form button:hover {
                background: rgb(88, 56, 250);
            }
            /*Responsive*/
            @media screen and (max-width: 500px) {
                .form .column {
                    flex-wrap: wrap;
                }
                .form :where(.gender-option, .gender) {
                    row-gap: 15px;
                }
            }
        </style> 

    </head>
    <body>


        <%--
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

        --%>


        <section class="container">
            <header>Formulário de cadastro</header>

            <form name="DadosUsuario" action="salvarUsuario.jsp" method="get" class="form">

                <div class="input-box">
                    <label class="form-label" for="nome">Nome</label>
                    <input name="nome" type="input" id="nome" placeholder="Digite seu nome" required />
                </div>
                <div class="input-box">
                    <label class="form-label" for="nome">CPF</label>
                    <input name="cpf" type="input" id="cpf" placeholder="Digite seu CPF" required />
                </div>
                <div class="input-box">
                    <label class="form-label" for="nome">Telefone</label>
                    <input name="telefone" type="input" id="telefone" placeholder="Digite seu telefone" required />
                </div>
                <div class="input-box">
                    <label class="form-label" for="nome">Email</label>
                    <input name="email" type="input" id="email" placeholder="Digite seu email" required />
                </div>

                <button type="submit" onclick="submit()" class="btn btn-primary">Salvar</button>
                <br>
                <button> <a href="listarUsuarios.jsp"  style="color: white; text-decoration: none;">Listar Usuarios</a> </button>

            </form>
        </section>

    </body>
</html
