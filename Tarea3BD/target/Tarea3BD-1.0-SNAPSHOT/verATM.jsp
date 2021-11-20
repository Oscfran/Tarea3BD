<%-- 
    Document   : verATM
    Created on : 15 nov 2021, 16:18:27
    Author     : oscfr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Info. ATM</title>
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
         <h1 id="titulo" >Lista ATM</h1>
        <table class="styled-table">
            <thead>
                <tr>
                    <th>Cantidad promedio por mes</th>
                    <th>Mes</th>
                    <th>Año</th>
                    <th>Número de la cuenta</th>
                </tr>
            </thead>
            <tbody>
                <%
                    String descripcion = request.getParameter("numero");
                %>
                <tr>
                    <td>Prueba</td>
                    <td>Prueba</td>
                    <td>Prueba</td>
                    <td>Prueba</td>
                </tr>
            </tbody>
        </table>
        <%
            out.println("<p>Se consultó la lista ATM <a href='index.html'>Salir</a></p>");
        %>
    </body>
</html>

