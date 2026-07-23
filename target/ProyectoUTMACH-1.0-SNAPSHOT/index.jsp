<%-- 
    Document   : index
    Created on : 22 jul 2026, 11:51:28 p. m.
    Author     : karla
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Conecta UTMACH</title>

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

.card-principal{
    width:100%;
    max-width:600px;
    border:none;
    border-radius:20px;
    box-shadow:0 10px 30px rgba(0,0,0,0.2);
}

.logo{
    font-size:60px;
}

.btn{
    border-radius:12px;
    font-size:18px;
    padding:12px;
}

</style>

</head>

<body>

<div class="card card-principal">

    <div class="card-body text-center p-5">

        <div class="logo">
            🎓
        </div>

        <h1 class="fw-bold">
            Conecta UTMACH
        </h1>

        <p class="text-muted mb-4">
            Plataforma de comunicación académica para estudiantes y administradores de la Universidad Técnica de Machala.
        </p>

        <div class="d-grid gap-3">

            <a href="registro.jsp"
               class="btn btn-success">

               Registrarse

            </a>

            <a href="login.jsp"
               class="btn btn-primary">

               Iniciar Sesión Estudiante

            </a>

            <a href="loginAdmin.jsp"
               class="btn btn-danger">

               Iniciar Sesión Administrador

            </a>

        </div>

    </div>

</div>

</body>

</html>
