<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta charset="utf-8">

    <title>SCIO</title>
    <link rel="shortcut icon" href="./img/SCIO.png" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>
    <link rel="stylesheet" href="./css/reset.css">
    <link rel="stylesheet" href="./css/dashboard.css">
</head>

<body>
   <div class="sidebar-container">
        <div class="sidebar-logo">
            <img src="./img/SCIO.png" width="100" height="60" alt="">
        </div>
        <ul class="sidebar-navigation">
            <li class="header">Ações</li>
            <li>
                <a href="perfil.jsp" class="active">
                    <i class="fa fa-user" aria-hidden="true"></i> Perfil
                </a>
            </li>
            <li>
                <a href="ajuda.jsp">
                    <i class="fa fa-info-circle" aria-hidden="true"></i> Ajuda
                </a>
            </li>
            <li>
                <a onclick="sair()">
                    <i class="fa fa-sign-out" aria-hidden="true"></i> Sair
                </a>
            </li>
            <li class="header">Atividades</li>
            <li>
                <a href="memorizacao.jsp">
                    <i class="fa fa-question" aria-hidden="true"></i> Memorização
                </a>
            </li>
            <li>
                <a href="materia.jsp">
                    <i class="fa fa-book" aria-hidden="true"></i> Matérias
                </a>
            </li>
            <li>
                <a href="index.jsp">
                    <i class="fa fa-commenting" aria-hidden="true"></i> ChatBot
                </a>
            </li>
            <%if(session.getAttribute("status").equals("Administrador")){ %>
            <li class="header">Administrador</li>
            <li>
                <a href="administrador">
                    <i class="fa fa-question" aria-hidden="true"></i> Gerenciar
                </a>
            </li>
            <%}%>
        </ul>
    </div>

    <div class="content-container">

        <div class="container-fluid">
            <section id="perfil-form">
                <div class="container">
                    <form  method="post" action="perfil" id="perfil-form">
                        <label for="fname">Nome</label>
                        <input type="text" id="fname" name="nome" placeholder="Seu nome..." value="<%out.print(session.getAttribute("nome"));%>">

                        <label for="lname">Login</label>
                        <input type="text" id="tlogin" name="login" placeholder="Seu login..." value="<%out.print(session.getAttribute("login"));%>">

                        <label for="lemail">Email</label>
                        <input type="email" id="lemail" name="email" placeholder="E-mail..." value="<%out.print(session.getAttribute("email"));%>">

						<label for="lemail">Dica de Senha</label>
                        <input type="text" id="ldica" name="dica" placeholder="Dica de Senha..." value="<%out.print(session.getAttribute("dica"));%>">

						<label for="lstatus">Status</label>
                        <input hidden type="text" id="lstatus" name="status" placeholder="Status..." value="<%out.print(session.getAttribute("status"));%>">

						<label for="lname">Senha</label>
                        <input type="text" id="tsexo" name="senha" placeholder="Sua senha..." value="<%out.print(session.getAttribute("senha"));%>">

						<label for="lsexo">Sexo</label>
						<select id="tsexo" name="sexo">
  						<option <%if(session.getAttribute("sexo").equals("M")){out.print("selected");};%> value="M">Masculino</option>
  						<option <%if(session.getAttribute("sexo").equals("F")){out.print("selected");};%> value="F">Feminino</option>
						</select>
						
						<label for="lcpf">CPF</label>
                        <input type="text" id="lcpf" name="cpf" placeholder="CPF..." value="<%out.print(session.getAttribute("cpf"));%>">
                        
                        <input type="text" hidden id="lcofigo" name="codigo" placeholder="Codigo..." value="<%out.print(session.getAttribute("codigo"));%>">
                        
                        <button type="submit" class="btn btn-primary">Salvar</button>
   
                    </form>
               
                </div>
            </section>
        </div>
    </div>
    
    <script type="text/javascript" src="scripts/esqueci-senha.js"></script>
	<script type="text/javascript" src="scripts/perfil.js"></script>
	<script type="text/javascript" src="scripts/sair.js"></script>
    <script src="//code.jquery.com/jquery-1.11.0.min.js"></script>


</body>

</html>