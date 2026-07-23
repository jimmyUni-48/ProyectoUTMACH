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
(Usuario) session.getAttribute(
"usuario");
%>

<%
if(usuarioSesion == null){

    response.sendRedirect(
    "login.jsp");

    return;
}
%>

<%
if(!usuarioSesion.getRol().equals("ADMIN")){

    response.sendRedirect(
    "dashboard.jsp");

    return;
}
%>



<%

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

</head>

<body>

<div class="container mt-4">

<h1>

Dashboard Administrativo

</h1>

<div class="row">

<div class="col-md-3">

<div class="card">

<div class="card-body">

<h3>

<%= totalUsuarios %>

</h3>

<p>

Usuarios Registrados

</p>

</div>

</div>

</div>

<div class="col-md-3">

<div class="card">

<div class="card-body">

<h3>

<%= activos %>

</h3>

<p>

Usuarios Activos

</p>

</div>

</div>

</div>

<div class="col-md-3">

<div class="card">

<div class="card-body">

<h3>

<%= suspendidos %>

</h3>

<p>

Usuarios Suspendidos

</p>

</div>

</div>

</div>

<div class="col-md-3">

<div class="card">

<div class="card-body">

<h3>

<%= publicaciones %>

</h3>

<p>

Publicaciones

</p>

</div>

</div>

</div>

</div>

<br><br>
<a href="usuarios.jsp"
   class="btn btn-primary">

    Administrar Usuarios

</a>

<br><br>
<button type="button"
            onclick="window.location.href='index.jsp'">
        Cerrar Sesion
    </button>

</div>


</body>

</html>
