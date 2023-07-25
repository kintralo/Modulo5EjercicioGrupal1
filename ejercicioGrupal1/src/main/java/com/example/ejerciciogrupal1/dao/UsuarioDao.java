package com.example.ejerciciogrupal1.dao;

import com.example.ejerciciogrupal1.conexion.Conexion;
import com.example.ejerciciogrupal1.interfaces.IUsuario;
import com.example.ejerciciogrupal1.models.Capacitacion;
import com.example.ejerciciogrupal1.models.Usuario;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class UsuarioDao implements IUsuario {

    private Statement statement = null;
    private Connection connection = null;
    private ResultSet resultSet = null;

    @Override
    public boolean createUsuario(Usuario usuario) throws Exception {
        boolean registar = false;
        String sql = " INSERT INTO usuarios (nombre, tipo) VALUES ('" + usuario.getNombre() +
                "', '" + usuario.getTipo() + "')";
        //Creación de try
        try {
            connection = Conexion.conectar();//Agregar los datos de la conexión
            statement = connection.createStatement();
            statement.execute(sql);//Agregar la consulta para registrar
            registar = true;//Si salío todo de pana
            statement.close();// Cerrar declacaració
            connection.close();// Cerrar conexión-
        } catch (SQLException e) {
            System.out.println("Error: createUsuario");
            e.printStackTrace();
        }
        return registar;
    }

    @Override
    public List<Usuario> listaUsuarios() throws Exception {
        String sql = "SELECT nombre,tipo FROM usuarios";
        List<Usuario> usuarioList = new ArrayList<Usuario>();
        //Creación de try
        try {
            connection = Conexion.conectar();//Agregar los datos de la conexión
            statement = connection.createStatement();
            resultSet = statement.executeQuery(sql);//Agregar la consulta para registrar

            while (resultSet.next()) {
                //Creación de un objeto para agregarlo a la lista
                Usuario usuario = new Usuario();
                //Obtencion de datos de la tabla campo por campo
                usuario.setNombre(resultSet.getString(1));
                usuario.setTipo(resultSet.getString(2));
                usuarioList.add(usuario);//Guardar los datos a lista
            }
            resultSet.close();// Cerrar resultset
            statement.close();// Cerrar declacaración
            connection.close();// Cerrar conexión-
        } catch (SQLException e) {
            System.out.println("Error: listaCapacitaciones");
            e.printStackTrace();
        }
        return usuarioList;
    }
}
