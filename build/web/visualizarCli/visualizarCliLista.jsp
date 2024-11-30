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
        <h3>Pesquisa - Consulta Geral (Lista / Linhas)</h3>
        <%              
        //Consulta
        ClienteDAO cliDAO = new ClienteDAO();
         
        List<Cliente> lista = new ArrayList<>();
        lista = cliDAO.ConsCliLista();

        int n_reg = 0 ;
        out.println("<br> <b>Borracharia - Registros</b>");
        
        out.println("<br><br> # | Id. | CPF | Nome | Automovel |  FIdelidade <br>" );
        out.println("_____________________________________ <br>" );
        for( int i = 0; i <= lista.size()-1; i++){            
            out.println(i +" - "+ lista.get(i).getId() +" - "+ lista.get(i).getCpf() +" - "+ lista.get(i).getNome() +" - "+ lista.get(i).getAutomovel() +" - "+ lista.get(i).getFidelidade() +"<br>");                         
            n_reg++;                           
        }
       out.println("<br><br> <b>Registros: </b>" + n_reg + "<br>");      
        %>

    </body>
</html>