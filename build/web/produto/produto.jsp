<%-- 
    Document   : pesquisa
    Created on : 24 de out. de 2024, 21:03:29
    Author     : Kaue Ono / Leticia Teixeira / Renan Silva
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
        <h1>Produto</h1>
        <%
        //Entrada/Receber
        String nome = request.getParameter("nome");
        String especificacao = request.getParameter("especificacao");
        double valor = Double.parseDouble( request.getParameter("valor") );
        double quantidade = Double.parseDouble( request.getParameter("qtd") );

        // Instância e atrib de valor
        Produto prod = new Produto();
        prod.setNome(nome);
        prod.setEspecificacao(especificacao);
        prod.setValor(valor);
        prod.setQuantidade(quantidade);
                
        //Insert
        ProdutoDAO prodDAO = new ProdutoDAO();
        if(prodDAO.InsProd(prod)){
            out.println("Registro inserido com sucesso!");
        }else{
           out.println("Erro! Registro não inserido!!!");
        }
        %>
    </body>
</html>
