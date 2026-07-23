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
<script>

function actualizarCarreras(){

let facultad =
document.getElementById("facultad").value;

let carrera =
document.getElementById("carrera");

carrera.innerHTML =
"<option value=''>Seleccione una carrera</option>";

if(facultad === "ingenieria"){

carrera.innerHTML +=
"<option value='Tecnologías de la Información'>Tecnologías de la Información</option>";

carrera.innerHTML +=
"<option value='Ingeniería Civil'>Ingeniería Civil</option>";

carrera.innerHTML +=
"<option value='Ingeniería Ambiental'>Ingeniería Ambiental</option>";

}

if(facultad === "empresariales"){

carrera.innerHTML +=
"<option value='Administración de Empresas'>Administración de Empresas</option>";

carrera.innerHTML +=
"<option value='Contabilidad y Auditoría'>Contabilidad y Auditoría</option>";

carrera.innerHTML +=
"<option value='Economía'>Economía</option>";

}

if(facultad === "sociales"){

carrera.innerHTML +=
"<option value='Derecho'>Derecho</option>";

carrera.innerHTML +=
"<option value='Comunicación'>Comunicación</option>";

}

if(facultad === "agropecuarias"){

carrera.innerHTML +=
"<option value='Agronomía'>Agronomía</option>";

carrera.innerHTML +=
"<option value='Medicina Veterinaria'>Medicina Veterinaria</option>";

}

}

</script>
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

<label class="form-label">

Facultad

</label>

<select id="facultad"
        class="form-select"
        onchange="actualizarCarreras()"
        required>

<option value="">
Seleccione una facultad
</option>

<option value="ingenieria">
Ingeniería Civil
</option>

<option value="empresariales">
Ciencias Empresariales
</option>

<option value="sociales">
Ciencias Sociales
</option>

<option value="agropecuarias">
Ciencias Agropecuarias
</option>

</select>

</div>

<div class="mb-3">

<label class="form-label">

Carrera

</label>

<select name="carrera"
        id="carrera"
        class="form-select"
        required>

<option value="">
Seleccione una carrera
</option>

</select>

</div>

<div class="mb-3">
<select name="semestre"
        class="form-select"
        required>

<option value="">
Seleccione un semestre
</option>

<option value="1">1° Semestre</option>
<option value="2">2° Semestre</option>
<option value="3">3° Semestre</option>
<option value="4">4° Semestre</option>
<option value="5">5° Semestre</option>
<option value="6">6° Semestre</option>
<option value="7">7° Semestre</option>
<option value="8">8° Semestre</option>
<option value="9">9° Semestre</option>
<option value="10">10° Semestre</option>

</select>
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
