object messi {
	var popularidad= 98
	var viatico= 1000000
	method popularidad()= popularidad
	method popularidad(nueva){ return nueva }
	method viatico()= viatico
	
}

object ronaldo {
	var popularidad= messi.popularidad()/2
	var viatico= 2000000
	method popularidad()= popularidad
	method viatico()= viatico
}

object mbappe{
	var popularidad= edad*2 + goles
	var viatico= 3000000
	var edad= 20
	var goles
	method setEdad(nuevaEdad){ edad= nuevaEdad}
	method popularidad() = popularidad
	method sumarGoles(cantidad){ goles = goles+ cantidad}
	method goles()= goles
	method viatico()= viatico
}

