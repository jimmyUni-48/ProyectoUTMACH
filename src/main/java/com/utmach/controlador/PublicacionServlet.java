/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.utmach.controlador;

import com.utmach.dao.PublicacionDAO;
import com.utmach.modelo.Publicacion;
import com.utmach.modelo.Usuario;

import java.io.IOException;
import java.time.LocalDate;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/PublicacionServlet")

public class PublicacionServlet
extends HttpServlet {

    @Override

    protected void doPost(
    HttpServletRequest request,
    HttpServletResponse response)

    throws ServletException,
           IOException {

        HttpSession sesion =
                request.getSession();

        Usuario usuario =
                (Usuario)
                sesion.getAttribute(
                        "usuario");

        Publicacion p =
                new Publicacion();

        p.setAutor(
                usuario.getNombre());

        p.setCarreraCargo(
                usuario.getCarrera());

        p.setTitulo(
                request.getParameter(
                        "titulo"));

        p.setCategoria(
                request.getParameter(
                        "categoria"));

        p.setDescripcion(
                request.getParameter(
                        "descripcion"));

        p.setFechaPublicacion(
                LocalDate.now()
                .toString());

        p.setFechaVencimiento(
                request.getParameter(
                        "fechaVencimiento"));

        p.setAlcance(
                "GENERAL");

        p.setPrioridad(
                "MEDIA");

        p.setEstado(
                "ACTIVA");

        p.setJustificacion(
                "Publicacion creada");

        PublicacionDAO dao =
                new PublicacionDAO();

        dao.registrar(p);

        response.sendRedirect(
                "dashboard.jsp");
    }
}
