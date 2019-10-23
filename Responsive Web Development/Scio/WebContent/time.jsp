<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <title>SCIO</title>
  <link rel="shortcut icon" href="./img/SCIO.png"/>
  <link href="./bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="./css/reset.css">
  <link rel="stylesheet" href="./css/style.css">
</head>

<body>

  <nav class="navbar navbar-expand-lg navbar-light">

    <a class="navbar-brand mr-0 mr-md-2" href="./index.jsp">
      <img src="./img/SCIO.png" width="100" height="60" alt="">
    </a>

    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false"
      aria-label="Alterna navegação">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav ml-auto">
        <li class="nav-item">
          <a class="nav-link" href="./home.jsp">HOME</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="./sobre.jsp">SOBRE</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="./como_funciona.jsp">COMO FUNCIONA</a>
        </li>
        <li class="nav-item active">
          <a class="nav-link" href="./time.jsp">TIME</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="./aplicacao.jsp">APLICAÇÃO</a>
        </li>
        <li class="nav-item">
          <a class="nav-link bordered" href="./contato.jsp">CONTATO</a>
        </li>
        <li class="nav-item">
          <a class="btn btn-outline-primary" href="./entrar.jsp">ENTRAR/CADASTRAR</a>
        </li>
      </ul>
    </div>
  </nav>

  <section id="banner" class="banner-fifth">
    <div class="p-4 col-sm-8 text-center">
      <span class="title">Quem compõe a Scio</span>
    </div>
  </section>

  <main>

    <section id="membro-time" class="row align-items-center justify-content-center">
      <div class="col-sm-3">
        <img class="img-fluid" src="./img/danielle.jpg" alt="ilustração">
      </div>
      <div class="col-sm-5">
        <h3>Danielle Saluti Fialho</h3>
        <p>Gerente de Projeto - Responsável pela documentação e análise da SCIO</p>
      </div>
    </section>

    <section id="membro-time" class="row align-items-center justify-content-center">
      <div class="col-sm-5">
        <h3>Paola Rodrigues Frizon</h3>
        <p>Banco de Dados - Responsável pela modelagem física e lógica de dados</p>
      </div>
      <div class="col-sm-3">
          <img class="img-fluid" src="./img/paola.png" alt="ilustração">
        </div>
    </section>

    <section id="membro-time" class="row align-items-center justify-content-center">
      <div class="col-sm-3">
        <img class="img-fluid" src="./img/pedro.jpg" alt="ilustração">
      </div>
      <div class="col-sm-5">
        <h3>Pedro Medeiros Rezende</h3>
        <p>Front-End - Responsável pelo desenvolvimento web e mobile</p>
      </div>
    </section>

    <section id="membro-time" class="row align-items-center justify-content-center">
      <div class="col-sm-5">
        <h3>Guilherme Henrique de Oliveira</h3>
        <p>Back-End - Responsável pelo desenvolvimento das API's da SCIO</p>
      </div>

      <div class="col-sm-3">
        <img class="img-fluid" src="./img/guilherme.png" alt="ilustração">
      </div>
    </section>

    <section id="membro-time" class="row align-items-center justify-content-center">
      <div class="col-sm-3">
        <img class="img-fluid" src="./img/otavio.png" alt="ilustração">
      </div>
      <div class="col-sm-5">
        <h3>Otávio Ramos Zanelatto</h3>
        <p>Infraestrutura - Responsável pela organização e disposição estrutural da SCIO</p>
      </div>
    </section>

  </main>

  <footer>
    <div class="row align-items-center">
      <div class="col">
        <a class="logo" href="/">
          <img src="./img/SCIO_negative.png" alt="">
        </a>
      </div>
      <div class="col text-right">
        <a rel="license" href="http://creativecommons.org/licenses/by-nc-nd/4.0/">
          <img alt="Licença Creative Commons" style="border-width:0" src="https://i.creativecommons.org/l/by-nc-nd/4.0/88x31.png" />
        </a>
        <br />Este obra está licenciado com uma Licença
        <a rel="license" href="http://creativecommons.org/licenses/by-nc-nd/4.0/">Creative Commons Atribuição-NãoComercial-SemDerivações 4.0 Internacional</a>.
      </div>
    </div>
  </footer>

  <script src="./bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="https://code.jquery.com/jquery.min.js"></script>
   <script src="http://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
 

</body>

</html>