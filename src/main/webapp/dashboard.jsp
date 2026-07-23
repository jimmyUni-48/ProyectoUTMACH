<%-- 
    Document   : dashboard
    Created on : 22 jul 2026, 8:40:29 p. m.
    Author     : karla
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.utmach.modelo.Usuario"%>

<%
Usuario usuario = (Usuario)session.getAttribute("usuario");

if(usuario == null){
    response.sendRedirect("login.jsp");
    return;
}
%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Panel del Estudiante</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
rel="stylesheet">

<style>

body{
background:#f4f6f9;
}

.card-opcion{
transition:0.3s;
border:none;
border-radius:15px;
}

.card-opcion:hover{
transform:translateY(-5px);
}

</style>

</head>

<body>

<nav class="navbar navbar-dark bg-primary">
<div class="container-fluid">

<span class="navbar-brand">
🎓 Conecta UTMACH
</span>

<a href="LogoutServlet"
class="btn btn-danger">
Cerrar Sesión
</a>

</div>
</nav>

<div class="container mt-5">

<div class="text-center mb-4">

<h2>
Bienvenido,
<%= usuario.getNombre() %>
</h2>

<p>
<%= usuario.getCarrera() %> -
Semestre <%= usuario.getSemestre() %>
</p>

</div>

<div class="row">

<div class="col-md-6 mb-4">

<div class="card card-opcion shadow">

<div class="card-body text-center">

<h3>📝</h3>

<h4>Crear Publicación</h4>

<p>
Crear avisos académicos para la comunidad.
</p>

<a href="crearPublicacion.jsp"
class="btn btn-success">

Ingresar

</a>

</div>

</div>

</div>

<div class="col-md-6 mb-4">

<div class="card card-opcion shadow">

<div class="card-body text-center">

<h3>📢</h3>

<h4>Ver Publicaciones</h4>

<p>
Consultar publicaciones existentes.
</p>

<a href="publicaciones.jsp"
class="btn btn-primary">

Ingresar

</a>

</div>

</div>

</div>

</div>

</div>

</body>

</html>