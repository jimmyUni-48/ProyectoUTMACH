<%-- 
    Document   : registro
    Created on : 22 jul 2026, 8:29:20 p. m.
    Author     : karla
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>Registro - Conecta UTMACH</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
rel="stylesheet">

<style>

body{
    background: linear-gradient(135deg,#0d6efd,#0dcaf0);
    min-height:100vh;
    display:flex;
    justify-content:center;
    align-items:center;
}

.card-registro{
    width:100%;
    max-width:600px;
    border-radius:20px;
    box-shadow:0px 10px 25px rgba(0,0,0,0.2);
}

</style>

</head>

<body>

<div class="card card-registro">

<div class="card-body p-4">

<h2 class="text-center mb-4">
🎓 Registro de Estudiante
</h2>

<form action="UsuarioServlet" method="post">

<div class="mb-3">
<label class="form-label">Nombre Completo</label>
<input type="text" name="nombre" class="form-control" required>
</div>

<div class="mb-3">
<label class="form-label">Carrera</label>
<input type="text" name="carrera" class="form-control" required>
</div>

<div class="mb-3">
<label class="form-label">Semestre</label>
<input type="number" name="semestre" class="form-control" required>
</div>

<div class="mb-3">
<label class="form-label">Correo Institucional</label>
<input type="email" name="correo" class="form-control" required>
<div class="form-text">
Solo se permiten correos @utmachala.edu.ec
</div>
</div>

<div class="mb-3">
<label class="form-label">Contraseña</label>
<input type="password" name="clave" class="form-control" required>
</div>

<div class="d-grid gap-2">

<button type="submit"
class="btn btn-success">
Registrarse
</button>

<button type="button"
class="btn btn-secondary"
onclick="window.location.href='index.jsp'">
Volver al Inicio
</button>

</div>

</form>

</div>

</div>

</body>
</html>
