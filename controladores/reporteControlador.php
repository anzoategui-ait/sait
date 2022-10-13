<?php

if ($peticionAjax) {
    require_once "../modelos/reporteModelo.php";
} else {
    require_once "./modelos/reporteModelo.php";
}

class reporteControlador extends reporteModelo {

     /** Controlador para obtener la totalizacion de la solicitudes registradas en el sistema */
     public function obtener_totalizacion_gestion($fecha_inicio, $fecha_fin){
        $fechaInicio = $fecha_inicio;
        $fechaFin = $fecha_fin;

        //Siempre agregarle un dia mas a la fecha fin
        $nueva_fecha_fin = explode("-",$fechaFin);
        $dia =  $nueva_fecha_fin[2];

        //consultar que mes es cuyo numero sea 28
        if($nueva_fecha_fin[1] == 2){
            //Consultar que el dia maximo sea el dia 28
            if($dia==28){
                $fechaFin = $nueva_fecha_fin[0] . "-03-01";
            }else{
                $dia = $dia + 1;
                $fechaFin = $nueva_fecha_fin[0] . "-" . $nueva_fecha_fin[1] . "-" .  $dia; 
            }
        }
        elseif($nueva_fecha_fin[1] == 1 || $nueva_fecha_fin[1] == 3 || $nueva_fecha_fin[1] == 5 || $nueva_fecha_fin[1] == 7 || $nueva_fecha_fin[1] == 8 || $nueva_fecha_fin[1] == 10 || $nueva_fecha_fin[1] == 12){
            if($dia==31){
                
                //consultar el mes si es doce
                if($nueva_fecha_fin[1]==12){
                    $fechaFin = $nueva_fecha_fin[0] + 1 . "-01-01";
                }else{
                    $fechaFin = $nueva_fecha_fin[0] . "-" . $nueva_fecha_fin[1] + 1 . "-01";
                }

            }else{
                $dia = $dia + 1;
                $fechaFin = $nueva_fecha_fin[0] . "-" . $nueva_fecha_fin[1] . "-" .  $dia; 
            }
        }
        elseif($nueva_fecha_fin[1] == 4 || $nueva_fecha_fin[1] == 6 || $nueva_fecha_fin[1] == 9 || $nueva_fecha_fin[1] == 11){
            if($dia==30){
                $fechaFin = $nueva_fecha_fin[0] . "-" . $nueva_fecha_fin[1] + 1 . "-01";
            }
            else{
                $dia = $dia + 1;
                $fechaFin = $nueva_fecha_fin[0] . "-" . $nueva_fecha_fin[1] . "-" .  $dia; 
            }
        }
        
       //Preparo los datos para la consulta
        //Creo mi array de datos para hacer la consulta
            $datos_totalizacion = [
                "Inicio" => $fechaInicio,
                "Fin" => $fechaFin
            ];
            //Obtener resultados
            $solicitudes = reporteModelo::obtener_totalizacion_modelo($datos_totalizacion);
            
            return $solicitudes;  
    }
    
    /** Controlador para obtener los datos de la solicitud **/
    public function datos_solicitud_controlador($tipo, $id) {
        $tipo = mainModel::limpiar_cadena($tipo);

        $id = mainModel::decryption($id);
        $id = mainModel::limpiar_cadena($id);

        return reporteModelo::datos_solicitud_modelo($tipo, $id);
    } /*Fin Controlador obtener datos*/
    
    //Controlador para crear la fecha actual del sistema
    public function crear_fecha_hora() {
        return mainModel::crear_fecha();
    }
    //Fin del Controlador
    
    //Controlador para desencriptar un valor
    public function descifrar($valor){
        $rs = mainModel::decryption($valor);
        return $rs;
    }
    //Fin del Controlador
    
