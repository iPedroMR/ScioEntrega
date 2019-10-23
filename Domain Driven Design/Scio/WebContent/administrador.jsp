<%@page language="java" import="java.util.*" %>
<%@page language="java" import="br.com.fiap.beans.Usuario" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta charset="utf-8">

    <title>SCIO</title>
    <link rel="shortcut icon" href="./img/SCIO.png" />
<!--     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
 -->    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
    <!-- <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script> -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
        
        
  	<link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css'>
	<link rel='stylesheet' href='https://cdn.datatables.net/1.10.12/css/dataTables.bootstrap.min.css'>
	<link rel='stylesheet' href='https://cdn.datatables.net/buttons/1.2.2/css/buttons.bootstrap.min.css'>
        
    <!-- <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script> -->
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>
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
                <a href="perfil.jsp">
                    <i class="fa fa-user" aria-hidden="true"></i> Perfil
                </a>
            </li>
            <li>
                <a href="ajuda.jsp">
                    <i class="fa fa-info-circle" aria-hidden="true"></i> Ajuda
                </a>
            </li>
            <li>
                <a onclick="sair()" >
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
                <a href="administrador" class="active">
                    <i class="fa fa-question" aria-hidden="true"></i> Gerenciar
                </a>
            </li>
            <%}%>
        </ul>
    </div>

    <div class="content-container">
        <div class="container-fluid">
<table id="example" class="table table-striped table-bordered" cellspacing="0" width="100%">
	<thead>
		<tr>
			<th>Código</th>
			<th>Nome</th>
			<th>Login</th>
			<th>E-mail</th>
			<th>Senha</th>
		    <th>CPF</th>
		    <th>Sexo</th>
			<th>Status</th>
			<th>Dica de Senha</th>
			<th style="text-align:center;width:100px;">Ações</th>
		</tr>
	</thead>
	<tbody>
<% ArrayList<Usuario> data = (ArrayList<Usuario>) request.getAttribute("data");
for(int i =0; i < data.size(); i++){
%>
<tr>
<td><%=data.get(i).getCd_usuario()%></td>
<td><%=data.get(i).getNm_usuario()%></td>
<td><%=data.get(i).getLg_usuario()%></td>
<td><%=data.get(i).getEmail_usuario()%></td>
<td><%=data.get(i).getSn_usuario()%></td>
<td><%=data.get(i).getCpf_usuario()%></td>
<td><%=data.get(i).getSx_usuario()%></td>
<td><%=data.get(i).getSt_usuario()%></td>
<td><%=data.get(i).getDica_usuario()%></td>
<td>
				<form action="administrador" method="post">
				<button type="submit" name="codigo" class="btn btn-danger btn-xs dt-delete" value="<%=data.get(i).getCd_usuario()%>">
					<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
				</button>
				</form>
			</td></tr>
		<%}%>
	</tbody>
</table>

<!-- Modal -->
<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Editar dados</h4>
      </div>
      <div class="modal-body">
        
      </div>
    </div>

  </div>
</div>		
        </div>
    </div>


  <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.0/jquery.min.js'></script>
<script src='https://cdn.datatables.net/1.10.12/js/jquery.dataTables.min.js'></script>
<script src='https://cdn.datatables.net/buttons/1.2.2/js/dataTables.buttons.min.js'></script>
<script src='https://cdn.datatables.net/buttons/1.2.2/js/buttons.colVis.min.js'></script>
<script src='https://cdn.datatables.net/buttons/1.2.2/js/buttons.html5.min.js'></script>
<script src='https://cdn.datatables.net/buttons/1.2.2/js/buttons.print.min.js'></script>
<script src='https://cdn.datatables.net/1.10.12/js/dataTables.bootstrap.min.js'></script>
<script src='https://cdn.datatables.net/buttons/1.2.2/js/buttons.bootstrap.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/jszip/2.5.0/jszip.min.js'></script>
<script src='https://cdn.rawgit.com/bpampuch/pdfmake/0.1.18/build/vfs_fonts.js'></script>
<script src='https://cdn.rawgit.com/bpampuch/pdfmake/0.1.18/build/pdfmake.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.min.js'></script>
	<script type="text/javascript" src="scripts/datatables.js"></script>
	<script type="text/javascript" src="scripts/contato.js"></script>
	<script type="text/javascript" src="scripts/sair.js"></script>


</body>

</html>