<%-- 
    Document   : produto
    Created on : 21 de nov. de 2024, 21:03:22
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
        <h3>Produto - Consulta (Identificação)</h3>
        <%
        //Entrada/Receber
        int id = Integer.parseInt( request.getParameter("id") );

        // Instância e atrib de valor
        Produto prod = new Produto();
        prod.setId(id);
       
        //Insert
        ProdutoDAO prodDAO = new ProdutoDAO();
        if(prodDAO.ConsProdId(prod) != null){
            out.println("<b>Identificação: </b>" + prod.getId() + "<br>");
            out.println("<b>Nome: </b>" + prod.getNome()+ "<br>");
            out.println("<b>Especificação: </b>" + prod.getEspecificacao()+ "<br>");  
            out.println("<b>Valor: </b>" + prod.getValor()+ "<br>");            
            out.println("<b>Quantidade: </b>" + prod.getQuantidade()+ "<br>");            
        }else{
           out.println("Registro não encontrado!!!");
        }
        %>
    </body>
</html>
