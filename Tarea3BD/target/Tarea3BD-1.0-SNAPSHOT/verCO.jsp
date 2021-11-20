<%-- 
    Document   : verCO
    Created on : 15 nov 2021, 16:18:05
    Author     : oscfr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Info. Cuentas Objetivo</title>
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
         <h1 id="titulo" >Lista Cuentas Objetivo</h1>
        <table class="styled-table">
            <thead>
                <tr>
                    <th>Codigpo de cuenta</th>
                    <th>ID CO</th>
                    <th>Descripción</th>
                    <th>Retiros Realizados</th>
                    <th>Retiros Hipotpéticos</th>
                    <th>Debito Real</th>
                    <th>Debito Hipotetico</th>
                </tr>

            </thead>
            <tbody>
                <tr>
                    <td>Prueba</td>
                    <td>Prueba</td>
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

