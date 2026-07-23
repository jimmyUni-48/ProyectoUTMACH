<%-- 
    Document   : loginAdmin
    Created on : 22 jul 2026, 11:52:12 p. m.
    Author     : karla
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Login Administrador</title>

</head>

<body>

<h1>Ingreso Administrador</h1>

<form action="LoginAdminServlet"
      method="post">

    <label>Correo</label>

    <input type="email"
           name="correo">

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
