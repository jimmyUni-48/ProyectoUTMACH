/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.utmach.dao;

import com.utmach.conexion.Conexion;
import com.utmach.modelo.Publicacion;

import java.sql.Connection;
import java.sql.PreparedStatement;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class PublicacionDAO {

    Connection con;
    PreparedStatement ps;
    ResultSet rs;

    public boolean registrar(Publicacion p){

        String sql =
        "INSERT INTO publicaciones(autor,carrera_cargo,categoria,titulo,descripcion,fecha_publicacion,fecha_vencimiento,alcance,prioridad,estado,justificacion) VALUES(?,?,?,?,?,?,?,?,?,?,?)";

        try{

            Conexion cn = new Conexion();

            con = cn.conectar();

            ps = con.prepareStatement(sql);

            ps.setString(1,p.getAutor());
            ps.setString(2,p.getCarreraCargo());
            ps.setString(3,p.getCategoria());
            ps.setString(4,p.getTitulo());
            ps.setString(5,p.getDescripcion());
            ps.setString(6,p.getFechaPublicacion());
            ps.setString(7,p.getFechaVencimiento());
            ps.setString(8,p.getAlcance());
            ps.setString(9,p.getPrioridad());
            ps.setString(10,p.getEstado());
            ps.setString(11,p.getJustificacion());

            ps.executeUpdate();

            return true;

        }catch(Exception e){

            System.out.println(e.getMessage());

            return false;
        }
        
    }
    
    public List<Publicacion> listar(){

        List<Publicacion> lista =
                new ArrayList<>();

        String sql =
                "SELECT * FROM publicaciones";

        try{

            Conexion cn =
                    new Conexion();

            con = cn.conectar();

            ps = con.prepareStatement(sql);

            rs = ps.executeQuery();

            while(rs.next()){

                Publicacion p =
                        new Publicacion();

                p.setId(
                        rs.getInt("id"));

                p.setAutor(
                        rs.getString("autor"));

                p.setCategoria(
                        rs.getString("categoria"));

                p.setTitulo(
                        rs.getString("titulo"));

                p.setDescripcion(
                        rs.getString("descripcion"));

                p.setFechaPublicacion(
                        rs.getString("fecha_publicacion"));

                p.setEstado(
                        rs.getString("estado"));

                lista.add(p);
            }

        }catch(Exception e){

            System.out.println(
                    e.getMessage());
        }

        return lista;
    }
    
    public void eliminar(int id){

    String sql =
            "DELETE FROM publicaciones WHERE id=?";

    try{

        Conexion cn =
                new Conexion();

        con = cn.conectar();

        ps = con.prepareStatement(sql);

        ps.setInt(1,id);

        ps.executeUpdate();

    }catch(Exception e){

        System.out.println(
                e.getMessage());
    }
    }
    
    public int totalPublicaciones(){

    int total = 0;

    String sql =
    "SELECT COUNT(*) FROM publicaciones";

    try{

        Conexion cn = new Conexion();

        con = cn.conectar();

        ps = con.prepareStatement(sql);

        rs = ps.executeQuery();

        if(rs.next()){

            total = rs.getInt(1);

        }

    }catch(Exception e){

        System.out.println(e.getMessage());

    }

    return total;
    }
    
    public List<Publicacion> buscarPublicaciones(String texto){

    List<Publicacion> lista =
            new ArrayList<>();

    String sql =
            "SELECT * FROM publicaciones WHERE titulo LIKE ?";

    try{

        Conexion cn =
                new Conexion();

        con = cn.conectar();

        ps = con.prepareStatement(sql);

        ps.setString(1,
                "%" + texto + "%");

        rs = ps.executeQuery();

        while(rs.next()){

            Publicacion p =
                    new Publicacion();

            p.setId(
                    rs.getInt("id"));

            p.setAutor(
                    rs.getString("autor"));

            p.setCategoria(
                    rs.getString("categoria"));

            p.setTitulo(
                    rs.getString("titulo"));

            p.setDescripcion(
                    rs.getString("descripcion"));

            p.setFechaPublicacion(
                    rs.getString("fecha_publicacion"));

            p.setEstado(
                    rs.getString("estado"));

            lista.add(p);
        }

    }catch(Exception e){

        System.out.println(
                e.getMessage());
    }

    return lista;
    }
    
    
}