    //Controlador para obtener los mantenimiento realizados por activo
     //Controlador para obtener las actividades realizadas por operador.
    public function obtener_mantenimiento_activo_controlador ($tipo, $activo, $actividad, $fecha_inicio, $fecha_fin){
        $fechaInicio = $fecha_inicio;
        $fechaFin = $fecha_fin;

        //Siempre agregarle un dia mas a la fecha fin
        $nueva_fecha_fin = explode("-",$fechaFin);
        $dia =  $nueva_fecha_fin[2];

        //consultar que mes es cuyo numero sea 28
        if($nueva_fecha_fin[1] == 2){
            //Consultar que el dia maximo sea el dia 28
            if($dia==28){
                $fechaFin = $nueva_fecha_fin[0] . "-03-01";
            }else{
                $dia = $dia + 1;
                $fechaFin = $nueva_fecha_fin[0] . "-" . $nueva_fecha_fin[1] . "-" .  $dia; 
            }
        }
        elseif($nueva_fecha_fin[1] == 1 || $nueva_fecha_fin[1] == 3 || $nueva_fecha_fin[1] == 5 || $nueva_fecha_fin[1] == 7 || $nueva_fecha_fin[1] == 8 || $nueva_fecha_fin[1] == 10 || $nueva_fecha_fin[1] == 12){
            if($dia==31){
                
                //consultar el mes si es doce
                if($nueva_fecha_fin[1]==12){
                    $fechaFin = $nueva_fecha_fin[0] + 1 . "-01-01";
                }else{
                    $fechaFin = $nueva_fecha_fin[0] . "-" . $nueva_fecha_fin[1] + 1 . "-01";
                }

            }else{
                $dia = $dia + 1;
                $fechaFin = $nueva_fecha_fin[0] . "-" . $nueva_fecha_fin[1] . "-" .  $dia; 
            }
        }
        elseif($nueva_fecha_fin[1] == 4 || $nueva_fecha_fin[1] == 6 || $nueva_fecha_fin[1] == 9 || $nueva_fecha_fin[1] == 11){
            if($dia==30){
                $fechaFin = $nueva_fecha_fin[0] . "-" . $nueva_fecha_fin[1] + 1 . "-01";
            }
            else{
                $dia = $dia + 1;
                $fechaFin = $nueva_fecha_fin[0] . "-" . $nueva_fecha_fin[1] . "-" .  $dia; 
            }
        }
       
       //Preparo los datos para la consulta
        //Creo mi array de datos para hacer la consulta
            $datos_actividades = [
                "Inicio" => $fechaInicio,
                "Fin" => $fechaFin,
                "IDActivo" => $activo,
                "IDActividad" => $actividad
            ];
            //Obtener resultados
            $actividades = reporteModelo::obtener_mantenimiento_activo_modelo($tipo, $datos_actividades);
            
            return $actividades;
        
    }
    
    
     public function obtener_feedback_controlador ($tipo, $solucion, $tiempo, $fecha_inicio, $fecha_fin){
        $fechaInicio = $fecha_inicio;
        $fechaFin = $fecha_fin;

        //Siempre agregarle un dia mas a la fecha fin
        $nueva_fecha_fin = explode("-",$fechaFin);
        $dia =  $nueva_fecha_fin[2];

        //consultar que mes es cuyo numero sea 28
        if($nueva_fecha_fin[1] == 2){
            //Consultar que el dia maximo sea el dia 28
            if($dia==28){
                $fechaFin = $nueva_fecha_fin[0] . "-03-01";
            }else{
                $dia = $dia + 1;
                $fechaFin = $nueva_fecha_fin[0] . "-" . $nueva_fecha_fin[1] . "-" .  $dia; 
            }
        }
        elseif($nueva_fecha_fin[1] == 1 || $nueva_fecha_fin[1] == 3 || $nueva_fecha_fin[1] == 5 || $nueva_fecha_fin[1] == 7 || $nueva_fecha_fin[1] == 8 || $nueva_fecha_fin[1] == 10 || $nueva_fecha_fin[1] == 12){
            if($dia==31){
                
                //consultar el mes si es doce
                if($nueva_fecha_fin[1]==12){
                    $fechaFin = $nueva_fecha_fin[0] + 1 . "-01-01";
                }else{
                    $fechaFin = $nueva_fecha_fin[0] . "-" . $nueva_fecha_fin[1] + 1 . "-01";
                }

            }else{
                $dia = $dia + 1;
                $fechaFin = $nueva_fecha_fin[0] . "-" . $nueva_fecha_fin[1] . "-" .  $dia; 
            }
        }
        elseif($nueva_fecha_fin[1] == 4 || $nueva_fecha_fin[1] == 6 || $nueva_fecha_fin[1] == 9 || $nueva_fecha_fin[1] == 11){
            if($dia==30){
                $fechaFin = $nueva_fecha_fin[0] . "-" . $nueva_fecha_fin[1] + 1 . "-01";
            }
            else{
                $dia = $dia + 1;
                $fechaFin = $nueva_fecha_fin[0] . "-" . $nueva_fecha_fin[1] . "-" .  $dia; 
            }
        }

       
       //Preparo los datos para la consulta
        //Creo mi array de datos para hacer la consulta
            $datos_actividades = [
                "Inicio" => $fechaInicio,
                "Fin" => $fechaFin,
                "IDSolucion" => $solucion,
                "IDTiempo" => $tiempo
            ];
            //Obtener resultados
            $actividades = reporteModelo::obtener_feedback_modelo($tipo, $datos_actividades);
            
            return $actividades;
    }
    
    
    //Controlador para obtener las actividades realizadas por operador.
    public function obtener_actividad_operador_controlador ($tipo, $usuario, $actividad, $fecha_inicio, $fecha_fin){
        $fechaInicio = $fecha_inicio;
        $fechaFin = $fecha_fin;

      //Siempre agregarle un dia mas a la fecha fin
      $nueva_fecha_fin = explode("-",$fechaFin);
      $dia =  $nueva_fecha_fin[2];

      //consultar que mes es cuyo numero sea 28
      if($nueva_fecha_fin[1] == 2){
          //Consultar que el dia maximo sea el dia 28
          if($dia==28){
              $fechaFin = $nueva_fecha_fin[0] . "-03-01";
          }else{
              $dia = $dia + 1;
              $fechaFin = $nueva_fecha_fin[0] . "-" . $nueva_fecha_fin[1] . "-" .  $dia; 
          }
      }
      elseif($nueva_fecha_fin[1] == 1 || $nueva_fecha_fin[1] == 3 || $nueva_fecha_fin[1] == 5 || $nueva_fecha_fin[1] == 7 || $nueva_fecha_fin[1] == 8 || $nueva_fecha_fin[1] == 10 || $nueva_fecha_fin[1] == 12){
          if($dia==31){
              
              //consultar el mes si es doce
              if($nueva_fecha_fin[1]==12){
                  $fechaFin = $nueva_fecha_fin[0] + 1 . "-01-01";
              }else{
                  $fechaFin = $nueva_fecha_fin[0] . "-" . $nueva_fecha_fin[1] + 1 . "-01";
              }

          }else{
              $dia = $dia + 1;
              $fechaFin = $nueva_fecha_fin[0] . "-" . $nueva_fecha_fin[1] . "-" .  $dia; 
          }
      }
      elseif($nueva_fecha_fin[1] == 4 || $nueva_fecha_fin[1] == 6 || $nueva_fecha_fin[1] == 9 || $nueva_fecha_fin[1] == 11){
          if($dia==30){
              $fechaFin = $nueva_fecha_fin[0] . "-" . $nueva_fecha_fin[1] + 1 . "-01";
          }
          else{
              $dia = $dia + 1;
              $fechaFin = $nueva_fecha_fin[0] . "-" . $nueva_fecha_fin[1] . "-" .  $dia; 
          }
      }
       
       //Preparo los datos para la consulta
        //Creo mi array de datos para hacer la consulta
            $datos_actividades = [
                "Inicio" => $fechaInicio,
                "Fin" => $fechaFin,
                "IDUsuario" => $usuario,
                "IDActividad" => $actividad
            ];
            //Obtener resultados
            $actividades = reporteModelo::contador_actividades_modelo($tipo, $datos_actividades);
            
            return $actividades;
        
    }
    
