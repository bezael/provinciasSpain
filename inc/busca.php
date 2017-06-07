<?php
	header('Content-Type: text/html; charset=utf-8');
    error_reporting(E_ALL);
    ini_set('display_errors', 1);    
?>
<?php include 'coneccion.php'; ?>
<?php 
if (isset($_GET['action'])) {
	$action = strtolower($_GET['action']);

	if ($action=='comunidades') {
		$sql = "SELECT * FROM comunidades_autonomas";
		$resultado = mysqli_query($coneccionDB,$sql);
		$numFilas = mysqli_num_rows($resultado);

	   $comunidades = array(); 

	   while($row = mysqli_fetch_array($resultado)) {	   		
	       $id=$row['id_comunidad'];
	       $nombre=$row['nombre'];
	       $nombre_seo=$row['nombre_seo'];
	       $capital=$row['capital'];
	       $bandera=$row['bandera'];      
	       
	       $comunidades[] = array('id'=> $id, 'nombre'=> $nombre, 'nombre_seo'=> $nombre_seo, 'capital'=> $capital,
	                           'bandera'=> $bandera);
	   }
		echo json_encode($comunidades, JSON_FORCE_OBJECT);   

	}elseif ($action=='provincias') {
			$aBuscar =$_GET['busca'];
			// SELECT *  FROM provincias,comunidades_autonomas WHERE id_provincia = 5 and provincias.idComunidad_Autonoma=comunidades_autonomas.id_comunidad
			$sql = "SELECT * FROM provincias,comunidades_autonomas WHERE provincias.idComunidad_Autonoma=comunidades_autonomas.id_comunidad AND  provincias.provincia LIKE '$aBuscar%'";
			$resultado = mysqli_query($coneccionDB,$sql);
			$numFilas = mysqli_num_rows($resultado);

			// var_dump($resultado);

		   $provincias = array(); 
 	   	 	while ($row = $resultado->fetch_assoc()) {
	   	    	    $provincias[] = [ 
		   	        			 'id' => $row['id_provincia'],
		   	                     'provincia' => $row['provincia'],
		   	                     'nombre_seo' => $row['provincia_seo'],
		   	                     'codProvincia' => $row['codProvincia'],
		   	                     'nombre_seo' => $row['provincia_seo'],
		   	                     'idComunidad_Autonoma' => $row['idComunidad_Autonoma'] ,
		   	                     'prefijo_provinciales' => $row['prefijo_provinciales'],
		   	                     'bandera' => $row['bandera'],
		   	                     'nombre' => $row['nombre'],
		   	            ];
		   }
		   // var_dump($provincias);
		   // print_r($provincias[nombre]);
		    echo json_encode($provincias,JSON_FORCE_OBJECT);
		//    while($row = mysqli_fetch_array($resultado)) {	   		
		//        $id=$row['id_provincia'];
		//        $nombre=$row['provincia'];
		//        $nombre_seo=$row['provincia_seo'];
		//        $codProvincia=$row['codProvincia'];
		//        $idComunidad=$row['idComunidad_Autonoma'];
		//        $prefijo_provinciales=$row['prefijo_provinciales'];			       
		//        $bandera=$row['bandera'];   		       
		//        $provincias[] = array('id'=> $id, 'nombre'=> $nombre, 'nombre_seo'=> $nombre_seo, 'codProvincia'=> $codProvincia,
		//        					'idComunidad'=> $idComunidad, 'prefijo_provinciales'=>$prefijo_provinciales,'bandera'=> $bandera);
		//    }
		// print_r($provincias);
		//echo '' . json_encode($provincias) . '';
 
	}else{
		echo "parametros desconocidos.";
	}
}//cierre del isset

$coneccionDB->close();
?>
