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
        <li class="nav-item active">
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

  <section id="banner" class="banner-quartenary">
    <div class="p-4 col-sm-8 text-center">
      <span class="title">Como funcionam os nossos robôs ?</span>
    </div>
  </section>

  <main>

    <section id="como-funciona" class="row align-items-center justify-content-center">
      <div class="col-sm-6">
        <p>O Projeto Scio é feito utilizando a tecnologia IBM Watson, um software personalizado de inteligência artificial que
          pode ser usado de diversas maneiras. Seu funcionamento segue alguns passos:</p>
        <p>O aluno utilizará o microfone e fará uma pergunta de forma natural, assim seu áudio será processado pelo Watson Speak
          To Text (conversor de voz humana para texto), transformando o áudio recebido em texto e enviando-o para o Watson
          Assistant (IA personalizada).</p>
        <p>Após o processamento, a resposta é enviada para o Watson Text to Speak (conversor de texto para um áudio que soa
          natural), que irá falar explicar a dúvida do aluno com a voz da Isabela (voz em português do IBM Watson).</p>
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