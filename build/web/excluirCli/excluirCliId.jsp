<%-- 
    Document   : pesquisa
    Created on : 24 de out. de 2024, 21:03:29
    Author     : Kaue Ono / Leticia Teixeira / Renan Silva
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Cliente"%>
<%@page import="model.dao.ClienteDAO"%>

<%@page import="java.util.*"%>
<%@page import="java.text.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h3>Borracharia - Deletar Cliente</h3>
        <%
        //Entrada/Receber
        int id = Integer.parseInt( request.getParameter("id") );

        // Instância e atrib de valor
        Cliente cli = new Cliente();
        cli.setId(id);
       
        //Insert
        ClienteDAO cliDAO = new ClienteDAO();
        if(cliDAO.ExCliId(cli) ){
            out.println("Registro excluido!");        
        }else{
           out.println("Registro não excluído!!!");
        }
        %>
    </body>
</html>
