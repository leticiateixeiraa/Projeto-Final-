<%-- 
    Document   : pesquisa
    Created on : 27 de nov. de 2024, 19:53:11
    Author     :  Kaue Ono / Leticia Teixeira / Renan Silva
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Produto"%>
<%@page import="model.dao.ProdutoDAO"%>

<%@page import="java.util.*"%>
<%@page import="java.text.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h3>Produto - Excluir (Identificação)</h3>
        <%
        //Entrada/Receber
        int id = Integer.parseInt( request.getParameter("id") );

        // Instância e atrib de valor
        Produto prod = new Produto();
        prod.setId(id);
       
        //Insert
        ProdutoDAO prodDAO = new ProdutoDAO();
        if(prodDAO.ExProdId(prod) ){
            out.println("Registro excluido!");        
        }else{
           out.println("Registro não excluído!!!");
        }
        %>
    </body>
</html>
