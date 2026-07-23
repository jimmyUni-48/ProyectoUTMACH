<%-- 
    Document   : dashboarAdmin
    Created on : 22 jul 2026, 9:35:27?p. m.
    Author     : karla
--%>

<%@page import="com.utmach.dao.UsuarioDAO"%>
<%@page import="com.utmach.dao.PublicacionDAO"%>
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

UsuarioDAO usuarioDAO =
        new UsuarioDAO();

PublicacionDAO publicacionDAO =
        new PublicacionDAO();

int totalUsuarios =
        usuarioDAO.totalUsuarios();

int activos =
        usuarioDAO.usuariosActivos();

int suspendidos =
        usuarioDAO.usuariosSuspendidos();

int publicaciones =
        publicacionDAO.totalPublicaciones();
%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Dashboard Administrador</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
rel="stylesheet">

<style>

body{
    background:#f4f6f9;
}

.card-estadistica{
    border:none;
    border-radius:15px;
    transition:0.3s;
}

.card-estadistica:hover{
    transform:translateY(-5px);
}

.numero{
    font-size:40px;
    font-weight:bold;
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

<h1 class="text-center mb-5">

Dashboard Administrativo

</h1>

<div class="row g-4">

<div class="col-md-3">

<div class="card card-estadistica shadow">

<div class="card-body text-center">

<div class="numero text-primary">

<%= totalUsuarios %>

</div>

<h5>

Usuarios Registrados

</h5>

</div>

</div>

</div>

<div class="col-md-3">

<div class="card card-estadistica shadow">

<div class="card-body text-center">

<div class="numero text-success">

<%= activos %>

</div>

<h5>

Usuarios Activos

</h5>

</div>

</div>

</div>

<div class="col-md-3">

<div class="card card-estadistica shadow">

<div class="card-body text-center">

<div class="numero text-warning">

<%= suspendidos %>

</div>

<h5>

Usuarios Suspendidos

</h5>

</div>

</div>

</div>

<div class="col-md-3">

<div class="card card-estadistica shadow">

<div class="card-body text-center">

<div class="numero text-info">

<%= publicaciones %>

</div>

<h5>

Publicaciones

</h5>

</div>

</div>

</div>

</div>

<div class="row mt-5">

<div class="col-md-6 mb-3">

<div class="card shadow">

<div class="card-body text-center">

<h3>

? Gestión de Usuarios

</h3>

<p>

Administrar cuentas, activar o suspender estudiantes.

</p>

<a href="usuarios.jsp"
   class="btn btn-primary">

Administrar Usuarios

</a>

</div>

</div>

</div>

<div class="col-md-6 mb-3">

<div class="card shadow">

<div class="card-body text-center">

<h3>

? Estadísticas

</h3>

<p>

Visualización general de la actividad del sistema.

</p>

<button class="btn btn-secondary" disabled>

Próximamente

</button>

</div>

</div>

</div>

</div>

</div>

</body>

</html>