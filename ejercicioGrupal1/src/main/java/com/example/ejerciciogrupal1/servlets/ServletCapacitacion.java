package com.example.ejerciciogrupal1.servlets;

import com.example.ejerciciogrupal1.models.Capacitacion;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.time.LocalTime;
import java.util.ArrayList;
import java.util.List;


@WebServlet(name = "servletCapacitacion", value = "/servlet-capacitacion")
public class ServletCapacitacion extends HttpServlet {

   private ArrayList<Capacitacion> listaCapacitaciones = new ArrayList<Capacitacion>();

    private static final long serialVersionUID = 1L;
    public ServletCapacitacion() {
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
        /**request.setAttribute("codigoCapacitacion", request.getParameter("txtCodigoCapacitacion"));
        request.setAttribute("Rut", request.getParameter("txtRut"));
        request.setAttribute("Dia", request.getParameter("txtDia"));
        request.setAttribute("Hora", request.getParameter("txtHora"));
        request.setAttribute("duracionCapacitacion", request.getParameter("txtDuracion"));
        request.setAttribute("cantidadAsistentes", request.getParameter("asistentes"));
        request.setAttribute("lugarCapacitacion", request.getParameter("txtLugarCapacitacion"));
       // RequestDispatcher rd = request.getRequestDispatcher("capacitacion.jsp");
        RequestDispatcher rd = request.getRequestDispatcher("listaCapacitaciones.jsp");
        rd.forward(request,  response);

        String dato = request.getParameter("dato");
        listaDatos.add(dato);*/

        int identificador = Integer.parseInt(request.getParameter("txtCodigoCapacitacion"));
        int run = Integer.parseInt(request.getParameter("txtRut"));
        String dia =  request.getParameter("txtDia");
        String horaIngresada = request.getParameter("txtHora");
        LocalTime hora = LocalTime.parse(horaIngresada);
        String lugar = request.getParameter("txtLugarCapacitacion");
        String duracion = request.getParameter("txtDuracion");
        int cantAsistentes = Integer.parseInt(request.getParameter("txtAsistentes"));

        Capacitacion capacitacion = new Capacitacion(identificador, run, dia, hora, lugar, duracion, cantAsistentes);

        listaCapacitaciones.add(capacitacion);

        request.setAttribute("listaCapacitaciones", listaCapacitaciones);
        //RequestDispatcher rd = request.getRequestDispatcher("listaCapacitaciones.jsp");
        //rd.forward(request,  response);// enviar la solicitud y la respuesta al archivo JSP "tabla.jsp"
        request.getRequestDispatcher("listaCapacitaciones.jsp").forward(request, response); // enviar la solicitud y la respuesta al archivo JSP "tabla.jsp"

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

    /**
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    @Override
    protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int identificador = Integer.parseInt(request.getParameter("txtCodigoCapacitacion"));

        // obtener la lista de capacitaciones del alcance de la aplicación
        List<Capacitacion> listaCapacitaciones = (List<Capacitacion>) getServletContext().getAttribute("listaCapacitaciones");

        // eliminar la capacitación correspondiente de la lista
        for (Capacitacion capacitacion : listaCapacitaciones) {
            if (capacitacion.getIdentificador() == identificador ) {
                listaCapacitaciones.remove(capacitacion);
                break;
            }
        }

        // redirigir a tabla.jsp para actualizar la tabla
        response.sendRedirect(request.getContextPath() + "/listaCapacitaciones.jsp");
    }


}
