<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>

<nav class="navbar navbar-expand-lg bg-body-tertiary">
    <div class="container-fluid">
        <a class="navbar-brand" href="index.jsp">Capacitaciones</a>
        <button class="navbar-toggler" type="button"
                data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false"
                aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item"><a class="nav-link " aria-current="page" href="index.jsp">Home</a></li>



        <%

            if (request.getSession().getAttribute("perfil") != null) {

                if(request.getSession().getAttribute("perfil").equals("Administrativo")){%>
                    <li class="nav-item"><a class="nav-link" href="/ejercicioGrupal1_war/servlet-usuario"><b>Usuarios</b></a></li>
                    <li class="nav-item"><a class="nav-link" href="construccion.jsp"><b>Listado Pagos</b></a></li>
                    <li class="nav-item"><a class="nav-link" href="construccion.jsp"><b>Crear Pagos</b></a></li>
                    <li class="nav-item"><a class="nav-link" href="construccion.jsp"><b>Administrar Chequeos</b></a></li>

                <%}
                if(request.getSession().getAttribute("perfil").equals("Cliente")){%>
                    <li class="nav-item"><a class="nav-link" href="contacto.jsp"><b>Contacto</b></a></li>
                    <li class="nav-item"><a class="nav-link" href="/ejercicioGrupal1_war/servlet-capacitacion"><b>Capacitaciones</b></a></li>
                    <li class="nav-item"><a class="nav-link" href="construccion.jsp"><b>Administrar Asistentes</b></a></li>
                    <li class="nav-item"><a class="nav-link" href="construccion.jsp"><b>Gestionar Accidentes</b></a></li>

                <%}
                if(request.getSession().getAttribute("perfil").equals("Profesional")){%>
                    <li class="nav-item"><a class="nav-link" href="construccion.jsp"><b>Listado Visitas</b></a></li>
                    <li class="nav-item"><a class="nav-link" href="construccion.jsp"><b>Responder Checklist</b></a></li>
                    <li class="nav-item"><a class="nav-link" href="construccion.jsp"><b>Listado Asesorías</b></a></li>
                    <li class="nav-item"><a class="nav-link" href="construccion.jsp"><b>Crear Asesoría</b></a></li>
                    <li class="nav-item"><a class="nav-link" href="construccion.jsp"><b>Reportes</b></a></li>
                <%}

        %>
            </ul>
        <form action="servlet-cerrar-sesion" method="POST" class="justify-content-end" role="search">
            <button class="btn btn-outline-success " type="submit">Cerrar Sesión</button>
        </form>
        <%
        } else {%>
            <a class="btn btn-primary justify-content-end end" href="login.jsp"><b>Login</b></a>

        <%
            }
        %>
    </div>
</nav>

