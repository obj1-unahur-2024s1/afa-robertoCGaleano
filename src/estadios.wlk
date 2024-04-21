object bombonera{
	method capacidad()= 50000
	method alquiler()= 1000000 
}

object monumental{
	const capacidadTotal= 600000
	var porcentajeAvanceObras= 50
	
	method aumentarPorcentajeObras(avance){
		porcentajeAvanceObras=100.min(porcentajeAvanceObras+ avance)
	}
	method porcentajeAvanceObras()= porcentajeAvanceObras
	method capacidad()= capacidadTotal* self.porcentajeAvanceObras() / 100
	method alquiler()=15000000 
}
