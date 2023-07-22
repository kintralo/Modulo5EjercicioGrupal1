<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="index.jsp">Capacitaciones</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item"><a class="nav-link active"
                                    aria-current="page" href="index.jsp">Home</a></li>
            <li class="nav-item"><a class="nav-link"
                                    href="capacitacion.jsp"><b>Capacitacion</b></a></li>
            <li class="nav-item"><a class="nav-link" href="contacto.jsp"><b>Contacto</b></a>
            </li>
            <li class="nav-item"><a class="nav-link" href="listaCapacitaciones.jsp"><b>Capacitaciones</b></a>
            </li>
        </ul>
        <%

            if (request.getSession() != null) {

        %>
        <form action="servlet-cerrar-sesion" method="POST" class="d-flex" role="search">
            <button class="btn btn-outline-success" type="submit">Cerrar Sesión</button>
        </form>
        <%
        } else {%>
        <button type="button" class="btn btn-primary float-end" data-bs-toggle="modal" data-bs-target="#loginModal">
            Login
        </button>
        <%
            }
        %>
    </div>
</nav>

