
<%@page import="java.util.List"%>
<%@page import="model.persistence.Usuario"%>
<%@page import="controller.UsuarioController"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%

    UsuarioController userController = new UsuarioController();
    List<Usuario> listaUsuarios = userController.listar();


%>

<html>
    <had>
        <title>Usuarios</title>
        <meta name="viewport" http-equiv="Content-Type" content="width=device-width, initial-scale=1.0" charset=UTF-8">

        <style>
            * {
                margin: 0;
                padding: 0;
            }

            .table-box {
                margin: 50px auto;
            }

            .table-row {
                display: table;
                width: 80%;
                margin: 10px auto;
                font-family: sans-serif;
                background: transparent;
                padding: 12px 0;
                color: #555;
                font-size: 13px;
                box-shadow: 0 1px 4px 0px rgba(0, 0, 50, 0.3);
            }

            .table-head {
                background: #8665f7;
                box-shadow: none;
                color: #fff;
                font-weight: 600;
            }

            .table-head .table-cell {
                border-right: none;
            }

            .table-cell {
                display: table-cell;
                width: 20%;
                text-align: center;
                padding: 4px 0;
                border-right: 1px solid #d6d4d4;
                vertical-align: middle;
            }

            .actionCells {
                width: 24px;
            }

            .first-cell {
                text-align: left;
                padding-left: 10px;
            }

            .last-cell {
                border-right: none;
            }

            a {
                text-decoration: none;
                color: #555;
            }

            @media only screen and (max-width: 600px) {
                .table-row {
                    font-size: 11px;
                }
            }

            .form button {
                height: 40px;
                width: 150px;
                color: #fff;
                font-size: 1rem;
                font-weight: 400;
                margin: 30px auto;
                border: none;
                cursor: pointer;
                transition: all 0.2s ease;
                background: rgb(130, 106, 251);
                border-radius: 20px;
                display: block;
            }

            .form button:hover {
                background: rgb(88, 56, 250);
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


        </style>

    </had>
    <body>  

        <div class="table-box">
            <div class="table-row table-head">
                <div class="table-cell first-cell">
                    <p>Nome</p>
                </div>
                <div class="table-cell">
                    <p>CPF</p>
                </div>
                <div class="table-cell last-cell">
                    <p>Telefone</p>
                </div> 
                <div class="table-cell last-cell">
                    <p>Email</p>
                </div>
                <div class="table-cell last-cell">
                    <p>Deletar</p>
                </div>

            </div>

            <% for (Usuario user : listaUsuarios) { %>

            <div class="table-row">
                <div class="table-cell first-cell">
                    <p><%out.println(user.getNome());%></p>
                </div>

                <div class="table-cell">
                    <p><%out.println(user.getCpf());%></p>
                </div>

                <div class="table-cell">
                    <p> <%out.println(user.getTelefone());%> </p>
                </div> 

                <div class="table-cell">
                    <p> <%out.println(user.getEmail());%> </p>
                </div> 

                <div class="table-cell">
                    <a href="deletarUsuario.jsp?id=<%out.println(user.getId());%>"><ion-icon name="close"></ion-icon></a>
                </div> 
            </div>

            <% }%>

        </div>   

        <section class="container">
            <form class="form">
                <button> <a href="index.jsp" style="color: white; text-decoration: none; width: 25px">Voltar</a> </button>
            </form>
        </section>

        <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
        <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>

    </body>
</html>
