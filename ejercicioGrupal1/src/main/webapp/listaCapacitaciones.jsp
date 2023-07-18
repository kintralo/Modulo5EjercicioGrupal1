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
</head>
<body>

<jsp:include page='header.jsp'>
    <jsp:param name='title' value='Welcome'/>
</jsp:include>



<div class="container mt-3">
    <div class="row">
        <div class="col-md-12">
            <button type="button" class="btn btn-primary float-end" data-bs-toggle="modal" data-bs-target="#crearCapacitacion">
                Crear Capacitaci�n
            </button>
        </div>
        <div class="col-md-12">
            <h1 class="mt-3" style='text-align: center'>Listado de Capacitaciones</h1>
            <div class="table-responsive">
                <table id="tablaCapacitaciones" class="table" action="servlet-capacitacion" method="DELETE">
                    <thead>
                    <tr>
                        <th scope="col">Codigo Capacitaci�n</th>
                        <th scope="col">Rut</th>
                        <th scope="col">D�a</th>
                        <th scope="col">Hora</th>
                        <th scope="col">Lugar Capacitaci�n</th>
                        <th scope="col">Duraci�n Capacitaci�n</th>
                        <th scope="col">Cantidad Asistentes</th>
                        <th scope="col"><b>Bot�n</b></th>
                        <th scope="col"><b>Bot�n</b></th>
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
                        if (confirm('�Est� seguro que desea eliminar la capacitaci�n ' + identificador + '?')) {
                            // hacer una llamada AJAX para eliminar la capacitaci�n de la lista
                            // por ejemplo, podr�amos enviar una solicitud POST al servlet que maneja la eliminaci�n de capacitaciones
                            // despu�s de eliminar la capacitaci�n, volver a cargar la p�gina para actualizar la tabla
                            window.location.reload();
                        }
                    }
                </script>
            </div>
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

<jsp:include page='modalCapacitacion.jsp' flush="true"/>



<script
        src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
        integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
        crossorigin="anonymous"></script>
<script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"
        integrity="sha384-fbbOQedDUMZZ5KreZpsbe1LCZPVmfTnH7ois6mU1QK+m14rQ1l2bGBq41eYeM/fS"
        crossorigin="anonymous"></script>
<script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
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