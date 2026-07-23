<%-- 
    Document   : dashboarAdmin
    Created on : 22 jul 2026, 9:35:27?p. m.
    Author     : karla
--%>

<%@page import="com.utmach.modelo.Usuario"%>

<%
Usuario usuarioSesion =
(Usuario) session.getAttribute("usuario");

if(usuarioSesion == null){
    response.sendRedirect("login.jsp");
    return;
}

if(!usuarioSesion.getRol().equals("ADMIN")){
    response.sendRedirect("dashboard.jsp");
    return;
}
%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Panel Administrativo</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
rel="stylesheet">

<style>

body{
    background:#f4f6f9;
}

.card-opcion{
    border:none;
    border-radius:20px;
    transition:0.3s;
}

.card-opcion:hover{
    transform:translateY(-5px);
}

</style>

</head>

<body>

<nav class="navbar navbar-dark bg-dark">

<div class="container-fluid">

<span class="navbar-brand">

?? Panel Administrativo - Conecta UTMACH

</span>

<a href="LogoutServlet"
   class="btn btn-danger">

Cerrar Sesión

</a>

</div>

</nav>

<div class="container mt-5">

<div class="text-center mb-5">

<h1>

Bienvenido Administrador

</h1>

<p class="text-muted">

Seleccione una opción para continuar

</p>

</div>

<div class="row justify-content-center">

<div class="col-md-5 mb-4">

<div class="card card-opcion shadow">

<div class="card-body text-center p-5">

<h1>

?

</h1>

<h3>

Gestión de Usuarios

</h3>

<p>

Activar, suspender y administrar cuentas de estudiantes.

</p>

<a href="usuarios.jsp"
   class="btn btn-primary">

Ingresar

</a>

</div>

</div>

</div>

<div class="col-md-5 mb-4">

<div class="card card-opcion shadow">

<div class="card-body text-center p-5">

<h1>

?

</h1>

<h3>

Estadísticas

</h3>

<p>

Consultar estadísticas generales del sistema.

</p>

<a href="estadisticas.jsp"
   class="btn btn-success">

Ingresar

</a>

</div>

</div>

</div>

</div>

</div>

</body>

</html>