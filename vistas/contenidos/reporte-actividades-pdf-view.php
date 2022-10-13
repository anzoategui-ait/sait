<?php 
 if ($_SESSION['privilegio_tor'] < 1 || $_SESSION['privilegio_tor'] > 3 || $_SESSION['tipo_tor']==3 || $_SESSION['tipo_tor']==4) {
        echo $lc->forzar_cierre_sesion_controlador();
        exit();
    }
    
    //Obtener Actividades
    require_once "./controladores/actividadControlador.php";
    $ins_actividad = new actividadControlador();
?>
<!-- Agregar encabezado para la vista -->
<div class="panel box-shadow-none content-header">
    <div class="panel-body">
        <div class="col-md-12">
            <h3 class="animated fadeInLeft">Reportes / Actividades</h3>
            <p class="animated fadeInDown">
                Totalizacion de las actividades dentro de un rango, seleccionando su estado, todas o una actividad en especifico, el formato final es de tipo .pdf.
            </p>
        </div>
    </div>
</div>
<!-- Fin agregar encabezado para la vista -->

<!-- Agregar logica para poder seleccionar una encuesta en especifico y seleccionar las fechas especificas -->
<div class="container-fluid">
    <form class="form-neon" action="<?php echo SERVERURL; ?>reporte/reporteactividadespdf.php" method="POST" data-form="save" autocomplete="off">

        <fieldset>
            <legend><i class="fa fa-check-square-o"></i> &nbsp; Información del reporte</legend>
            <div class="container-fluid">
                <div class="row">

                    <div class="col-12 col-md-6">
                        <div class="form-group">
                            <label for="" class="bmd-label-floating" style="color:#1F618D;"><b>ACTIVIDADES</b></label>
                            <select class="form-control" name="actividad_id" id="actividad_id" required="">
                                <option value="<?php echo $ins_actividad->encryption(0);?>" selected="">Todas</option>
                                <!-- Obtener todas las encuestas registradas en el sistema -->
                                <?php
                                                                
                                $rs_actividad = $ins_actividad->datos_actividad_controlador("Reporte", 0);
                                if($rs_actividad->rowCount()>0){
                                    $datos_actividad = $rs_actividad->fetchAll();
                                    
                                    foreach($datos_actividad as $rows){
                                        echo '<option value="'.$ins_actividad->encryption($rows['actividad_id']).'">'.$rows['actividad_nombre'].'</option>';
                                    }
                                }
                                ?>
                                
                            </select>
                        </div>
                    </div>
                    
                    <!-- Municipio -->
                    <div class="col-12 col-md-6">
                        <div class="form-group">
                            <label for="actividad_estado" class="bmd-label-floating" style="color:#1F618D;"><b>ESTADO ACTIVIDAD</b></label>
                            <select class="form-control" name="actividad_estado" id="actividad_estado">
                                <option value="<?php echo $ins_actividad->encryption("todos");?>">Todos</option>
                                <option value="<?php echo $ins_actividad->encryption("sin asignar");?>">PENDIENTES</option>
                                <option value="<?php echo $ins_actividad->encryption("asignado");?>">PROCESANDO</option>
                                <option value="<?php echo $ins_actividad->encryption("finalizado");?>">FINALIZADOS</option>
                               
                            </select>
                        </div>
                    </div>


                    <div class="col-12 col-md-6">
                        <div class="form-group">
                            <label for="fecha_inicio" class="bmd-label-floating" style="color:#1F618D;"><b>FECHA INICIAL</b></label>
                            <input type="date"  class="form-control" name="fecha_inicio" value="<?php echo date("Y-m-d"); ?>" id="fecha_inicio" required="">
                        </div>
                    </div>

                    <div class="col-12 col-md-6">
                        <div class="form-group">
                            <label for="fecha_final" class="bmd-label-floating" style="color:#1F618D;"><b>FECHA FINAL</b></label>
                            <input type="date"  class="form-control" name="fecha_final" value="<?php echo date("Y-m-d"); ?>" id="fecha_final" required="">
                        </div>
                    </div>

                </div>
            </div>
        </fieldset>
        <p class="text-center" style="margin-top: 40px;">
            <button type="reset" class="btn btn-round btn-warning btn-sm"><i class="fa fa-trash"></i> &nbsp; LIMPIAR</button>
            &nbsp; &nbsp;
            <button type="submit" class="btn btn-round btn-primary btn-sm"><i class="fa fa-save"></i> &nbsp; GENERAR REPORTE</button>
        </p>
    </form>


    <form class="form-neon" action="<?php echo SERVERURL; ?>reporte/listadoactividadespdf.php" method="POST" data-form="save" autocomplete="off">
        <p class="text-center" style="margin-top: 40px;">
            
            <button type="submit" class="btn btn-round btn-primary btn-sm"><i class="fa fa-save"></i> &nbsp; LISTADO DE ACTIVIDADES</button>
        </p>
    </form>


</div>