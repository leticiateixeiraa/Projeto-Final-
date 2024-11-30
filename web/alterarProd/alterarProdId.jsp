<%-- 
    Document   : produto
    Created on : 21 de nov. de 2024, 21:08:32
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
        <title>JSP Page</title>
    </head>
    <body>
        <h3>Produto - Alteração (Identificação)</h3>
        <%
        //Entrada/Receber
        int id = Integer.parseInt( request.getParameter("id") );

        // Instância e atrib de valor
        Produto prod = new Produto();
        prod.setId(id);
       
        //Insert
        ProdutoDAO prodDAO = new ProdutoDAO();
        if(prodDAO.ConsProdId(prod) != null){
            //out.println("Registro encontrado!")
        %>  
            
        <form method="post" action="updateProd.jsp">
            Identificador: <input type="text" name="id" value="<%=prod.getId()%>" readonly="true"> <p>            
            Nome: <input type="text" name="nome" value="<%=prod.getNome()%>" minlength="3" maxlength="15"> <p>            
            Especificação: <input type="text" name="especificacao" value="<%=prod.getEspecificacao()%>" minlength="3" maxlength="15"> <p>                     
            Valor:<input type="double" name="valor" value="<%=prod.getValor()%>"><p>                    
            Quantidade<input type="double" name="quantidade" value="<%=prod.getQuantidade()%>"><p>                                 
            <input type="submit" value="Salvar!">
        </form>        
        <%       
            out.println("<br><img src='../imagem/escala.jpg' alt=''/>");
        }else{
           out.println("Registro não encontrado!!!");
        }
        %>
    </body>
</html>