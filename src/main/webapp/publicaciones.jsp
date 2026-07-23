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

<meta charset="UTF-8">

<title>Publicaciones</title>

</head>

<body>
    <div class="container mt-4">

    <h1>Publicaciones</h1>
    
    <form method="get" action="publicaciones.jsp">

        <input type="text"
               name="buscar"
               placeholder="Buscar publicación">

        <button type="submit">
            Buscar
        </button>

    </form>

<br>
    <table border="1">
        <tr>

        <th>ID</th>
        <th>Autor</th>
        <th>Categoria</th>
        <th>Titulo</th>
        <th>Descripcion</th>
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
    
    <button type="button" onclick="window.location.href='dashboard.jsp'">
        
            Volver al Inicio
            
    </button>
    
    </div>

</body>

</html>
