/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.utmach.conexion;

import java.sql.Connection;
import java.sql.DriverManager;

public class Conexion {

    private static final String URL =
            "jdbc:mysql://localhost:3306/utmach";

    private static final String USER =
            "root";

    private static final String PASSWORD =
            "";

    public Connection conectar() {

        Connection con = null;

        try {

            Class.forName(
                    "com.mysql.cj.jdbc.Driver"
            );

            con = DriverManager.getConnection(
                    URL,
                    USER,
                    PASSWORD
            );

            System.out.println(
                    "Conexion exitosa"
            );

        } catch (Exception e) {

            System.out.println(
                    "Error: " + e.getMessage()
            );

        }

        return con;
    }
    
    public static void main(String[] args) {

    Conexion c = new Conexion();

    c.conectar();

}
}
