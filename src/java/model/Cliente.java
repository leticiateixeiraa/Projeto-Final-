package model;

/*
Author     : Kaue Ono / Leticia Teixeira / Renan Silva
*/

// classe Cliente
public class Cliente {
    //atributos
    private int id;
    private int cpf;
    private String nome;
    private String automovel;
    private double fidelidade;
    
    //metodos setter
    public void setId(int id) {
        this.id = id;
    }

    public void setCpf(int cpf) {
        this.cpf = cpf;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public void setAutomovel(String automovel) {
        this.automovel = automovel;
    }

    public void setFidelidade(double fidelidade) {
        this.fidelidade = fidelidade;
    }
    
    //metodos getter
    public int getId() {
        return id;
    }

    public int getCpf() {
        return cpf;
    }

    public String getNome() {
        return nome;
    }

    public String getAutomovel() {
        return automovel;
    }

    public double getFidelidade() {
        return fidelidade;
    }
    
    
}
