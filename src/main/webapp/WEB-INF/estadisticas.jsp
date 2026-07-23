<%-- 
    Document   : estadisticas
    Created on : 23 jul 2026, 3:29:32?p. m.
    Author     : karla
--%>

<%@page import="com.utmach.dao.UsuarioDAO"%>
<%@page import="com.utmach.dao.PublicacionDAO"%>

<%
UsuarioDAO usuarioDAO = new UsuarioDAO();
PublicacionDAO publicacionDAO = new PublicacionDAO();

int totalUsuarios = usuarioDAO.totalUsuarios();
int activos = usuarioDAO.usuariosActivos();
int suspendidos = usuarioDAO.usuariosSuspendidos();
int publicaciones = publicacionDAO.totalPublicaciones();
%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Estadísticas</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
rel="stylesheet">

</head>

<body class="bg-light">

<div class="container mt-5">

<h1 class="text-center mb-4">
? Estadísticas del Sistema
</h1>

<div class="row">

<div class="col-md-6 mb-3">

<div class="card shadow">

<div class="card-body text-center">

<h2><%= totalUsuarios %></h2>

<p>Total de Usuarios</p>

</div>

</div>

</div>

<div class="col-md-6 mb-3">

<div class="card shadow">

<div class="card-body text-center">

<h2><%= publicaciones %></h2>

<p>Total de Publicaciones</p>

</div>

</div>

</div>

<div class="col-md-6 mb-3">

<div class="card shadow">

<div class="card-body text-center">

<h2><%= activos %></h2>

<p>Usuarios Activos</p>

</div>

</div>

</div>

<div class="col-md-6 mb-3">

<div class="card shadow">

<div class="card-body text-center">

<h2><%= suspendidos %></h2>

<p>Usuarios Suspendidos</p>

</div>

</div>

</div>

</div>

<div class="text-center mt-4">

<a href="dashboardAdmin.jsp"
class="btn btn-secondary">

Volver al Panel

</a>

</div>

</div>

</body>

</html>
