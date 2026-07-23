<%-- 
    Document   : usuarios
    Created on : 22 jul 2026, 9:24:16?p. m.
    Author     : karla
--%>

<%@page import="java.util.List"%>
<%@page import="com.utmach.dao.UsuarioDAO"%>
<%@page import="com.utmach.modelo.Usuario"%>

<%
UsuarioDAO dao = new UsuarioDAO();

List<Usuario> lista =
        dao.listarUsuarios();
%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Usuarios</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
rel="stylesheet">

</head>

<body>

<div class="container mt-4">

<h1>Usuarios Registrados</h1>

<table class="table table-striped">

<tr>

<th>ID</th>
<th>Nombre</th>
<th>Carrera</th>
<th>Semestre</th>
<th>Correo</th>
<th>Estado</th>
<th>Acciones</th>

</tr>

<%
for(Usuario u : lista){
%>

<tr>

<td><%= u.getId() %></td>

<td><%= u.getNombre() %></td>

<td><%= u.getCarrera() %></td>

<td><%= u.getSemestre() %></td>

<td><%= u.getCorreo() %></td>

<td><%= u.getEstado() %></td>

<td>

<%
if(u.getEstado().equals("ACTIVA")){
%>

<a href="SuspenderUsuarioServlet?id=<%=u.getId()%>"
   class="btn btn-warning">

    Suspender

</a>

<%
}else{
%>

<a href="ActivarUsuarioServlet?id=<%=u.getId()%>"
   class="btn btn-success">

    Activar

</a>

<%
}
%>

</td>

</tr>

<%
}
%>

</table>
<br><br>
<button type="button"
            onclick="window.location.href='dashboardAdmin.jsp'">
        Volver al Inicio
    </button>
</div>

</body>

</html>
