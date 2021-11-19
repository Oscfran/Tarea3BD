<%-- 
    Document   : verBene
    Created on : 15 nov 2021, 16:18:40
    Author     : oscfr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Info. Beneficiarios</title>
        <link rel="stylesheet" href="style.css">
    </head>
    <body>

         <h1 id="titulo" >Lista Beneficiarios</h1>
        <table class="styled-table">
            <thead>
                <tr>
                    <th>Nombre</th>
                    <th>Cédula</th>
                    <th>Monto total</th>
                    <th>Num Cuenta Mayor ingreso</th>
                    <th>Cantidad cuentas</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Prueba</td>
                    <td>Prueba</td>
                    <td>Prueba</td>
                    <td>Prueba</td>
                    <td>Prueba</td>
                </tr> 
            </tbody>
        </table>
        <%
            out.println("<p>Se consultó la cuenta <a href='index.html'>Salir</a></p>");
        %>
    </body>
</html>

