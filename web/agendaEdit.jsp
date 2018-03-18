<%-- 
    Document   : agendaEdit
    Created on : 17-mar-2018, 14:41:20
    Author     : alumno
--%>

<%@page import="agenda.model.Persona"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Page Agenda</title>
    </head>
    
    <%
        Persona persona = (Persona)request.getAttribute("persona");
    %>
    <body>
        <h1>Pagina de edicion de Super Agenda</h1>
        <form name="edit" action="AgendaCreate" method="post">
            <table border="1">
                <tbody>
                    <tr>
                        <td><b>Nombre:</b></td>
                        <td><input type="text" name="nombre" value="<%= persona.getNombre() %>" /></td>
                    </tr><tr>
                        <td><b>Apellidos:</b></td>
                        <td><input type="text" name="apellidos" value="<%= persona.getApellidos() %>"/></td>
                    </tr><tr>
                        <td><b>Correo:</b></td>
                        <td><input type="text" name="correo" value="<%= persona.getCorreo() %>"/></td>
                    </tr><tr>
                        <td><b>Telefono:</b></td>
                        <td><input type="text" name="telefono" value="<%= persona.getTelefono() %>"/></td>
                    </tr><tr>
                        <td colspan="2"><input type="submit" name ="bSave" value ="Save" /></td>
                    </tr>
                </tbody>
            </table>
                    <input type="hidden" name="id" value="<%= persona.getId() %>" />
        </form>
    </body>
</html>
