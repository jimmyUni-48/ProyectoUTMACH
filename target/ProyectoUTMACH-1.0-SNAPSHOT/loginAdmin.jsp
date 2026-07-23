<%-- 
    Document   : loginAdmin
    Created on : 22 jul 2026, 11:52:12 p. m.
    Author     : karla
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Administrador</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
rel="stylesheet">

<style>

body{
background: linear-gradient(135deg,#dc3545,#fd7e14);
min-height:100vh;
display:flex;
justify-content:center;
align-items:center;
}

.card-admin{
max-width:500px;
width:100%;
border-radius:20px;
box-shadow:0px 10px 25px rgba(0,0,0,.2);
}

</style>

</head>

<body>

<div class="card card-admin">

<div class="card-body p-4">

<h2 class="text-center mb-4">
🛡️ Administrador
</h2>

<form action="LoginAdminServlet"
method="post">

<div class="mb-3">

<label>Correo</label>

<input type="email"
name="correo"
class="form-control"
required>

</div>

<div class="mb-3">

<label>Contraseña</label>

<input type="password"
name="clave"
class="form-control"
required>

</div>

<div class="d-grid gap-2">

<button class="btn btn-danger">
Ingresar
</button>

<button type="button"
class="btn btn-secondary"
onclick="window.location.href='index.jsp'">
Volver
</button>

</div>

</form>

</div>

</div>

</body>

</html>