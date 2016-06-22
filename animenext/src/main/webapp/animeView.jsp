<%-- 
    Document   : animeView
    Created on : 17/06/2016, 14:30:16
    Author     : Wallace
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>

        <title>Animes</title>


        <!-- Bootstrap Core CSS -->
        <link href="resources/css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom CSS -->
        <link href="resources/css/landing-page.css" rel="stylesheet">

        <!-- Custom Fonts -->
        <link href="resources/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <link href="http://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        
        Tema
        http://startbootstrap.com/template-overviews/landing-page/
        <![endif]-->
    </head>

    <body>

        <!-- Navigation -->
        <nav class="navbar navbar-default navbar-fixed-top topnav" role="navigation">
            <div class="container topnav">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand topnav" href="http://localhost:8080/animenext/">AnimeNext</a>
                </div>
                <!-- /.navbar-collapse -->
            </div>
            <!-- /.container -->
        </nav>

        <!-- INICIO DO VIEW DE ANIMES -->
        <!-- Header -->
        <div class="intro-header-lista">
            <div class="container">

                <div class="row">
                    <div class="col-lg-12">
                        <div class="intro-message">

                            <h1>Anime</h1>
                            <form>
                                <table>
                                    <tr>
                                        <td>Número:</td>
                                        <td><input class="fonte-anime" placeholder="Identificador do anime" name="codigo"></td>
                                    </tr>
                                    <tr>
                                        <td>Título:</td>
                                        <td><input class="fonte-anime" type="text" placeholder="Bleach" name="titulo"></td>
                                    </tr>
                                    <tr>
                                        <td>Gênero:</td>
                                        <td><input class="fonte-anime" type="text" placeholder="Ação, Aventura, Fantasia" name="genro"></td>
                                    </tr>
                                    <tr>
                                        <td>Lançamento:</td>
                                        <td><input class="fonte-anime" type="text" placeholder="dd/mm/aaaa" name="lancamento"></td>
                                    </tr>
                                    <tr>
                                        <td>Direção:</td>
                                        <td><input class="fonte-anime" type="text" placeholder="Tomohisa Taguchi" name="direcao"></td>
                                    </tr>
                                    <tr>
                                        <td>Temporada:</td>
                                        <td><input class="fonte-anime" placeholder="Quantas temporadas existem." name="temporada"></td>
                                    </tr>
                                </table>
                                <ul class="list-inline intro-social-buttons">
                                    <button name="operacao" value="incluir" class="btn btn-default btn-lg">Incluir</button>
                                    <button name="operacao" value="excluir" class="btn btn-default btn-lg">Excluir</button>
                                    <button name="operacao" value="alterar" class="btn btn-default btn-lg">Alterar</button>
                                    <button name="operacao" value="listar" class="btn btn-default btn-lg">Listar</button>
                                </ul>
                            </form>
                            <b>${msg}</b>

                        </div>
                    </div>
                </div>

            </div>
            <!-- /.container -->

        </div>
        <!-- /.intro-header -->
        <!-- FIM DO VIEW DE ANIMES -->


        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="resources/js/bootstrap.min.js"></script>
    </body>
</html>