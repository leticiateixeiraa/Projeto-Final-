<%-- 
    Document   : produto
    Created on : 28 de nov. de 2024, 19:23:29
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
        <title>Alterar</title>
    </head>
    <body>
        <h1>Produto</h1>
        <%
        //Entrada/Receber
        int id = Integer.parseInt( request.getParameter("id") );
        String nome = request.getParameter("nome");
        String especificacao = request.getParameter("especificacao");
        double valor = Double.parseDouble( request.getParameter("valor") );
        double quantidade = Double.parseDouble( request.getParameter("quantidade") );
        
        // Instância e atrib de valor
        Produto prod = new Produto();
        prod.setId(id);
        prod.setNome(nome);
        prod.setEspecificacao(especificacao);
        prod.setValor(valor);
        prod.setQuantidade(quantidade);
 
        
        //Insert
        ProdutoDAO prodDAO = new ProdutoDAO();
        if(prodDAO.AltProd(prod)){
            out.println("Registro Alterado com sucesso!");
        }else{
           out.println("Erro! Registro não Alterado!!!");
        }
        %>
    </body>
</html>
