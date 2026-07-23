<%-- 
    Document   : crearPublicacion
    Created on : 22 jul 2026, 8:55:08 p. m.
    Author     : karla
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Nueva Publicación</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
rel="stylesheet">

</head>

<body class="bg-light">

<div class="container mt-5">

<div class="card shadow">

<div class="card-header bg-success text-white">

<h3>
📝 Crear Publicación
</h3>

</div>

<div class="card-body">

<form action="PublicacionServlet"
method="post">

<div class="mb-3">

<label>Título</label>

<input type="text"
name="titulo"
class="form-control"
required>

</div>

<div class="mb-3">

<label>Categoría</label>

<input type="text"
name="categoria"
class="form-control"
required>

</div>

<div class="mb-3">

<label>Descripción</label>

<textarea
name="descripcion"
class="form-control"
rows="5"
required>
</textarea>

</div>

<div class="mb-3">

<label>Fecha de Vencimiento</label>

<input type="date"
name="fechaVencimiento"
class="form-control"
required>

</div>

<button class="btn btn-success">

Publicar

</button>

<a href="dashboard.jsp"
class="btn btn-secondary">

Cancelar

</a>

</form>

</div>

</div>

</div>

</body>

</html>