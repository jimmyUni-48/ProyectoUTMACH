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
import jakarta.servlet.http.HttpSession;

@WebServlet("/LoginAdminServlet")
public class LoginAdminServlet extends HttpServlet {

    @Override
    protected void doPost(
            HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        String correo =
                request.getParameter("correo");

        String clave =
                request.getParameter("clave");

        UsuarioDAO dao =
                new UsuarioDAO();

        Usuario usuario =
                dao.login(correo, clave);

        if(usuario != null &&
           usuario.getRol().equals("ADMIN")){

            HttpSession sesion =
                    request.getSession();

            sesion.setAttribute(
                    "usuario",
                    usuario);

            response.sendRedirect(
                    "dashboardAdmin.jsp");

        }else{

            response.sendRedirect(
                    "loginAdmin.jsp");
        }
    }
}
