<%-- 
    Document   : verCO
    Created on : 15 nov 2021, 16:18:05
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
        <title>Info. Cuentas Objetivo</title>
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
         <h1 id="titulo" >Lista Cuentas Objetivo</h1>
        <table class="styled-table">
            <thead>
                <tr>
                    <th>Código de cuenta</th>
                    <th>ID CO</th>
                    <th>Descripción</th>
                    <th>Retiros Realizados</th>
                    <th>Retiros Hipotéticos</th>
                    <th>Débito Real</th>
                    <th>Débito Hipotético</th>
                </tr>

            </thead>
            <tbody>
                <%
                    String select = "EXEC SP_COIncompletas ?";
                    PreparedStatement sql = Conexion.getConexion().prepareStatement(select);
                    sql.setInt(1, 0);

                    ResultSet resultado = sql.executeQuery();

                    while(resultado.next()){
                        out.println("<tr>"+
                            "<td>"+resultado.getString("NumCuenta")+"</td>"+
                            "<td>"+resultado.getInt("IdCO")+"</td>"+
                            "<td>"+resultado.getString("Descripcion")+"</td>"+
                            "<td>"+resultado.getInt("CantRetirosRealizados")+"</td>"+
                            "<td>"+resultado.getInt("CantRetirosHipoteticos")+"</td>"+
                            "<td>"+resultado.getInt("MontoDebitadoReal")+"</td>"+
                            "<td>"+resultado.getInt("MontoDebitadoHipotetico")+"</td>"+
                            "</tr>");
                    }

                %>
            </tbody>
        </table>
        <%
            out.println("<p>Se consultó la cuenta <a href='index.html'>Salir</a></p>");
        %>
    </body>
</html>

