<%-- 
    Document   : animeView
    Created on : 17/06/2016, 14:30:16
    Author     : Wallace
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <title>Anime</title>
    </head>

    <body>
        <h1><a href="index.html">Anime</a></h1>
        <form>
            <table>
                <tr>
                    <td>Número:</td>
                    <td><input name="codigo"></td>
                </tr>
                <tr>
                    <td>Título:</td>
                    <td><input name="titulo"></td>
                </tr>
                <tr>
                    <td>Gênero:</td>
                    <td><input name="genro"></td>
                </tr>
                <tr>
                    <td>Lançamento:</td>
                    <td><input type="date" name="lancamento"></td>
                </tr>
                <tr>
                    <td>Direção:</td>
                    <td><input name="direcao"></td>
                </tr>
                <tr>
                    <td>Temporada:</td>
                    <td><input name="temporada"></td>
                </tr>
            </table>
            <button name="operacao" value="incluir">Incluir</button>
            <button name="operacao" value="excluir">Excluir</button>
            <button name="operacao" value="alterar">Alterar</button>
        </form>
        <b>${msg}</b>
    </body>

</html>