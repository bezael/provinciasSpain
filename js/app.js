let buscador = {
	render: function(param){
	let urlApi = 'http://api.medialimon.net/inc/busca.php?action=provincias&busca='+param;
	let contenedorDIV = document.getElementById('resultado');
	let contenido="";		
		
		$.ajax({
			url:urlApi,
			type:'GET',
			dataType:'json', 
			beforeSend:function(){
				// message.innerHTML = "Cargando...";
			},
			complete: function(){
				// message.innerHTML = "Carga finalizada";
			},
			success: function(response){

				let count = 0;
				while (response[count]) {
				    count++;
				}
				contenido+="<div class='row'>";
				contenido+="<div class='col-md-12'>";
				contenido+="<table class='table table-responsive table-striped col-xs-10 col-sm-10 col-md-12'><thead><th>Bandera</th><th>Comunidad</th><th>Provincia</th></thead>";
				contenido+="<tbody>";
				for (let i=0; i<count; i++) {
					contenido+="<tr>";
					let datos = response[i];
					let bandera = '/img/'+datos.bandera;
					
						contenido+="<td><img src='"+bandera+"'></td>";
						contenido+="<td>"+datos.nombre+"</td>";
						contenido+="<td>"+datos.provincia+"</td>";
					
					contenido+="</tr>";	

					// if((i+1) % 4 ==0){
					// 	contenido+="</div>";
					// 	contenido+="<div class='row'>";
					// }

				}	
				contenido+="</tbody></table>";	
				contenido+="</div>";
				contenido+="</div>"; // cierre_row			 
				contenedorDIV.innerHTML= contenido;			
			},
			error: function(){
				// message.innerHTML = "Error al carga la página";
			}
		});
	}
};

function buscar(param){	
	if (param!="" && param.length>1) {
		buscador.render(param);
		console.log(param);
	}
}


