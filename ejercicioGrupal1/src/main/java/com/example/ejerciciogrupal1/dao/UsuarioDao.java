package com.example.ejerciciogrupal1.dao;

import com.example.ejerciciogrupal1.interfaces.IUsuario;
import com.example.ejerciciogrupal1.models.Usuario;

import java.util.List;

public class UsuarioDao implements IUsuario {
    @Override
    public boolean createUsuario(Usuario usuario) throws Exception {
        return false;
    }

    @Override
    public List<Usuario> listaUsuarios() throws Exception {
        return null;
    }
}
