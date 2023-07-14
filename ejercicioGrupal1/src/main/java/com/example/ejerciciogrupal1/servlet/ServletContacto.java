package com.example.ejerciciogrupal1.servlet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
@WebServlet(name = "servletContacto", value = "/servlet-contacto")
public class ServletContacto extends HttpServlet {

    public ServletContacto() {
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
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

        request.setAttribute("nombreSalida", request.getParameter("txtNombre"));
        request.setAttribute("emailSalida", request.getParameter("txtEmail"));
        request.setAttribute("mensajeSalida", request.getParameter("txtMessage"));
        RequestDispatcher rd = request.getRequestDispatcher("contacto.jsp");
        rd.forward(request,  response);
    }
}