    //Controlador para obtener los activos relacionados a los usuarios.
    public function obtener_activo_controlador ($tipo, $usuario, $activo){
      
       //Preparo los datos para la consulta
        //Creo mi array de datos para hacer la consulta
            $datos_activos = [
                "IDUsuario" => $usuario,
                "IDActividad" => $activo
            ];
            //Obtener resultados
            $res = reporteModelo::obtener_activo_modelo($tipo, $datos_activos);
            
            return $res;
        
    }

    //Controlador para obtener los activos relacionados a los usuarios.
    public function obtener_activo_historico_controlador ($tipo, $usuario, $activo, $fecha_inicio, $fecha_fin){
      
        //Siempre agregarle un dia mas a la fecha fin
        $nueva_fecha_fin = explode("-",$fecha_fin);
        $dia =  $nueva_fecha_fin[2];

        //consultar que mes es cuyo numero sea 28
        if($nueva_fecha_fin[1] == 2){
            //Consultar que el dia maximo sea el dia 28
            if($dia==28){
                $fechaFin = $nueva_fecha_fin[0] . "-03-01";
            }else{
                $dia = $dia + 1;
                $fechaFin = $nueva_fecha_fin[0] . "-" . $nueva_fecha_fin[1] . "-" .  $dia; 
            }
        }
        elseif($nueva_fecha_fin[1] == 1 || $nueva_fecha_fin[1] == 3 || $nueva_fecha_fin[1] == 5 || $nueva_fecha_fin[1] == 7 || $nueva_fecha_fin[1] == 8 || $nueva_fecha_fin[1] == 10 || $nueva_fecha_fin[1] == 12){
            if($dia==31){
                
                //consultar el mes si es doce
                if($nueva_fecha_fin[1]==12){
                    $fechaFin = $nueva_fecha_fin[0] + 1 . "-01-01";
                }else{
                    $fechaFin = $nueva_fecha_fin[0] . "-" . $nueva_fecha_fin[1] + 1 . "-01";
                }

            }else{
                $dia = $dia + 1;
                $fechaFin = $nueva_fecha_fin[0] . "-" . $nueva_fecha_fin[1] . "-" .  $dia; 
            }
        }
        elseif($nueva_fecha_fin[1] == 4 || $nueva_fecha_fin[1] == 6 || $nueva_fecha_fin[1] == 9 || $nueva_fecha_fin[1] == 11){
            if($dia==30){
                $fechaFin = $nueva_fecha_fin[0] . "-" . $nueva_fecha_fin[1] + 1 . "-01";
            }
            else{
                $dia = $dia + 1;
                $fechaFin = $nueva_fecha_fin[0] . "-" . $nueva_fecha_fin[1] . "-" .  $dia; 
            }
        }
        //Preparo los datos para la consulta
         //Creo mi array de datos para hacer la consulta
             $datos_activos = [
                 "IDUsuario" => $usuario,
                 "IDActividad" => $activo,
                 "Inicio" => $fecha_inicio,
                 "Fin" => $fechaFin
             ];
             //Obtener resultados
             $res = reporteModelo::obtener_activo_modelo($tipo, $datos_activos);
             
             return $res;
         
     }
    
    
}