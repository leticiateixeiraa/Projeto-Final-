<%-- 
    Document   : inserirCli
    Created on : 21 de nov. de 2024, 20:56:38
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
        <h1>Inserir</h1>
        <%
        //Entrada/Receber
        int cpf = Integer.parseInt( request.getParameter("cpf") );
        String nome = request.getParameter("nome");
        String automovel = request.getParameter("automovel");
        Double fidelidade = Double.parseDouble( request.getParameter("fidelidade") );

        // Instância e atrib de valor
        Cliente cli = new Cliente();
        
        cli.setCpf(cpf);
        cli.setNome(nome);
        cli.setAutomovel(automovel);
        cli.setFidelidade(fidelidade);
        
        //Insert
        ClienteDAO cliDAO = new ClienteDAO();
        if(cliDAO.InsCli(cli)){
            out.println("Registro inserido com sucesso!");
        }else{
           out.println("Erro! Registro não inserido!!!");
        }
        %>
    </body>
</html>
