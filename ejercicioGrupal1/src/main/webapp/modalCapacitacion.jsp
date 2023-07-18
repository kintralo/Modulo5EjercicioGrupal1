<div class="modal fade" id="crearCapacitacion" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="exampleModalLabel">Ingreso Capacitaciones</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form action="servlet-capacitacion" method="POST">
                <div class="modal-body">
                    <div class="col-md-12">
                            <label for="lblCodigoCapacitacion" class="form-label">
                                <b>Código Capacitación</b>
                            </label>
                            <input type="number" class="form-control" id=""
                                   name="txtCodigoCapacitacion" value="" autofocus="autofocus"
                                   placeholder="Ingrese el código de la Capacitación">
                            <label for="lblRut" class="form-label"><b>Rut</b></label>
                            <input type="number" class="form-control" id="" name="txtRut"
                                   placeholder="Ingrese el Rut" value="" required>
                            <label for="lblDia" class="form-label">
                                <b>Día</b>
                            </label>
                            <input type="txt" class="form-control" id="" name="txtDia"
                                   placeholder="Ingrese el Día" value="Lunes" required>
                            <label for="lblLugarCapacitacion" class="form-label">
                                <b>Lugar de la capacitación</b>
                            </label>
                            <textarea class="form-control" id="exampleFormControlTextarea1"
                                      name="txtLugarCapacitacion" rows="3" placeholder="Ingrese el lugar de la Capacitación"
                                      value="Aquí es la capacitación"
                                      required>
                            </textarea>
                            <label for="lblHora" class="form-label">
                                <b>Hora:</b>
                            </label>
                            <input type="time" class="form-control" id="hora" value="" name="txtHora" required>
                            <label for="lblDuracion" class="form-label">
                                <b>Duración de la capacitación:</b>
                            </label>
                            <input type="time" class="form-control" id="duracion" name="txtDuracion" value="" required>
                            <label for="lblAsistentes" class="form-label">
                                <b>Cantidad de asistentes:</b>
                            </label>
                            <input type="number" class="form-control" id="asistentes" name="txtAsistentes" value="" required>

                    </div>
                </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                <button type="submit" class="btn btn-primary">Guardar</button>
            </div>
            </form>
        </div>
    </div>
</div>







