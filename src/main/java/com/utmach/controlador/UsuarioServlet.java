/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.utmach.controlador;

import com.utmach.dao.UsuarioDAO;
import com.utmach.modelo.Usuario;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/UsuarioServlet")
public class UsuarioServlet extends HttpServlet {
    
    @Override
    protected void doPost(HttpServletRequest request,HttpServletResponse response)throws ServletException, IOException {

        String correo =
        request.getParameter("correo");

        if(!correo.endsWith("@utmachala.edu.ec")){

            response.sendRedirect(
                "registro.jsp?error=correo");

            return;
        }

        Usuario u = new Usuario();

        u.setNombre(
            request.getParameter("nombre"));

        u.setCarrera(
            request.getParameter("carrera"));

        u.setSemestre(
            Integer.parseInt(
                request.getParameter("semestre")));

        u.setCorreo(correo);

        u.setClave(
            request.getParameter("clave"));

        u.setEstado("ACTIVA");

        u.setPublicaciones(0);

        u.setRol("USUARIO");
        

        UsuarioDAO dao =new UsuarioDAO();

        System.out.println("Nombre: " + u.getNombre());
        System.out.println("Correo: " + u.getCorreo());
        System.out.println("Clave: " + u.getClave());   
        
        dao.registrar(u);

        response.sendRedirect("registro.jsp");
    }
}
