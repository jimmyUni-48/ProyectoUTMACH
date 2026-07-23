/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.utmach.conexion;

import java.sql.Connection;
import java.sql.DriverManager;

public class Conexion {

    public Connection conectar() {

        Connection con = null;

        try {

            Class.forName(
                    "com.mysql.cj.jdbc.Driver"
            );

            String host =
                    System.getenv("MYSQLHOST");

            String bd =
                    System.getenv("MYSQLDATABASE");

            String usuario =
                    System.getenv("MYSQLUSER");

            String clave =
                    System.getenv("MYSQLPASSWORD");

            String url =
                    "jdbc:mysql://" +
                    host +
                    ":3306/" +
                    bd +
                    "?useSSL=false&allowPublicKeyRetrieval=true&serverTimezone=UTC";

            con = DriverManager.getConnection(
                    url,
                    usuario,
                    clave
            );

            System.out.println(
                    "Conexion exitosa a Railway"
            );

        } catch (Exception e) {

            System.out.println(
                    "Error: " + e.getMessage()
            );

        }

        return con;
    }
}
