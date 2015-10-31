<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Clientes</title>
    </head>
    <body bgcolor="f0f0f0">
        <h3>Listagem de Clientes</h3>
        <br>
        <sql:setDataSource var="minhaBase" driver="org.postgresql.Driver" url="jdbc:postgresql://localhost:5432/livraria_ifsp" user="postgres" password="postgres"/>
        <sql:query dataSource="${minhaBase}" var="result">
            select id, nome, cpf, rg, nascimento, email, telefone, cep, endereco, numero, complemento, bairro, cidade, estado, pais from cliente;;
        </sql:query>
 
        <table border="1" width="100%">
            <tr>
                <th>Id</th>
                <th>Nome</th>
                <th>CPF</th>
                <th>RG</th>
                <th>Nascimento</th>
                <th>Email</th>
                <th>Telefone</th>
                <th>Cep</th>
                <th>Endereco</th>
                <th>Numero</th>
                <th>Complemento</th>
                <th>Bairro</th>
                <th>Cidade</th>
                <th>Estado</th>
                <th>Pais</th>
            </tr>
        
            <c:forEach var="row" items="${result.rows}">
                <tr>
                    <td><c:out value="${row.id}"/></td>
                    <td><c:out value="${row.nome}"/></td>
                    <td><c:out value="${row.cpf}"/></td>
                    <td><c:out value="${row.rg}"/></td>
                    <td><c:out value="${row.nascimento}"/></td>
                    <td><c:out value="${row.email}"/></td>
                    <td><c:out value="${row.telefone}"/></td>
                    <td><c:out value="${row.cep}"/></td>
                    <td><c:out value="${row.endereco}"/></td>
                    <td><c:out value="${row.numero}"/></td>
                    <td><c:out value="${row.complemento}"/></td>
                    <td><c:out value="${row.bairro}"/></td>
                    <td><c:out value="${row.cidade}"/></td>
                    <td><c:out value="${row.estado}"/></td>
                    <td><c:out value="${row.pais}"/></td>
                </tr>
            </c:forEach>
            
        </table>
        <br>
        <form action="removerLinhaPostgreSQL.jsp" method="POST">
        Remover Linha: <input type="text" name="removerLinha" value="" />
        <input type="submit" value="Remover" />
         </form>
        <br>
       <a href="index.html">Página Principal</a>
    </body>
</html>
