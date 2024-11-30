package util;

import java.sql.*;

/*
@author alunocmc
 */
public class ConectaDB {
    //Atrib.
    // N/A.
    
    //Métodos
    public static Connection conectar() throws ClassNotFoundException{
        Connection conexao =null;
        try{
            Class.forName("com.mysql.jdbc.Driver");                 //database:loja  user   password
            conexao = DriverManager.getConnection("jdbc:mysql://localhost:3306/borracharia","root","");
            return conexao;
        }catch( SQLException ex){
            System.out.println("error: " + ex);
        }
        return conexao;
    }
}
