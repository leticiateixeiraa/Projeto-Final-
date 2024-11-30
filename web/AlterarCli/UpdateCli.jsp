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
        <title>Alterar Cliente</title>
    </head>
    <body>
        <h1>Borracharia</h1>
        <%
        //Entrada/Receber
        int id = Integer.parseInt( request.getParameter("id") );
        String nome = request.getParameter("nome");
        String automovel = request.getParameter("automovel");
        double fidelidade = Double.parseDouble( request.getParameter("fidelidade") );

        // Instância e atrib de valor
        Cliente cli = new Cliente();
        cli.setId(id);
        cli.setNome(nome);
        cli.setAutomovel(automovel);
        cli.setFidelidade(fidelidade);
        
        //Insert
        ClienteDAO cliDAO = new ClienteDAO();
        if(cliDAO.AltCli(cli)){
            out.println("Registro Alterado com sucesso!");
        }else{
           out.println("Erro! Registro não Alterado!!!");
        }
        %>
    </body>
</html>
