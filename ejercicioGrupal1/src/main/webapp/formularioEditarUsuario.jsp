<%--
  Created by IntelliJ IDEA.
  User: Pablo
  Date: 13-07-2023
  Time: 20:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<form action="servlet-usuario" method="PUT" class="was-validated" >
    <div class="form-group">
        <label for="lblCodigoUsuario" class="form-label">
            <b>Código usuario</b>
        </label>
    </div>
    <input type="text" class="form-control" id="formEditIdUsuario"
           name="txtId_usuario" value="" disabled="true">
    <div class="form-group">
        <label for="lblNombres" class="form-label">
            <b>Nombres</b>
        </label>
        <input type="text" class="form-control" id="formEditNombreUsuario"
               name="txtNombres" value=""
               required>
        <div class="invalid-feedback">Campo obligatorio</div>
    </div>

    <div class="form-group">
        <label for="lblTipoUsuario" class="form-label">
            <b>Tipo Usuario</b>
        </label>
        <select class="form-select" aria-label="Default select example" name="txtTipoUsuario" id="formEditSelect" >
            <option selected disabled>Selecciones un Usuario</option>
            <option value="Administrativo"><b>Administrativo</b></option>
            <option value="Cliente"><b>Cliente</b></option>
            <option value="Profesional"><b>Profesional</b></option>
        </select>
        <div class="invalid-feedback">Campo obligatorio</div>
    </div>
    <div class="form-group">
        <label for="lblPass" class="form-label">
            <b>Pass</b>
        </label>
        <input type="password" class="form-control" id="formEditPassUsuario"
               name="txtPass" value=""
               required>
        <div class="invalid-feedback">Campo obligatorio</div>
    </div>

    <button type="submit" class="btn btn-primary form-control mt-5">Guardar</button>
</form>
