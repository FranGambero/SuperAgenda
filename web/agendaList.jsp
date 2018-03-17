<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- 
    Document   : agendaList
    Created on : 15-mar-2018, 14:10:24
    Author     : alumno
--%>

<%@page import="agenda.model.Persona"%>
<%@page import="java.util.Collection"%>
<%@page import="agenda.model.AgendaFactory"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Super Agenda</title>
    </head>
    
    <%
        AgendaFactory agendaDB = (AgendaFactory)session.getAttribute("agendaDB");
        Collection<Persona> agenda = agendaDB.getAgenda();
    %>
    <body>
        <h1>Super Agenda</h1>
        <table border ="1">
            <tbody>
                <tr>
                    <td><b>Nombre</b></td>
                    <td><b>Apellidos</b></td>
                    <td><b>Correo</b></td>
                    <td><b>Telefono</b></td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <% 
                    for(Persona p: agenda){
                %>
                <tr>
                    <td><%= p.getNombre()%></td>
                    <td><%= p.getApellidos() %></td>
                    <td><%= p.getCorreo() %></td>
                    <td><%= p.getTelefono() %></td>
                    <td><a href="AgendaEdit?id=<%= p.getId()%>">Edit</a></td>
                    <td><a href="AgendaDelete?id=<%= p.getId()%>">Delete</a></td>
                </tr>
                <%
                    }
                   %>
           </tbody>
        </table>
           <br>
           <a href="agendaAdd.jsp"> Add a new person</a>
           <br><br>
           Página web realizado por Francisco Gambero Salinas en Marzo 2018.
           
    </body>
</html>
