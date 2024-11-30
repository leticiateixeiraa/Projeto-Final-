/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/*
Author     : Kaue Ono / Leticia Teixeira / Renan Silva
*/
// Classe para criação dos campos que o usuario vai preencher
public class Produto {
    //Atributos
    private int id;
    private String nome;
    private String especificacao;
    private double valor; 
    private double quantidade;
   
    // Metodos Setters    
    public void setId(int id) {
        this.id = id;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public void setEspecificacao(String especificacao) {
        this.especificacao = especificacao;
    }

    public void setValor(double valor) {
        this.valor = valor;
    }

    public void setQuantidade(double quantidade) {
        this.quantidade = quantidade;
    }

    
    // Metodos Getters
    public int getId() {
        return id;
    }

    public String getNome() {
        return nome;
    }

    public String getEspecificacao() {
        return especificacao;
    }

    public double getValor() {
        return valor;
    }

    public double getQuantidade() {
        return quantidade;
    }

    
       
}

