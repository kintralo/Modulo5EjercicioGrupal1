package com.example.ejerciciogrupal1.servlet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
@WebServlet(name = "servletCapacitacion", value = "/servlet-capacitacion")
public class ServletCapacitacion extends HttpServlet {

    private static final long serialVersionUID = 1L;
    public ServletCapacitacion() {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("codigoCapacitacion", request.getParameter("txtCodigoCapacitacion"));
        request.setAttribute("Rut", request.getParameter("txtRut"));
        request.setAttribute("Dia", request.getParameter("txtDia"));
        request.setAttribute("Hora", request.getParameter("txtHora"));
        request.setAttribute("duracionCapacitacion", request.getParameter("txtDuracion"));
        request.setAttribute("cantidadAsistentes", request.getParameter("asistentes"));
        request.setAttribute("lugarCapacitacion", request.getParameter("txtLugarCapacitacion"));
        RequestDispatcher rd = request.getRequestDispatcher("capacitacion.jsp");
        rd.forward(request,  response);
    }

    /**
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
