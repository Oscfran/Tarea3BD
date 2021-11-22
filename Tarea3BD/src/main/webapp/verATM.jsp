<%-- 
    Document   : verATM
    Created on : 15 nov 2021, 16:18:27
    Author     : oscfr
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="conexion.Conexion"%>
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
                    int numero = Integer.parseInt(request.getParameter("numero"));
                    
                    String select = "EXEC SP_MultaATM ?, ?";
                    PreparedStatement sql = Conexion.getConexion().prepareStatement(select);
                    sql.setInt(1, numero);
                    sql.setInt(2, 0);

                    ResultSet resultado = sql.executeQuery();

                    while(resultado.next()){
                        out.println("<tr>"+
                            "<td>"+resultado.getInt("cantPromedioOp")+"</td>"+
                            "<td>"+resultado.getInt("Mes")+"</td>"+
                            "<td>"+resultado.getInt("Año")+"</td>"+
                            "<td>"+resultado.getString("NumCuenta")+"</td>"+
                            "</tr>");
                    }
                %>
            </tbody>
        </table>
        <%
            out.println("<p>Se consultó la lista ATM <a href='index.html'>Salir</a></p>");
        %>
    </body>
</html>

