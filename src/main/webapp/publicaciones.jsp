<%-- 
    Document   : publicaciones
    Created on : 22 jul 2026, 9:12:02?p. m.
    Author     : karla
--%>

<%@page import="java.util.List"%>
<%@page import="com.utmach.dao.PublicacionDAO"%>
<%@page import="com.utmach.modelo.Publicacion"%>

<%
PublicacionDAO dao =
        new PublicacionDAO();

String buscar =
        request.getParameter("buscar");

List<Publicacion> lista;

if(buscar != null &&
   !buscar.trim().isEmpty()){

    lista =
    dao.buscarPublicaciones(buscar);

}else{

    lista =
    dao.listar();
}
%>

<!DOCTYPE html>

<html>

<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
rel="stylesheet">

<meta charset="UTF-8">

<title>Publicaciones</title>

</head>

<body class="bg-light">

<div class="container mt-4">

<div class="card shadow">

<div class="card-header bg-primary text-white">

<h2>
? Publicaciones
</h2>

</div>

<div class="card-body">

<form method="get"
action="publicaciones.jsp"
class="row g-2 mb-3">

<div class="col-md-10">

<input type="text"
name="buscar"
class="form-control"
placeholder="Buscar publicación">

</div>

<div class="col-md-2">

<button class="btn btn-primary w-100">

Buscar

</button>

</div>

</form>

<div class="table-responsive">

<table class="table table-striped table-hover">

<tr>

<th>ID</th>
<th>Autor</th>
<th>Categoría</th>
<th>Título</th>
<th>Descripción</th>
<th>Fecha</th>
<th>Estado</th>

</tr>

<%
for(Publicacion p : lista){
%>

<tr>

<td><%= p.getId() %></td>
<td><%= p.getAutor() %></td>
<td><%= p.getCategoria() %></td>
<td><%= p.getTitulo() %></td>
<td><%= p.getDescripcion() %></td>
<td><%= p.getFechaPublicacion() %></td>
<td><%= p.getEstado() %></td>

</tr>

<%
}
%>

</table>

</div>

<a href="dashboard.jsp"
class="btn btn-secondary">

Volver

</a>

</div>

</div>

</div>

</body>

</html>
