<%-- 
    Document   : gravarDadosPostgreSQL
    Created on : 04-Sep-2015, 15:37:07
    Author     : leandro
--%>

<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%-- Declaração de variáveis globais --%>
<%!
    String id, nome, cpf, rg, nascimento, email, telefone, cep, endereco, numero, complemento, bairro, cidade, estado, pais;
%>

<%-- Leitura das variáveis recebidas por POST 
e armazenamento nas variáveis globais --%>
<%
    id          = request.getParameter("id");
    nome        = request.getParameter("nome");
    cpf         = request.getParameter("cpf");
    rg          = request.getParameter("rg");
    nascimento  = request.getParameter("nascimento");
    email       = request.getParameter("email");
    telefone    = request.getParameter("telefone");
    cep         = request.getParameter("cep");
    endereco    = request.getParameter("endereco");
    numero      = request.getParameter("numero");
    complemento = request.getParameter("complemento");
    bairro      = request.getParameter("bairro");
    cidade      = request.getParameter("cidade");
    estado      = request.getParameter("estado");
    pais        = request.getParameter("pais");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gravação de Dados</title>
    </head>
    <body bgcolor="f0f0f0">
        
       <sql:setDataSource var="minhaBase" driver="org.postgresql.Driver" url="jdbc:postgresql://localhost:5432/livraria_ifsp" user="postgres" password="postgres"/>
        <sql:update dataSource="${minhaBase}" var="resultado">
            INSERT INTO cliente VALUES (default             ,
                                        '<%= nome %>'       ,
                                        '<%= cpf %>'        ,
                                        '<%= rg %>'         ,
                                        '<%= nascimento %>' ,
                                        '<%= email %>'      ,
                                        '<%= telefone %>'   ,
                                        '<%= cep %>'        ,
                                        '<%= endereco %>'   ,
                                        '<%= numero %>'     ,
                                        '<%= complemento %>',
                                        '<%= bairro %>'     ,
                                        '<%= cidade %>'     ,
                                        '<%= estado %>'     ,
                                        '<%= pais %>' );
        </sql:update>
        
        <p align="center">Dados gravados com sucesso na tabela cliente!</p>
        <br>
        <p align="center"><a href="index.html">Página Principal</a></p>
    </body>
</html>

