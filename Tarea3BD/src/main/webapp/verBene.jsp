<%-- 
    Document   : verBene
    Created on : 15 nov 2021, 16:18:40
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
                <%
                    String select = "EXEC SP_GananciaBeneficiarios ?";
                    PreparedStatement sql = Conexion.getConexion().prepareStatement(select);
                    sql.setInt(1, 0);

                    ResultSet resultado = sql.executeQuery();

                    while(resultado.next()){
                        out.println("<tr>"+
                            "<td>"+resultado.getString("Nombre")+"</td>"+
                            "<td>"+resultado.getString("Cedula")+"</td>"+
                            "<td>"+resultado.getInt("Dinero")+"</td>"+
                            "<td>"+resultado.getString("NumCuenta")+"</td>"+
                            "<td>"+resultado.getInt("CantCuentas")+"</td>"+
                            "</tr>");
                    }

                %>
            </tbody>
        </table>
        <%
            out.println("<p>Se consultó la lista beneficiarios <a href='index.html'>Salir</a></p>");
        %>
    </body>
</html>

