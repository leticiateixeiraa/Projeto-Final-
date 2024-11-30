<%-- 
    Document   : visualizarCli
    Created on : 21 de nov. de 2024, 20:59:40
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
        <h1>Visualizar</h1>
        <%
        //Entrada/Receber
        int id = Integer.parseInt( request.getParameter("id") );

        // Instância e atrib de valor
        Cliente cli = new Cliente();
        cli.setId(id);
       
        //Insert
        ClienteDAO cliDAO = new ClienteDAO();
        if(cliDAO.ConsCli(cli) != null){
            out.println("<b>Registro encontrado!</b><br><br>");
            out.println("<b>Identificação: </b>" + cli.getId() + "<br>");
            out.println("<b>CPF: </b>" + cli.getCpf() + "<br>");
            out.println("<b>Nome: </b>" + cli.getNome()+ "<br>");
            out.println("<b>Automovel: </b>" + cli.getAutomovel()+ "<br>");  
            out.println("<b>Fidelidade: </b>" + cli.getFidelidade()+ "<br>");          
        }else{
           out.println("Registro não encontrado!!!");
        }
        %>
    </body>
</html>
