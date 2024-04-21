import jugadores.*
import estadios.*

object afa{
	var precioEntrada= 10000
	var jugadorExtrella= messi
	var estadio= bombonera
	var plataAcumulada= 0
	
	method precioEntrada()= precioEntrada * inflacion.inflacionActual()
	method precioEntrada(nuevoValor){ precioEntrada= nuevoValor}	
	method costoFijoLogistica()= 10000000
	method jugadorExtrella(jugador) {jugadorExtrella= jugador}
	method estadio(nuevoEstadio) {estadio= nuevoEstadio}
	
	method entradasVendidas(){
		return estadio.capacidad() * jugadorExtrella.popularidad() / 100 
	}
	method recaudacion(){
		return self.entradasVendidas()* precioEntrada
	} 
	method gananciaNeta(){
		return self.recaudacion() - self.gastos(jugadorExtrella) - self.costoFijoLogistica() -estadio.alquiler()
	}
	method gastos(jugador){
		return jugador.viatico()  
	}
	method jugarPartido(){ plataAcumulada= plataAcumulada+ self.gananciaNeta() }
	method plataAcumulada()= plataAcumulada
	
}

object inflacion {
	method inflacionActual()= 1.5
}