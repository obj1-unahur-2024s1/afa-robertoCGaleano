object messi {
	var popularidad= 98
	method popularidad()= popularidad
	method popularidad(nueva){ return nueva }
	method viatico()= 1000000
	method pasaronCosas(){
		popularidad= 0.max(popularidad-2)
	}
}

object ronaldo {
	var viatico= 500
	method popularidad()= messi.popularidad()/2
	method viatico()= viatico
	method pasaronCosas(){
		viatico= viatico+ 1000
	}
}

object mbappe{
	var edad= 22
	var goles= 18
	method popularidad() = edad *2 + self.goles()
	method sumarGoles(cantidad){ goles = goles+ cantidad}
	method goles()= goles
	method viatico()= 3000000
	method pasaronCosas(){
		edad= edad+1
	}
}

