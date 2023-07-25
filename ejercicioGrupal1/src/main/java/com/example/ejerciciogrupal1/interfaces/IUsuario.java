package com.example.ejerciciogrupal1.interfaces;

import com.example.ejerciciogrupal1.models.Usuario;

import java.util.List;

public interface IUsuario {
    public boolean createUsuario(Usuario usuario) throws Exception;
    public List<Usuario> listaUsuarios()throws Exception;
}
