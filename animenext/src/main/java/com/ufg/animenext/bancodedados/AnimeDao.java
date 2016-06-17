/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ufg.animenext.bancodedados;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author Wallace
 */
public class AnimeDao {

    private static final String URL = "jdbc:derby:dbanime;create=true";

    public static void inclui(int codigo, String titulo, String genero, String lancamento, String direcao, int temporada) throws SQLException {
        // Abrir uma conexão com o banco de dados.
        Connection conn = DriverManager.getConnection(URL);
        // Executar instrução SQL.
        String sql = "insert into anime (titulo, genero, lancamento, direcao, temporada) values (?, ?, ?, ?, ?, ?)";
        PreparedStatement pstmt = conn.prepareStatement(sql);
        pstmt.setInt(1, codigo);
        pstmt.setString(2, titulo);
        pstmt.setString(3, genero);
        pstmt.setString(4, lancamento);
        pstmt.setString(5, direcao);
        pstmt.setInt(6, temporada);
        pstmt.executeUpdate();
        // Fechar sentença.
        pstmt.close();
        // Fechar conexão.
        conn.close();
    }

    public static void alterar(int codigo, String titulo, String genero, String lancamento, String direcao, int temporada) throws SQLException {
        // Abrir uma conexão com o banco de dados.
        Connection conn = DriverManager.getConnection(URL);
        // Executar instrução SQL.
        String sql = "update anime set titulo = ?, genero = ?, lancamento = ?, direcao = ?, temporada = ? where codigo = ?";
        PreparedStatement pstmt = conn.prepareStatement(sql);
        pstmt.setString(2, titulo);
        pstmt.setString(3, genero);
        pstmt.setString(4, lancamento);
        pstmt.setString(5, direcao);
        pstmt.setInt(6, temporada);
        pstmt.setInt(1, codigo);
        pstmt.executeUpdate();
        // Fechar sentença.
        pstmt.close();
        // Fechar conexão.
        conn.close();
    }

    public static void excluir(int codigo) throws SQLException {
        // Abrir uma conexão com o banco de dados.
        Connection conn = DriverManager.getConnection(URL);
        // Executar instrução SQL.
        String sql = "delete from anime where codigo = ?";
        PreparedStatement pstmt = conn.prepareStatement(sql);
        pstmt.setInt(1, codigo);
        pstmt.executeUpdate();
        // Fechar sentença.
        pstmt.close();
        // Fechar conexão.
        conn.close();
    }
}
