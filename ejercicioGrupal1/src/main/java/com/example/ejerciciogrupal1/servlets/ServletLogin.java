package com.example.ejerciciogrupal1.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet(name = "servletLogin", value = "/servlet-login")
public class ServletLogin extends HttpServlet {
    private int intentos = 0;
    private HttpSession session;
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
        String usuario = request.getParameter("txtUserName");
        String password = request.getParameter("txtPassword");
        String usuarioIngreso= "admin";
        String usuarioPassword= "1234";

        if (usuario.equals(usuarioIngreso) && password.equals(usuarioPassword)) {
            intentos = 0; // reiniciar el contador
            session = request.getSession();
            session.setAttribute("usuario",request.getParameter("admin"));
            session.setAttribute("sesion",request.getParameter("true"));
            response.sendRedirect("contacto.jsp");
        } else {
            intentos++;
            if (intentos == 3) {
                response.sendRedirect("bloqueado.jsp"); // redirigir a una página de bloqueo
            } else {
                response.sendRedirect("login.jsp?error=1"); // redirigir a la página de inicio de sesión con un mensaje de error
            }
        }

    }
}
