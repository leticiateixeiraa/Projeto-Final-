<%-- 
    Document   : produto
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
        <h3>Pesquisa - Consulta Geral (Lista / Linhas)</h3>
        <%              
        //Consulta
        ProdutoDAO prodDAO = new ProdutoDAO();
         
        List<Produto> lista = new ArrayList<>();
        lista = prodDAO.ConsProdLista();

        int n_reg = 0 ;
        out.println("<br> <b>Produtos - Registros</b>");
            
        out.println("<br><br> # | Id. | Nome | Especificação | Valor | Quantidade <br>" );
        out.println("_____________________________________ <br>" );
        for( int i = 0; i <= lista.size()-1; i++){            
            out.println(i +" - "+ lista.get(i).getId() +" - "+ lista.get(i).getNome() +" - "+ lista.get(i).getEspecificacao() +" - "+ lista.get(i).getValor() +" - "+ lista.get(i).getQuantidade() +"<br>");                         
            n_reg++;                           
        }
       out.println("<br><br> <b>Registros: </b>" + n_reg + "<br>");       
        %>

    </body>
</html>