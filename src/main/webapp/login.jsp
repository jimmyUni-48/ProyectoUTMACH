<%-- 
    Document   : login
    Created on : 22 jul 2026, 8:36:18 p. m.
    Author     : karla
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
String error = request.getParameter("error");
%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Login Estudiante</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
rel="stylesheet">

<style>

body{
background: linear-gradient(135deg,#198754,#20c997);
min-height:100vh;
display:flex;
justify-content:center;
align-items:center;
}

.card-login{
max-width:500px;
width:100%;
border-radius:20px;
box-shadow:0px 10px 25px rgba(0,0,0,.2);
}

</style>

</head>

<body>

<div class="card card-login">

<div class="card-body p-4">

<h2 class="text-center mb-4">
👨‍🎓 Iniciar Sesión
</h2>

<%
if("suspendido".equals(error)){
%>

<div class="alert alert-danger">
Su cuenta ha sido suspendida.
</div>

<%
}
%>

<form action="LoginServlet" method="post">

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

<button class="btn btn-success">
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
