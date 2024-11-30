package model.dao;

import model.Produto;
import java.sql.*;
import util.ConectaDB;
import java.util.List;
import java.util.ArrayList;

/*
Author     : Kaue Ono / Leticia Teixeira / Renan Silva
*/

//Classe para inserir os dados no banco de dados
public class ProdutoDAO {
    // Método que insere os dados no banco.
    public boolean InsProd(Produto p_inserir) throws ClassNotFoundException{
        //Conexão com o banco
        Connection conexao = null;
        //Inserir
        try
        {
            conexao = ConectaDB.conectar();
            Statement stmt = conexao.createStatement();
            //Comando mysql para inserir os dados no banco de dados
            String sql = "INSERT INTO produtos (nome, especificacao, valor, quantidade) VALUES ('" + p_inserir.getNome() +
                                                                                   "', '" + p_inserir.getEspecificacao() +
                                                                                   "','" + p_inserir.getValor() + 
                                                                                   "'," + p_inserir.getQuantidade() + ")";
            stmt.executeUpdate(sql); //Ação que faz o GO do mysql
                        
            conexao.close(); // Fecha a conexão com banco
            return true; // Retorno = true caso os dados tenham sido inseridos no banco de dados                                       
        }
        // Exceção em caso de erro
        catch(SQLException ex)
        {
            System.out.println("Exception: " + ex); // Mensagem mostrando a exceção que ocorreu
            return false; // Retorno = false caso os dados não tenham sido inseridos no banco de dados
        } 
    }
    public Produto ConsProdId(Produto p_prod) throws ClassNotFoundException{
        Connection conexao = null;
        try{
            conexao = ConectaDB.conectar();
            Statement stmt = conexao.createStatement();
                        //SELECT * FROM produtos where id = 5;
            String sql = "SELECT * FROM produtos where id = " + p_prod.getId();
            ResultSet rs = stmt.executeQuery(sql);
                        
            int n_reg = 0;
            while (rs.next()) {                
                p_prod.setId(Integer.parseInt( rs.getString("id")));
                p_prod.setNome(rs.getString("nome"));
                p_prod.setEspecificacao(rs.getString("especificacao"));
                p_prod.setValor(Double.parseDouble(rs.getString("valor")));
                p_prod.setQuantidade(Double.parseDouble( rs.getString("quantidade")));
                n_reg++;
            }
            conexao.close();
            
            if (n_reg==0){
                return null;
            }else{
                return p_prod;               
            }
        }catch(SQLException ex){
            System.out.println("Exception: " + ex);
            return null;
        } 
    }
    public List ConsProdLista() throws ClassNotFoundException{
        
        List lista = new ArrayList();
        
        Connection conexao = null;
        try{
            conexao = ConectaDB.conectar();
            Statement stmt = conexao.createStatement();
                        //SELECT * FROM produtos
            String sql = "SELECT * FROM produtos";
            ResultSet rs = stmt.executeQuery(sql);
                        
            int n_reg = 0;
            while (rs.next()) {
                Produto produto = new Produto();
                produto.setId(Integer.parseInt( rs.getString("id")));
                produto.setNome(rs.getString("nome"));
                produto.setEspecificacao(rs.getString("especificacao"));
                produto.setValor(Double.parseDouble( rs.getString("valor")));
                produto.setQuantidade(Double.parseDouble( rs.getString("quantidade")));
                lista.add(produto);
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
    public boolean ExProdId(Produto p_prod) throws ClassNotFoundException{
        Connection conexao = null;
        try{
            conexao = ConectaDB.conectar();
            Statement stmt = conexao.createStatement();
                        //DELETE FROM produtos WHERE pkid=6;
            String sql = "DELETE FROM produtos WHERE id=" + p_prod.getId();
            stmt.executeUpdate(sql); //GO - Executar - Insert / Delete / Update
            return true;
        }catch(SQLException ex){
            System.out.println("Erro:" + ex);
            return false;
        }
    }
    public boolean AltProd(Produto p_prod) throws ClassNotFoundException{
        Connection conexao = null;
        try{
            conexao = ConectaDB.conectar();
            Statement stmt = conexao.createStatement();
                        //UPDATE produtos SET nome='roda', especificacao='aro 13', valor=200, quantidade=5 WHERE id=1;       
            String sql = "UPDATE produtos SET nome='" + p_prod.getNome()+ "', " + 
                                                    "especificacao='" + p_prod.getEspecificacao()+ "', " +
                                                    "valor=" + p_prod.getValor()+ ", " +
                                                    "quantidade=" + p_prod.getQuantidade() +  " WHERE id=" + p_prod.getId() + ";";
            stmt.executeUpdate(sql); //GO - Executar - Insert / Delete / Update
            return true;
        }catch(SQLException ex){
            System.out.println("Erro:" + ex);
            return false;
        }
    }
}

