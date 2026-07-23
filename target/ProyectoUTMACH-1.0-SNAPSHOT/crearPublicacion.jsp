<%-- 
    Document   : crearPublicacion
    Created on : 22 jul 2026, 8:55:08 p. m.
    Author     : karla
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>

<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<title>Crear Publicación</title>

</head>

<body>

<div class="container mt-4">

    <h1>Nueva Publicación</h1>

    <form action="PublicacionServlet"
          method="post">

        <div class="mb-3">

            <label>Título</label>

            <input type="text"
                   name="titulo"
                   class="form-control">

        </div>

        <div class="mb-3">

            <label>Categoría</label>

            <input type="text"
                   name="categoria"
                   class="form-control">

        </div>

        <div class="mb-3">

            <label>Descripción</label>

            <textarea
                    name="descripcion"
                    class="form-control">
            </textarea>

        </div>

        <div class="mb-3">

            <label>Fecha de vencimiento</label>

            <input type="date"
                   name="fechaVencimiento"
                   class="form-control">

        </div>

        <button
                class="btn btn-success">

            Publicar

        </button>
        
        <button type="button" onclick="window.location.href='dashboard.jsp'">
            
            Cancelar
            
        </button>
    </form>

</div>

</body>

</html>
