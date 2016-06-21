<%-- 
    Document   : animeView
    Created on : 17/06/2016, 14:30:16
    Author     : Wallace
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>

        <!-- Bootstrap -->
        <link href="resources/css/bootstrap.min.css" rel="stylesheet">

        <title>Anime</title>
    </head>

    <body>

        <nav class="navbar navbar-default navbar-fixed-top topnav" role="navigation">
            <div class="container topnav">
                <div class="navbar-nav">
                    <a class="navbar-brand topnav" href="http://localhost:8080/animenext">Anime Next</a>
                </div>
            </div>
        </nav>

        <div class="container">
            <h1><a href="index.html">Anime</a></h1>
            <form>
                <table>
                    <tr>
                        <td>Número:</td>
                        <td><input placeholder="Identificador do anime" name="codigo"></td>
                    </tr>
                    <tr>
                        <td>Título:</td>
                        <td><input type="text" placeholder="Bleach" name="titulo"></td>
                    </tr>
                    <tr>
                        <td>Gênero:</td>
                        <td><input type="text" placeholder="Ação, Aventura, Fantasia" name="genro"></td>
                    </tr>
                    <tr>
                        <td>Lançamento:</td>
                        <td><input type="text" placeholder="dd/mm/aaaa" name="lancamento"></td>
                    </tr>
                    <tr>
                        <td>Direção:</td>
                        <td><input type="text" placeholder="Tomohisa Taguchi" name="direcao"></td>
                    </tr>
                    <tr>
                        <td>Temporada:</td>
                        <td><input placeholder="Quantas temporadas existem." name="temporada"></td>
                    </tr>
                </table>
                <button name="operacao" value="incluir">Incluir</button>
                <button name="operacao" value="excluir">Excluir</button>
                <button name="operacao" value="alterar">Alterar</button>
                <button name="operacao" value="listar">Listar</button>
            </form>
            <b>${msg}</b>
        </div>

        <!-- Aqui ficará a lista de animes que estão presentes no banco de dados -->    


        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="resources/js/bootstrap.min.js"></script>
    </body>
</html>