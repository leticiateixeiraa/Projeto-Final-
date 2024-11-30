package model.dao;

import model.Cliente;
import java.sql.*;
import util.ConectaDB;
import java.util.List;
import java.util.ArrayList;

/*
Author     : Kaue Ono / Leticia Teixeira / Renan Silva
*/
public class ClienteDAO {
    // Atrib.
    
    //Métodos
    //Metodo para inserir um novo registro na tabela
    public boolean InsCli(Cliente p_cli) throws ClassNotFoundException{
        Connection conexao = null;
        try{
            conexao = ConectaDB.conectar();
            Statement stmt = conexao.createStatement();
                        //INSERT INTO clientes (cpf, `nome`, `automovel`, fidelidade) VALUES (12321425612,'Renan','Astra',2);
            String sql = "INSERT INTO clientes(cpf, `nome`, `automovel`, fidelidade) VALUES (" + p_cli.getCpf() + ",'" 
                                                                                       + p_cli.getNome() + "','" 
                                                                                       + p_cli.getAutomovel() + "',"
                                                                                       + p_cli.getFidelidade() + "); ";
            stmt.executeUpdate(sql); //GO - Executar
            return true;
        }catch(SQLException ex){
            System.out.println("Erro:" + ex);
            return false;
        }
    }   
    
    //Metodo para fazer um select de apenas um registro da tabela.
    public Cliente ConsCli(Cliente p_cli) throws ClassNotFoundException{
        Connection conexao = null;
        try{
            conexao = ConectaDB.conectar();
            Statement stmt = conexao.createStatement();
                        //SELECT * FROM clientes WHERE id=1;
            String sql = "SELECT * FROM clientes where id = " + p_cli.getId();
            ResultSet rs = stmt.executeQuery(sql);
                        
            int n_reg = 0;
            while (rs.next()) {                
                p_cli.setId(Integer.parseInt( rs.getString("id")));
                p_cli.setCpf(Integer.parseInt( rs.getString("cpf")));
                p_cli.setNome(rs.getString("nome"));
                p_cli.setAutomovel(rs.getString("automovel"));
                p_cli.setFidelidade(Double.parseDouble(rs.getString("fidelidade") ));
                n_reg++;
            }
            conexao.close();
            
            if (n_reg==0){
                return null;
            }else{
                return p_cli;               
            }
        }catch(SQLException ex){
            System.out.println("Exception: " + ex);
            return null;
        } 
    } 
    
    //Metodo para fazer um select para visualizar todos os registros da tabela
    public List ConsCliLista() throws ClassNotFoundException{
        
        List lista = new ArrayList();
        
        Connection conexao = null;
        try{
            conexao = ConectaDB.conectar();
            Statement stmt = conexao.createStatement();
                        //SELECT * FROM clientes
            String sql = "SELECT * FROM clientes";
            ResultSet rs = stmt.executeQuery(sql);
                        
            int n_reg = 0;
            while (rs.next()) {
                Cliente cliente = new Cliente();
                cliente.setId(Integer.parseInt( rs.getString("id")));
                cliente.setCpf(Integer.parseInt(rs.getString("cpf")));
                cliente.setNome(rs.getString("nome"));
                cliente.setAutomovel(rs.getString("automovel"));
                cliente.setFidelidade(Double.parseDouble(rs.getString("fidelidade") ));
                lista.add(cliente);
                n_reg++;
            }
            conexao.close();
            
            if (n_reg==0){
                return null;
            }else{
                return lista;               
            }
        }catch(SQLException ex){
            System.out.println("Exception: " + ex);
            return null;
        } 
    }  
    
    //Metodo para excluir um registro da tabela
    public boolean ExCliId(Cliente p_cli) throws ClassNotFoundException{
        Connection conexao = null;
        try{
            conexao = ConectaDB.conectar();
            Statement stmt = conexao.createStatement();
                        //DELETE FROM clientes WHERE id=1;
            String sql = "DELETE FROM clientes WHERE id=" + p_cli.getId();
            stmt.executeUpdate(sql); //GO - Executar
            return true;
        }catch(SQLException ex){
            System.out.println("Erro:" + ex);
            return false;
        }
    }  
    
    //Metodo para alterar registro na tabela
    public boolean AltCli(Cliente p_cli) throws ClassNotFoundException{
        Connection conexao = null;
        try{
            conexao = ConectaDB.conectar();
            Statement stmt = conexao.createStatement();
                        //UPDATE clientes SET cpf=32145665214, nome='Renam', automovel='Hilux', fidelidade=5 WHERE id=1;
            String sql = "UPDATE clientes SET cpf=" + p_cli.getCpf() + "," +
                                                    "nome='" + p_cli.getNome()+ "'," + 
                                                    "automovel='" + p_cli.getAutomovel()+ "'," +
                                                    "fidelidade=" + p_cli.getFidelidade()+
                                                    " WHERE id=" + p_cli.getId() + ";";
            stmt.executeUpdate(sql); //GO - Executar
            return true;
        }catch(SQLException ex){
            System.out.println("Erro:" + ex);
            return false;
        }
    }   
}
