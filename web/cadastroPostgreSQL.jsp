<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tela de Cadastro</title>
    </head>
    <body bgcolor="f0f0f0">
        
        <form action="confirmarDadosPostgreSQL.jsp" method="POST">
        
        <table border="0" align="center">
            <thead>
                <tr>
                    <td colspan="2" align="center"><h2>Inclusão de Cliente</h2></td>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>ID: </td>
                    <td><input type="number" name="id" value="" /></td>
                </tr>

                <tr>
                    <td>Nome: </td>
                    <td><input type="text" name="nome" value="" /></td>
                </tr>

                <tr>
                    <td>CPF: </td>
                    <td><input type="text" name="cpf" value="" /></td>
                </tr>

                <tr>
                    <td>RG: </td>
                    <td><input type="text" name="rg" value="" /></td>
                </tr>

                <tr>
                    <td>Nascimento: </td>
                    <td><input type="date" name="nascimento" value="" /></td>
                </tr>

                <tr>
                    <td>Telefone: </td>
                    <td><input type="text" name="telefone" value="" /></td>
                </tr>

                <tr>
                    <td>CEP: </td>
                    <td><input type="text" name="cep" value="" /></td>
                </tr>

                <tr>
                    <td>Endereço: </td>
                    <td><input type="text" name="endereco" value="" /></td>
                </tr>

                <tr>
                    <td>Numero: </td>
                    <td><input type="number" name="numero" value="" /></td>
                </tr>

                <tr>
                    <td>Complemento: </td>
                    <td><input type="text" name="complemento" value="" /></td>
                </tr>

                <tr>
                    <td>Bairro: </td>
                    <td><input type="text" name="bairro" value="" /></td>
                </tr>

                <tr>
                    <td>Cidade: </td>
                    <td><input type="text" name="cidade" value="" /></td>
                </tr>

                <tr>
                    <td>Estado: </td>
                    <td><input type="text" name="estado" value="" /></td>
                </tr>

                <tr>
                    <td>Pais: </td>
                    <td><input type="text" name="pais" value="" /></td>
                </tr>
                
                <td><input type="reset" value="Limpar" /></td>
                <td><input type="submit" value="Enviar" /></td>
                
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
