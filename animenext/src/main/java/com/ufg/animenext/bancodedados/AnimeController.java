/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ufg.animenext.bancodedados;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Wallace
 */
@WebServlet("/nextanime")
public class AnimeController extends HttpServlet {

    private String valor(HttpServletRequest req, String param, String padrao) {
        String result = req.getParameter(param);
        if (result == null) {
            result = padrao;
        }
        return result;
    }

    private int toInt(HttpServletRequest req, String param, String padrao) {
        return Integer.parseInt(valor(req, param, padrao));
    }

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            String msg;
            String op = valor(req, "operacao", "");
            int codigo = toInt(req, "codigo", "0");
            String titulo = valor(req, "titulo", "");
            String genero = valor(req, "genero", "");
            String lancamento = valor(req, "lancamento", "");
            String direcao = valor(req, "direcao", "");
            int temporada = toInt(req, "temporada", "0");
            if (op.equals("incluir")) {
                AnimeDao.inclui(codigo, titulo, genero, lancamento, direcao, temporada);
                msg = "Inclusão realizada com sucesso.";
            } else if (op.equals("alterar")) {
                AnimeDao.alterar(codigo, titulo, genero, lancamento, direcao, temporada);
                msg = "Alteração realizada com sucesso.";
            } else if (op.equals("excluir")) {
                AnimeDao.excluir(codigo);
                msg = "Exclusão realizada com sucesso.";
            } else if (op.equals("")) {
                msg = "";
            } else {
                throw new IllegalArgumentException("Operação \"" + op + "\" não suportada.");
            }
            req.setAttribute("msg", msg);
            req.getRequestDispatcher("animeView.jsp").forward(req, resp);
        } catch (Exception e) {
            e.printStackTrace(resp.getWriter());
        }
    }
}
