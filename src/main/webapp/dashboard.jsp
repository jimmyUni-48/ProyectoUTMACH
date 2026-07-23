<%-- 
    Document   : dashboard
    Created on : 22 jul 2026, 8:40:29 p. m.
    Author     : karla
--%>

<%@page contentType="text/html"
pageEncoding="UTF-8"%>

<%@page import=
"com.utmach.modelo.Usuario"%>

<%Usuario usuario =(Usuario)session.getAttribute("usuario");

if(usuario == null){

    response.sendRedirect(
    "login.jsp");

    return;
}
%>

<!DOCTYPE html>

<html>

<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<title>Dashboard</title>

</head>

<body>

<div class="container mt-5">

    <h1 class="text-primary">
        Bienvenido <%= usuario.getNombre() %>
    </h1>

    <p>
        Carrera:
        <strong>
            <%= usuario.getCarrera() %>
        </strong>
    </p>

    <p>
        Semestre:
        <strong>
            <%= usuario.getSemestre() %>
        </strong>
    </p>

    <hr>

    <a href="crearPublicacion.jsp"
       class="btn btn-success">

       Crear Publicación

    </a>

    <a href="publicaciones.jsp"
       class="btn btn-primary">

       Ver Publicaciones

    </a>

    <a href="LogoutServlet"
       class="btn btn-danger">

       Cerrar Sesión

    </a>

</div>

</body>

</html>
