<%--
  Created by IntelliJ IDEA.
  User: Pablo
  Date: 13-07-2023
  Time: 20:54
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Contacto</title>

    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM"
            crossorigin="anonymous">
    <!--link de bootstrap y de dataTable-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.4/css/jquery.dataTables.css" />
    <link rel="stylesheet" href="./css/style.css">
    <%
        session = request.getSession();
        if (session == null) {
            response.sendRedirect("index.jsp");
        }%>
</head>
<body>

<jsp:include page='header.jsp'>
    <jsp:param name='title' value='Welcome'/>
</jsp:include>
<jsp:include page='modalCapacitacion.jsp' flush="true"/>


<div class="container mt-3">
    <div class="row">
        <div class="col-md-12">
            <button type="button" class="btn btn-primary float-end" data-bs-toggle="modal"
                    data-bs-target="#crearCapacitacion">
                Crear Capacitación
            </button>
        </div>
    </div>
</div>

<div class="container mt-3">
    <div class="row">
        <h1 class="mt-3" style='text-align: center'>Listado de Capacitaciones</h1>
        <div class="table-responsive">
            <table id="tablaCapacitaciones" class="table" action="servlet-capacitacion" method="DELETE">
                <thead>
                <tr>
                    <th scope="col">Codigo Capacitación</th>
                    <th scope="col">Rut</th>
                    <th scope="col">Día</th>
                    <th scope="col">Hora</th>
                    <th scope="col">Lugar Capacitación</th>
                    <th scope="col">Duración Capacitación</th>
                    <th scope="col">Cantidad Asistentes</th>
                    <th scope="col"><b>Botón</b></th>
                    <th scope="col"><b>Botón</b></th>
                </tr>
                </thead>
                <tbody>

                <c:forEach items="${listaCapacitaciones}" var="capacitacion">
                    <tr>
                        <td>${capacitacion.identificador}</td>
                        <td>${capacitacion.rut}</td>
                        <td>${capacitacion.dia}</td>
                        <td>${capacitacion.hora}</td>
                        <td>${capacitacion.lugar}</td>
                        <td>${capacitacion.duracion}</td>
                        <td>${capacitacion.cantAsistentes}</td>
                        <td>
                            <button type="button" class="btn btn-warning ">
                                <b>Actualizar</b>
                            </button>
                        </td>

                        <td>
                            <input type="button" class="btn btn-danger " value="Eliminar"
                                   onclick="eliminarCapacitacion('${capacitacion.identificador}')"/>
                        </td>
                    </tr>
                </c:forEach>

                </tbody>
            </table>


            <script>
                function eliminarCapacitacion(identificador) {
                    if (confirm('¿Está seguro que desea eliminar la capacitación ' + identificador + '?')) {
                        // hacer una llamada AJAX para eliminar la capacitación de la lista
                        // por ejemplo, podríamos enviar una solicitud POST al servlet que maneja la eliminación de capacitaciones
                        // después de eliminar la capacitación, volver a cargar la página para actualizar la tabla
                        window.location.reload();
                    }
                }
            </script>
        </div>
    </div>
</div>

</br>
<div class="container">
    <div class="row">

    </div>
</div>

<jsp:include page='footer.jsp'>
    <jsp:param name='title' value='Welcome'/>
</jsp:include>


<script>
    $(document).ready(function () {
        // Inicializar DataTable
        $(".table").DataTable();
    });
</script>

<!--Script de JQuery-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<!--Script del plugin dataTable-->
<script src="https://cdn.datatables.net/1.13.4/js/jquery.dataTables.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
        integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
        integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
        crossorigin="anonymous"></script>

</body>
</html>
<script>
    const myModal = document.getElementById('myModal')
    const myInput = document.getElementById('myInput')

    myModal.addEventListener('shown.bs.modal', () => {
        myInput.focus()
    })
</script>
<script>
    $(document).ready(function () {
        // Inicializar DataTable
        $(".table").DataTable();
    });
</script>
