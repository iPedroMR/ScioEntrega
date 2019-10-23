<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

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
        <li class="nav-item active">
          <a class="nav-link" href="./home.jsp">HOME</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="./sobre.jsp">SOBRE</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="./como_funciona.jsp">COMO FUNCIONA</a>
        </li>
        <li class="nav-item">
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

  <main>

    <header class="header-main">
      <div class="text-box">
        <h1 class="heading-primary">
          <span class="heading-primary-main">Já pensou em um robô que te ajuda a estudar? Essa realidade chegou!</span>
          <span class="heading-primary-sub">O Scio consiste em um Voice Chatbot assistente de ensino, você irá fazer perguntas para ele sem precisar escrever!
            Nosso bot irá te ajudar em suas dúvidas de português na área de gramática, basta apenas ter um microfone e perguntar
            de forma natural que Scio irá te responder em áudio com uma voz humana!</span>
        </h1>
      </div>
    </header>

    <section class="row quem-somos align-items-center justify-content-center">
      <div class="col-sm-5">
        <h3>Surpreenda seus alunos com um atendimento automático eficiente.</h3>
        <p>A tecnologia de inteligência artificial está mudando o mundo e já está presente no ensino! Não fique para trás e
          comece hoje a tirar suas dúvidas de forma interativa por voz!</p>
      </div>
      <div class="col-sm-4">
        <img class="img-fluid" src="./img/undraw_exams_g4ow (1).svg" alt="ilustração">
      </div>
    </section>


    <img src="./img/lines.svg" class="img-fluid" alt="background">

    <section id="box">
      <div class="col-sm-12 text-center">
        <span class="title">Quem são os nossos
          <span class="title-bold">patrocinadores</span>
        </span>
      </div>
      <div class="row justify-content-center">
        <div class="col-sm-3 item">
          <img src="./img/ibm.png" alt="ilustração">
          <h4>
            <a target="_blank" href="https://www.ibm.com/br-pt">Link para o site</a>
          </h4>
          <p>Watson</p>
        </div>
        <div class="col-sm-3 item">
          <img src="./img/logo-fiap.png" alt="ilustração">
          <h4>
            <a target="_blank" href="https://www.fiap.com.br/">Link para o site</a>
          </h4>
          <p>Mentoria</p>
        </div>
      </div>
    </section>

    <section class="row quem-somos align-items-center justify-content-center">
      <div class="col-sm-5">
        <img class="img-fluid" src="./img/undraw_reminders_697p.svg" alt="ilustração">
      </div>
      <div class="col-sm-5">
        <h3>Um projeto feito de alunos para alunos!</h3>
        <p>Como estudantes entendemos a necessidade cada vez maior de aprender por conta própria e em qualquer lugar, o SCIO
          busca dar o protagonismo que o aluno precisa para evoluir de forma moderna e eficiente.</p>
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