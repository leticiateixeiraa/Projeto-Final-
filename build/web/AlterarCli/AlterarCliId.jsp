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
        <h3>Borracharia - Alterar Registro</h3>
        <%
        //Entrada/Receber
        int id = Integer.parseInt( request.getParameter("id") );

        // Instância e atrib de valor
        Cliente cli = new Cliente();
        cli.setId(id);
       
        //Insert
        ClienteDAO cliDAO = new ClienteDAO();
        if(cliDAO.ConsCli(cli) != null){
            //out.println("Registro encontrado!")
        %>  
            
        <form method="post" action="UpdateCli.jsp">
            ID: <input type="text" name="id" value="<%=cli.getId()%>" readonly="true"> <p>            
            Nome: <input type="text" name="nome" value="<%=cli.getNome()%>" minlength="3" maxlength="10"> <p>            
            Automóvel: <input type="text" name="automovel" value="<%=cli.getAutomovel()%>" minlength="3" maxlength="15"> <p>                     
            Fidelidade: <input type="text" name="fidelidade" value="<%=cli.getFidelidade()%>"> <p>                
            <input type="submit" value="Alterar">
        </form>        
        <%
        }else{
           out.println("Registro não encontrado!!!");
        }
        %>
    </body>
</html>
