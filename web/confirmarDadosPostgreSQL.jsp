<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Confirmação de Dados</title>
    </head>
    <body bgcolor="f0f0f0">
        <form action="gravarDadosPostgreSQL.jsp" method="POST">
        <table border="0" align="center">
            <thead>
                <tr>
                    <td colspan="2" align="center"><h2>Confirmação de Dados</h2></td>
                </tr>
                
            </thead>
            <tbody>
                <tr>
                    <td>ID: </td>
                    <td><input type="number" name="id" value="<%= request.getParameter("id") %>" readonly/></td>
                </tr>

                <tr>
                    <td>Nome: </td>
                    <td><input type="text" name="nome" value="<%= request.getParameter("nome") %>" readonly/></td>
                </tr>

                <tr>
                    <td>CPF: </td>
                    <td><input type="text" name="cpf" value="<%= request.getParameter("cpf") %>" readonly/></td>
                </tr>

                <tr>
                    <td>RG: </td>
                    <td><input type="text" name="rg" value="<%= request.getParameter("rg") %>" readonly/></td>
                </tr>

                <tr>
                    <td>Nascimento: </td>
                    <td><input type="date" name="nascimento" value="<%= request.getParameter("nascimento") %>" readonly/></td>
                </tr>

                <tr>
                    <td>Telefone: </td>
                    <td><input type="text" name="telefone" value="<%= request.getParameter("telefone") %>" readonly/></td>
                </tr>

                <tr>
                    <td>CEP: </td>
                    <td><input type="text" name="cep" value="<%= request.getParameter("cep") %>" readonly/></td>
                </tr>

                <tr>
                    <td>Endereço: </td>
                    <td><input type="text" name="endereco" value="<%= request.getParameter("endereco") %>" readonly/></td>
                </tr>

                <tr>
                    <td>Numero: </td>
                    <td><input type="number" name="numero" value="<%= request.getParameter("numero") %>" readonly/></td>
                </tr>

                <tr>
                    <td>Complemento: </td>
                    <td><input type="text" name="complemento" value="<%= request.getParameter("complemento") %>" readonly/></td>
                </tr>

                <tr>
                    <td>Bairro: </td>
                    <td><input type="text" name="bairro" value="<%= request.getParameter("bairro") %>" readonly/></td>
                </tr>

                <tr>
                    <td>Cidade: </td>
                    <td><input type="text" name="cidade" value="<%= request.getParameter("cidade") %>" readonly/></td>
                </tr>

                <tr>
                    <td>Estado: </td>
                    <td><input type="text" name="estado" value="<%= request.getParameter("estado") %>" readonly/></td>
                </tr>

                <tr>
                    <td>Pais: </td>
                    <td><input type="text" name="pais" value="<%= request.getParameter("pais") %>" readonly/></td>
                </tr>
                <tr>
                    <td><input type="reset" value="Reset" /></td>
                    <td><input type="submit" value="Gravar" /></td>
                </tr>
                <tr>
                    <td colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td><a href="index.html">Página Principal</a></td>
                </tr>
            </tbody>
        </table>
        </form>
    </body>
</html>
