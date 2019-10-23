<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">

<head>
  <meta charset="UTF-8">
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
        <li class="nav-item">
          <a class="nav-link" href="./time.jsp">TIME</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="./aplicacao.jsp">APLICAÇÃO</a>
        </li>
        <li class="nav-item active">
          <a class="nav-link" href="./contato.jsp">CONTATO</a>
        </li>
        <li class="nav-item">
          <a class="btn btn-outline-primary" href="./entrar.html">ENTRAR/CADASTRAR</a>
        </li>
      </ul>
    </div>
  </nav>

  <section id="banner" class="banner-secondary">
    <div class="p-4 col-sm-8 text-center">
      <span class="title">Quer conversar com os nossos seres humanos?</span>
    </div>
  </section>

  <main>

    <section id="contact-form">
      <div class="container">
        <form id="mensagem-form">

          <label for="fname">Nome</label>
          <input type="text" id="fname" name="firstname" placeholder="Seu nome...">

          <label for="lname">Sobrenome</label>
          <input type="text" id="lname" name="lastname" placeholder="Seu sobrenome...">

          <label for="lemail">Email</label>
          <input type="email" id="lemail" name="email" placeholder="E-mail...">


          <label for="country">Assunto</label>
          <select id="country" name="country">
            <option value="australia">Selecione</option>
            <option value="canada">Trabalhe Conosco</option>
            <option value="usa">Parceria</option>
            <option value="usa">Dúvidas</option>
            <option value="usa">Outro</option>
          </select>

          <label for="subject">Mensagem</label>
          <textarea id="subject" name="subject" placeholder="Escreva algo..." style="height:200px"></textarea>


        </form>
                 <button onclick="contato()" class="btn btn-primary">Enviar</button>
        
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
  
  <script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>
  <script type="text/javascript" src="scripts/contato.js"></script>
  <script src="./bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="https://code.jquery.com/jquery.min.js"></script>
      <script src="http://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
      
    
 

</body>

</html>