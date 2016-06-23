/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ufg.animenext.bancodedados;

/**
 *
 * @author Wallace
 */
public class ListaAnime {

    private int codigo;
    private String titulo;
    private String genero;
    private String lancamento;
    private String direcao;
    private int temporada;
    
    public ListaAnime(){
        
    }

    public ListaAnime(int codigo, String titulo, String genero, String lancamento, String direcao, int temporada) {
        this.codigo = codigo;
        this.titulo = titulo;
        this.genero = genero;
        this.lancamento = lancamento;
        this.direcao = direcao;
        this.temporada = temporada;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public void setGenero(String genero) {
        this.genero = genero;
    }

    public void setLancamento(String lancamento) {
        this.lancamento = lancamento;
    }

    public void setDirecao(String direcao) {
        this.direcao = direcao;
    }

    public void setTemporada(int temporada) {
        this.temporada = temporada;
    }

    public int getCodigo() {
        return codigo;
    }

    public String getTitulo() {
        return titulo;
    }

    public String getGenero() {
        return genero;
    }

    public String getLancamento() {
        return lancamento;
    }

    public String getDirecao() {
        return direcao;
    }

    public int getTemporada() {
        return temporada;
    }
}
