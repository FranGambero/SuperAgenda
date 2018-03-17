<%-- 
    Document   : agendaAdd
    Created on : 15-mar-2018, 14:45:43
    Author     : alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Añadir persona</title>
    </head>
    <body>
        <h1>Añadir persona</h1>
        <form name="edit" action="AgendaCreate" method="post">
            <table border="1">
                <tbody>
                    <tr>
                        <td><b>Nombre:</b></td>
                        <td><input type="text" name="nombre" value=""/></td>
                    </tr><tr>
                        <td><b>Apellidos:</b></td>
                        <td><input type="text" name="apellidos" value=""/></td>
                    </tr><tr>
                        <td><b>Correo:</b></td>
                        <td><input type="text" name="correo" value=""/></td>
                    </tr><tr>
                        <td><b>Telefono:</b></td>
                        <td><input type="text" name="telefono" value=""/></td>
                    </tr>
                    <td colspan="2"><input type="submit" name="btnSave" value="Save"/></td>
                </tbody>
            </table>
        </form>
    </body>
</html>
