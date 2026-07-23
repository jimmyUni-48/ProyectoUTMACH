<%-- 
    Document   : login
    Created on : 22 jul 2026, 8:36:18 p. m.
    Author     : karla
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
String error =
request.getParameter("error");

if("suspendido".equals(error)){
%>

<div class="alert alert-danger">

Su cuenta ha sido suspendida.
Contacte al administrador.

</div>

<%
}
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Iniciar Sesión</title>
</head>
<body>

<h1>Iniciar Sesión</h1>

<form action="LoginServlet" method="post">

    <label>Correo:</label>

    <input type="email"
           name="correo"
           required>

    <br><br>
    
    <label>Contraseña</label>

    <input type="password"
           name="clave">
    
    <br><br>
    
    <button type="submit">
        Ingresar
    </button>
    
    <br><br>

    <button type="button"
            onclick="window.location.href='index.jsp'">
        Volver al Inicio
    </button>

</form>

</body>
</html>
