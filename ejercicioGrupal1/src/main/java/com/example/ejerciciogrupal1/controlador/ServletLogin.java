package com.example.ejerciciogrupal1.controlador;

import com.example.ejerciciogrupal1.implementacion.UsuarioDao;
import com.example.ejerciciogrupal1.models.Usuario;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "servletLogin", value = "/servlet-login")
public class ServletLogin extends HttpServlet {
    private int intentos = 0;

    /**
     *
     */
    public ServletLogin() {
    }

    /**
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String usuario1 = request.getParameter("txtUserName");
        String password = request.getParameter("txtPassword");
        Usuario usuario = new Usuario(usuario1,password);
        UsuarioDao rs = new UsuarioDao();

        try{
            List<Usuario> loginResult = rs.login(usuario);
            if (!loginResult.isEmpty()) {
                intentos = 0; // reiniciar el contador
                request.getSession().setAttribute("usuarioId",loginResult.get(0).getId_usuario());
                request.getSession().setAttribute("usuario",loginResult.get(0).getNombre());
                request.getSession().setAttribute("perfil",loginResult.get(0).getTipo());
                request.getSession().setAttribute("sesion",true);
                response.sendRedirect("index.jsp");
            } else {
                intentos++;
                if (intentos == 3) {
                    response.sendRedirect("bloqueado.jsp"); // redirigir a una página de bloqueo
                } else {
                    response.sendRedirect("login.jsp?error=1"); // redirigir a la página de inicio de sesión con un mensaje de error
                }
            }
        }catch (Exception e){
            System.out.println(e);
        }


    }
}
