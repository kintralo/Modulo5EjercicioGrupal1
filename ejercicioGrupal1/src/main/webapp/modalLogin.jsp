<div class="modal fade" id="loginModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="exampleModalLabel">Ingreso al sistema</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form action="servlet-capacitacion" method="POST">
                <div class="modal-body">
                    <div class="col-md-12">
                        <label for="lblCodigoCapacitacion" class="form-label">
                            <b>Usuario</b>
                        </label>
                        <input type="txt" class="form-control" id=""
                               name="user" value="" autofocus="autofocus" required>
                        <label for="lblRut" class="form-label"><b>Password</b></label>
                        <input type="password" class="form-control" id="" name="password"
                                required>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                    <button type="submit" class="btn btn-primary">Ingresar</button>
                </div>
            </form>
        </div>
    </div>
</div>
