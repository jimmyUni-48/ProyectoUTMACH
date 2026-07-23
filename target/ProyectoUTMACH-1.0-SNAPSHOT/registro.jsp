<%-- 
    Document   : registro
    Created on : 22 jul 2026, 8:29:20 p. m.
    Author     : karla
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>

<head>

    <meta charset="UTF-8">

    <title>Registro de Usuario</title>

</head>

<body>

    <h1>Registro de Usuario</h1>

    <form action="UsuarioServlet"
          method="post">

        <label>Nombre:</label>

        <input type="text"
               name="nombre" required>

        <br><br>

        <label>Carrera:</label>

        <input type="text"
               name="carrera" required>

        <br><br>

        <label>Semestre:</label>

        <input type="number"
               name="semestre"required>

        <br><br>

        <label>Correo:</label>

        <input type="email"
               name="correo" required>
        
        <br><br>
        
        <label>Unicamente con el dominio "@utmachala.edu.ec"</label>
        
        <br><br>
        
        <label>Contraseña</label>

        <input type="password" name="clave" required>
        
        <br><br>

        <button type="submit">

            Registrar

        </button>
        
        <br><br>


        <button type="button"
                onclick="window.location.href='index.jsp'">
            Volver al Inicio
        </button>

    </form>

</body>

</html>
