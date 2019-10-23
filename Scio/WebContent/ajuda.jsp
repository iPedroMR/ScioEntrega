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
                <a href="perfil.jsp">
                    <i class="fa fa-user" aria-hidden="true"></i> Perfil
                </a>
            </li>
            <li>
                <a href="ajuda.jsp" class="active">
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

                <div class="container">
                        <div class="row">
                            <div class="col-lg-4">
                                <div class="nav nav-pills faq-nav" id="faq-tabs" role="tablist" aria-orientation="vertical">

                                    <a href="#tab1" class="nav-link active" data-toggle="pill" role="tab" aria-controls="tab1" aria-selected="false">
                                        <i class="mdi mdi-account"></i> Perfil
                                    </a>
                                    <a href="#tab3" class="nav-link" data-toggle="pill" role="tab" aria-controls="tab3" aria-selected="false">
                                        <i class="mdi mdi-account-settings"></i> Matéria
                                    </a>
                                    <a href="#tab4" class="nav-link" data-toggle="pill" role="tab" aria-controls="tab4" aria-selected="false">
                                        <i class="mdi mdi-heart"></i> Memorização
                                    </a>
                                    <a href="#tab5" class="nav-link" data-toggle="pill" role="tab" aria-controls="tab5" aria-selected="false">
                                        <i class="mdi mdi-coin"></i> Assistente Virtual (ChatBot)
                                    </a>
                                </div>
                            </div>
                            <div class="col-lg-8">
                                <div class="tab-content" id="faq-tab-content">
                                    <div class="tab-pane show active" id="tab1" role="tabpanel" aria-labelledby="tab1">
                                        <div class="accordion" id="accordion-tab-1">
                                            <div class="card">
                                                <div class="card-header" id="accordion-tab-1-heading-1">
                                                    <h5>
                                                        <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#accordion-tab-1-content-1" aria-expanded="false" aria-controls="accordion-tab-1-content-1">Quais são os dados obrigatórios para o meu cadastro?</button>
                                                    </h5>
                                                </div>
                                                <div class="collapse show" id="accordion-tab-1-content-1" aria-labelledby="accordion-tab-1-heading-1" data-parent="#accordion-tab-1">
                                                    <div class="card-body">
                                                        <p>É sempre importante colocarmos todos os dados requeridos, mas os dados obrigatórios para o cadastro são: login, senha, nome. Os demais poderão ser cadastrados posteriormente.</p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card">
                                                <div class="card-header" id="accordion-tab-1-heading-2">
                                                    <h5>
                                                        <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#accordion-tab-1-content-2" aria-expanded="false" aria-controls="accordion-tab-1-content-2">É necessário definir Dica Senha?</button>
                                                    </h5>
                                                </div>
                                                <div class="collapse" id="accordion-tab-1-content-2" aria-labelledby="accordion-tab-1-heading-2" data-parent="#accordion-tab-1">
                                                    <div class="card-body">
                                                    <p>A dica senha é essencial para a recuperação da senha, não é obrigatório no momento do cadastro mas é de extrema importância para as próximas utilizações do aplicativo.
                                                    </p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane" id="tab2" role="tabpanel" aria-labelledby="tab2">
                                        <div class="accordion" id="accordion-tab-2">
                                            <div class="card">
                                                <div class="card-header" id="accordion-tab-2-heading-1">
                                                    <h5>
                                                        <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#accordion-tab-2-content-1" aria-expanded="false" aria-controls="accordion-tab-2-content-1">Eu posso ser redirecionado ao ChatBot ao escolher a minha matéria?</button>
                                                    </h5>
                                                </div>
                                                <div class="collapse show" id="accordion-tab-2-content-1" aria-labelledby="accordion-tab-2-heading-1" data-parent="#accordion-tab-2">
                                                    <div class="card-body">
                                                        <p>Kif, I have mated with a woman. Inform the men. This is the worst part. The calm before the battle. Bender, being God isn't easy. If you do too much, people get dependent on you, and if you do nothing, they lose hope. You have to use a light touch. Like a safecracker, or a pickpocket.</p>
                                                        <p><strong>Example: </strong>There's no part of that sentence I didn't like! You, a bobsleder!? That I'd like to see!</p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card">
                                                <div class="card-header" id="accordion-tab-2-heading-2">
                                                    <h5>
                                                        <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#accordion-tab-2-content-2" aria-expanded="false" aria-controls="accordion-tab-2-content-2">This opera's as lousy as it is brilliant?</button>
                                                    </h5>
                                                </div>
                                                <div class="collapse" id="accordion-tab-2-content-2" aria-labelledby="accordion-tab-2-heading-2" data-parent="#accordion-tab-2">
                                                    <div class="card-body">
                                                        <p>Your lyrics lack subtlety. You can't just have your characters announce how they feel. That makes me feel angry! It's okay, Bender. I like cooking too. Interesting. No, wait, the other thing: tedious.</p>
                                                        <p><strong>Example: </strong>Of all the friends I've had… you're the first. But I know you in the future. I cleaned your poop. Then we'll go with that data file!</p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card">
                                                <div class="card-header" id="accordion-tab-2-heading-3">
                                                    <h5>
                                                        <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#accordion-tab-2-content-3" aria-expanded="false" aria-controls="accordion-tab-2-content-3">Who are you, my warranty?!</button>
                                                    </h5>
                                                </div>
                                                <div class="collapse" id="accordion-tab-2-content-3" aria-labelledby="accordion-tab-2-heading-3" data-parent="#accordion-tab-2">
                                                    <div class="card-body">
                                                        <p>Oh, I think we should just stay friends. I'll tell them you went down prying the wedding ring off his cold, dead finger. Aww, it's true. I've been hiding it for so long. Say it in Russian! Then throw her in the laundry room, which will hereafter be referred to as "the brig".</p>
                                                        <p><strong>Example: </strong> We're rescuing ya. Robot 1-X, save my friends! And Zoidberg! <em>Then we'll go with that data file!</em> Okay, I like a challenge.</p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card">
                                                <div class="card-header" id="accordion-tab-2-heading-4">
                                                    <h5>
                                                        <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#accordion-tab-2-content-4" aria-expanded="false" aria-controls="accordion-tab-2-content-4">I haven't felt much of anything since my guinea pig died?</button>
                                                    </h5>
                                                </div>
                                                <div class="collapse" id="accordion-tab-2-content-4" aria-labelledby="accordion-tab-2-heading-4" data-parent="#accordion-tab-2">
                                                    <div class="card-body">
                                                        <p>And I'm his friend Jesus. Oh right. I forgot about the battle. OK, if everyone's finished being stupid. We'll need to have a look inside you with this camera. I'm just glad my fat, ugly mama isn't alive to see this day.</p>
                                                        <p><strong>Example: </strong> Isn't it true that you have been paid for your testimony? Quite possible.</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane" id="tab3" role="tabpanel" aria-labelledby="tab3">
                                        <div class="accordion" id="accordion-tab-3">
                                            <div class="card">
                                                <div class="card-header" id="accordion-tab-3-heading-1">
                                                    <h5>
                                                        <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#accordion-tab-3-content-1" aria-expanded="false" aria-controls="accordion-tab-3-content-1">Eu posso ser redirecionado ao ChatBot ao escolher a minha matéria?</button>
                                                    </h5>
                                                </div>
                                                <div class="collapse show" id="accordion-tab-3-content-1" aria-labelledby="accordion-tab-3-heading-1" data-parent="#accordion-tab-3">
                                                    <div class="card-body">
                                                        <p>Não, a aba de matérias, funciona com o intuito de informar e descrever cada uma, as perguntas abaixo de sua descrição servem para o momento de conversação com o ChatBot.
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane" id="tab4" role="tabpanel" aria-labelledby="tab4">
                                        <div class="accordion" id="accordion-tab-4">
                                            <div class="card">
                                                <div class="card-header" id="accordion-tab-4-heading-1">
                                                    <h5>
                                                        <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#accordion-tab-4-content-1" aria-expanded="false" aria-controls="accordion-tab-4-content-1">Eu posso escolher duas ou mais opções no exercício?</button>
                                                    </h5>
                                                </div>
                                                <div class="collapse show" id="accordion-tab-4-content-1" aria-labelledby="accordion-tab-4-heading-1" data-parent="#accordion-tab-4">
                                                    <div class="card-body">
                                                        <p>Não, apenas uma opção pode ser escolhida.</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane" id="tab5" role="tabpanel" aria-labelledby="tab5">
                                        <div class="accordion" id="accordion-tab-5">
                                            <div class="card">
                                                <div class="card-header" id="accordion-tab-5-heading-1">
                                                    <h5>
                                                        <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#accordion-tab-5-content-1" aria-expanded="false" aria-controls="accordion-tab-5-content-1">Quando a minha pergunta não for respondida o que deve ser feito?</button>
                                                    </h5>
                                                </div>
                                                <div class="collapse show" id="accordion-tab-5-content-1" aria-labelledby="accordion-tab-5-heading-1" data-parent="#accordion-tab-5">
                                                    <div class="card-body">
                                                        <p>Sentimos muito pelo transtorno, mas estamos aqui para melhorar e surpreende-lo. Dessa forma, contate-nos e envie uma sugestão, explicando o ocorrido!</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
        </div>
    </div>
    
    <script type="text/javascript" src="scripts/sair.js"></script>
    <script src="//code.jquery.com/jquery-1.11.0.min.js"></script>

</body>

</html>