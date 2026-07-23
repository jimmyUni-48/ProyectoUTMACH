/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.utmach.dao;

import com.utmach.conexion.Conexion;
import com.utmach.modelo.Usuario;

import java.sql.Connection;
import java.sql.PreparedStatement;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class UsuarioDAO {

    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    
    public Usuario buscarUsuario(String correo){

    Usuario u = null;

    String sql =
        "SELECT * FROM usuarios WHERE correo=?";

    try{

        Conexion cn = new Conexion();

        con = cn.conectar();

        ps = con.prepareStatement(sql);

        ps.setString(1, correo);

        rs = ps.executeQuery();

        if(rs.next()){

            u = new Usuario();

            u.setId(
                rs.getInt("id"));

            u.setNombre(
                rs.getString("nombre"));

            u.setCarrera(
                rs.getString("carrera"));

            u.setSemestre(
                rs.getInt("semestre"));

            u.setCorreo(
                rs.getString("correo"));

            u.setEstado(
                rs.getString("estado"));

            u.setPublicaciones(
                rs.getInt("publicaciones"));

        }

    }catch(Exception e){

        System.out.println(
            e.getMessage());

    }

    return u;
}
    
    
    public boolean registrar(Usuario u) {

        String sql =
        "INSERT INTO usuarios (nombre,carrera,semestre,correo,clave,estado,publicaciones,rol) VALUES(?,?,?,?,?,?,?,?)";

        try {

            Conexion cn = new Conexion();

            con = cn.conectar();

            ps = con.prepareStatement(sql);

            ps.setString(1, u.getNombre());
            ps.setString(2, u.getCarrera());
            ps.setInt(3, u.getSemestre());
            ps.setString(4, u.getCorreo());

            ps.setString(5, u.getClave());

            ps.setString(6, u.getEstado());
            ps.setInt(7, u.getPublicaciones());
            ps.setString(8, u.getRol());
            
            System.out.println("CLAVE A GUARDAR: " + u.getClave());
            
            ps.executeUpdate();

            return true;

        } catch (Exception e) {

            System.out.println(e.getMessage());

            return false;
        }
    }
    
    public List<Usuario> listarUsuarios(){

    List<Usuario> lista =
            new ArrayList<>();

    String sql =
            "SELECT * FROM usuarios";

    try{

        Conexion cn =
                new Conexion();

        con = cn.conectar();

        ps = con.prepareStatement(sql);

        rs = ps.executeQuery();

        while(rs.next()){

            Usuario u =
                    new Usuario();

            u.setId(
                    rs.getInt("id"));

            u.setNombre(
                    rs.getString("nombre"));

            u.setCarrera(
                    rs.getString("carrera"));

            u.setSemestre(
                    rs.getInt("semestre"));

            u.setCorreo(
                    rs.getString("correo"));

            u.setEstado(
                    rs.getString("estado"));

            lista.add(u);
        }

    }catch(Exception e){

        System.out.println(
                e.getMessage());
    }

    return lista;
    }
    
    public void suspenderUsuario(int id){

    String sql =
            "UPDATE usuarios SET estado='SUSPENDIDA' WHERE id=?";

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
    
    public void activarUsuario(int id){

    String sql =
            "UPDATE usuarios SET estado='ACTIVA' WHERE id=?";

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
    
    public int totalUsuarios(){

    int total = 0;

    String sql = "SELECT COUNT(*) FROM usuarios";

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
    
    public int usuariosActivos(){

    int total = 0;

    String sql =
    "SELECT COUNT(*) FROM usuarios WHERE estado='ACTIVA'";

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
    
    public int usuariosSuspendidos(){

    int total = 0;

    String sql =
    "SELECT COUNT(*) FROM usuarios WHERE estado='SUSPENDIDA'";

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
    
    public Usuario login(
        String correo,
        String clave){

    Usuario usuario = null;

    String sql =
    "SELECT * FROM usuarios WHERE correo=? AND clave=?";

    try{

        Conexion cn =
                new Conexion();

        con = cn.conectar();

        ps = con.prepareStatement(sql);

        ps.setString(1, correo);

        ps.setString(2, clave);

        rs = ps.executeQuery();

        if(rs.next()){

            usuario = new Usuario();

            usuario.setId(
                    rs.getInt("id"));

            usuario.setNombre(
                    rs.getString("nombre"));

            usuario.setCarrera(
                    rs.getString("carrera"));

            usuario.setSemestre(
                    rs.getInt("semestre"));

            usuario.setCorreo(
                    rs.getString("correo"));

            usuario.setEstado(
                    rs.getString("estado"));

            usuario.setPublicaciones(
                    rs.getInt("publicaciones"));

            usuario.setClave(
                    rs.getString("clave"));
            
            usuario.setRol(
                    rs.getString("rol"));
        }

    }catch(Exception e){

        System.out.println(
                e.getMessage());
    }

    return usuario;
    }
    
    
    
}
