<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script>
function validarNumero(e) {
var key;
if(window.event) 
	{
	key = e.keyCode;
	}
else if(e.which) 
	{
	key = e.which;
	}

if (key < 48 || key > 57)
    {
    if(key == 46 || key == 8) 
        { return true; }
    else 
        { return false; }
    }
return true;
}
</script>
<div class="panel-body">
	<div class="row">
		<div class="col-md-4">
			<div class="form-group">
				<label for="txt-calle" class="required">Calle</label> <input
					type="text" id="txt-calle" placeholder="Calle" name="txt-calle"
					class="form-control" required="required"
					data-bind="value: direccion.calle" />
			</div>
		</div>

		<div class="col-md-4">
			<div class="form-group">
				<label for="txt-no-exterior" class="required">No. Exterior:</label>
				<input type="text" placeholder="No. Exterior" class="form-control"
					id="txt-no-exterior" name="txt-no-exterior" required="required"
					data-bind="value: direccion.noExterior" />
			</div>
		</div>

		<div class="col-md-4">
			<div class="form-group">
				<label for="txt-no-interior">No. Interior:</label> <input
					type="text" placeholder="No. Interior" class="form-control"
					id="txt-no-interior" name="txt-no-interior"
					data-bind="value: direccion.noInterior" />
			</div>
		</div>
	</div>

	<div class="row">
		<div class="col-md-4">
			<div class="form-group">
				<label for="txt-pais" class="required">País:</label> <input
					type="text" placeholder="País" class="form-control" id="txt-pais"
					name="txt-pais" required="required"
					data-bind="value: direccion.nombrePais">
			</div>
		</div>

		<div class="col-md-4">
			<div class="form-group">
				<label for="txt-estado" class="required">Estado/Ciudad:</label> <input
					type="text" placeholder="Estado" class="form-control"
					id="txt-estado" name="txt-estado" required="required"
					data-bind="value: direccion.nombreEstado" />
			</div>
		</div>

		<div class="col-md-4">
			<div class="form-group">
				<label for="txt-municipio" class="required">Del./Municipio:</label>
				<input type="text" placeholder="Municipio" class="form-control"
					id="txt-municipio" name="txt-municipio" required="required"
					data-bind="value: direccion.nombreMunicipio" />
			</div>
		</div>
	</div>

	<div class="row">
		<div class="col-md-4">
			<div class="form-group">
				<label for="txt-colonia" class="required">Colonia:</label> <input
					type="text" id="txt-colonia" name="txt-colonia"
					placeholder="Colonia" class="form-control" required="required"
					data-bind="value: direccion.nombreColonia" />
			</div>
		</div>

		<div class="col-md-4">
			<div class="form-group">
				<label for="txt-codigo-postal" class="required">Código
					Postal:</label> <input type="text" placeholder="Código Postal"
					onkeypress="javascript:return validarNumero(event)"
					id="txt-codigo-postal" name="txt-codigo-postal" pattern="[0-9]{5}"
					class="form-control" maxlength="5" required="required"
					data-bind="value: direccion.codigoPostal" />
			</div>
		</div>
		<c:if test="${not empty param.tipo and param.tipo eq 'cliente'}">
			<div class="col-md-4">
				<div class="form-group">
					<label for="txt-localidad" class="required">Localidad:</label> <input
						type="text" id="txt-localidad" name="txt-localidad"
						placeholder="Localidad" class="form-control" required="required"
						data-bind="value: direccion.localidad" />
				</div>
			</div>
		</c:if>
	</div>

	<div class="row">
		<div class="col-md-12">
			<div class="form-group">
				<label for="txt-referencias">Referencias:</label>
				<textarea rows="3" cols="10" placeholder="Referencias"
					class="form-control" id="txt-referencias"
					data-bind="value: direccion.referencias"></textarea>
			</div>
		</div>
	</div>
</div>
