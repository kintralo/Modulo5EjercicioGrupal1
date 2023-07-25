<%--
  Created by IntelliJ IDEA.
  User: Pablo
  Date: 13-07-2023
  Time: 20:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<form action="servlet-capacitacion" method="POST" class="was-validated">
    <div class="form-group">
        <label for="lblRut" class="form-label"><b>Rut</b></label>
        <input type="number" class="form-control" id="" name="txtRut"
               placeholder="Ingrese el Rut" value="103988" required>
        <div class="invalid-feedback">Campo obligatorio</div>
    </div>
    <div class="form-group">
        <label for="lblNombres" class="form-label">
            <b>Nombres</b>
        </label>
        <input type="text" class="form-control" id=""
               name="txtNombres" value="Anastasia Elizabeth " autofocus="autofocus"
               required>
        <div class="invalid-feedback">Campo obligatorio</div>
    </div>
    <div class="form-group">
        <label for="lblApellidos" class="form-label">
            <b>Apellidos</b>
        </label>
        <input type="txt" class="form-control" id="" name="txtDia"
               placeholder="Ingrese el Día" value="Vásquez Sokolov" required>
        <div class="invalid-feedback">Campo obligatorio</div>
    </div>

    <div class="form-group">
        <label for="lblFechaNacimiento" class="form-label">
            <b>Fecha Nacimiento</b>
        </label>
        <input type="date" class="form-control" id=""
               name="txtFechaNacimiento" required>
        <div class="invalid-feedback">Campo obligatorio</div>
    </div>

    <div class="form-group">
        <label for="lblTipoUsuario" class="form-label">
            <b>Tipo Usuario</b>
        </label>
        <select class="form-select" aria-label="Default select example" name="txtTipoUsuario">
            <option selected>Selecciones un Usuario</option>
            <option value="Administrativo"><b>Administrativo</b></option>
            <option value="Cliente"><b>Cliente</b></option>
            <option value="Profesional"><b>Profesional</b></option>
        </select>
        <div class="invalid-feedback">Campo obligatorio</div>
    </div>

    <button type="submit" class="btn btn-primary form-control mt-5">Guardar</button>
</form>
