<%--
  Created by IntelliJ IDEA.
  User: Pablo
  Date: 13-07-2023
  Time: 20:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="ISO-8859-1">
  <title>Formulario Capacitaci�n</title>
  <link
          href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
          rel="stylesheet"
          integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM"
          crossorigin="anonymous">
</head>
<body>
<jsp:include page='header.jsp'>
  <jsp:param name='title' value='Welcome' />
</jsp:include>
<h1 class="mt-3" style='text-align: center'>Formulario
  Capacitaci�n</h1>

<div class="container">
  <div class="row">

    <form action="servlet-capacitacion" method="POST">
      <div class="modal-body">
        <div class="col-md-12">
          <label for="lblCodigoCapacitacion" class="form-label">
            <b>C�digo Capacitaci�n</b>
          </label>
          <input type="number" class="form-control" id=""
                 name="txtCodigoCapacitacion" value="101" autofocus="autofocus"
                 placeholder="Ingrese el c�digo de la Capacitaci�n">
          <label for="lblRut" class="form-label"><b>Rut</b></label>
          <input type="number" class="form-control" id="103988" name="txtRut"
                 placeholder="Ingrese el Rut" value="" required>
          <label for="lblDia" class="form-label">
            <b>D�a</b>
          </label>
          <input type="txt" class="form-control" id="" name="txtDia"
                 placeholder="Ingrese el D�a" value="Lunes" required>
          <label for="lblLugarCapacitacion" class="form-label">
            <b>Lugar de la capacitaci�n</b>
          </label>
          <textarea class="form-control" id="exampleFormControlTextarea1"
                    name="txtLugarCapacitacion" rows="3" placeholder="Ingrese el lugar de la Capacitaci�n"
                    value="Aqu� es la capacitaci�n"
                    required>
                            </textarea>
          <label for="lblHora" class="form-label">
            <b>Hora:</b>
          </label>
          <input type="time" class="form-control" id="hora" value="11:30" name="txtHora" required>
          <label for="lblDuracion" class="form-label">
            <b>Duraci�n de la capacitaci�n:</b>
          </label>
          <input type="time" class="form-control" id="duracion" name="txtDuracion" value="01:00" required>
          <label for="lblAsistentes" class="form-label">
            <b>Cantidad de asistentes:</b>
          </label>
          <input type="number" class="form-control" id="asistentes" name="txtAsistentes" value="12" required>

        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
        <button type="submit" class="btn btn-primary">Guardar</button>
      </div>
    </form>
  </div>
</div>

<jsp:include page='footer.jsp'>
  <jsp:param name='title' value='Welcome' />
</jsp:include>
<script
        src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
        integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
        crossorigin="anonymous"></script>
<script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"
        integrity="sha384-fbbOQedDUMZZ5KreZpsbe1LCZPVmfTnH7ois6mU1QK+m14rQ1l2bGBq41eYeM/fS"
        crossorigin="anonymous"></script>

</body>
</html>
