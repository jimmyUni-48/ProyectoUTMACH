/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.utmach.controlador;

import com.utmach.dao.UsuarioDAO;

import java.io.IOException;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/SuspenderUsuarioServlet")

public class SuspenderUsuarioServlet
extends HttpServlet {

    @Override

    protected void doGet(

            HttpServletRequest request,

            HttpServletResponse response)

            throws IOException {

        int id =
                Integer.parseInt(
                        request.getParameter("id"));

        UsuarioDAO dao =
                new UsuarioDAO();

        dao.suspenderUsuario(id);

        response.sendRedirect(
                "usuarios.jsp");
    }
    
    
}

