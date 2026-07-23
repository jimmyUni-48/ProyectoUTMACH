/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.utmach.controlador;

import java.io.IOException;

import jakarta.servlet.annotation.WebServlet;

import jakarta.servlet.http.HttpServlet;

import jakarta.servlet.http.HttpServletRequest;

import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/LogoutServlet")

public class LogoutServlet
extends HttpServlet {

    @Override

    protected void doGet(

    HttpServletRequest request,

    HttpServletResponse response)

    throws IOException {

        request.getSession()
               .invalidate();

        response.sendRedirect(
                "login.jsp");
    }
}
