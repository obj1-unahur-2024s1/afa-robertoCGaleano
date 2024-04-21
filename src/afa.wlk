import jugadores.*
import estadios.*

object afa{
	var precioEntrada= 10000
	var costoFijoLogistica= 10000000
	var jugadorExtrella= messi
	var estadio
	
	method precioEntrada()= precioEntrada
	method precioEntrada(nuevoValor){ precioEntrada= nuevoValor}	
	method costoFijoLogistica(nuevoValor){ costoFijoLogistica= nuevoValor}
	method jugadorExtrella(jugador) {jugadorExtrella= jugador}
	method estadio(nuevoEstadio) {estadio= nuevoEstadio}
	
	method entradasVendidas(){
		return estadio.capacidad() * jugadorExtrella.popularidad() / 100 
	}
	method recaudacion(){
		return self.entradasVendidas()* precioEntrada
	} 
	method gananciaNeta(){
		return self.recaudacion() - self.gastos(jugadorExtrella) - costoFijoLogistica -estadio.alquiler()
	}
	method gastos(jugador){
		return jugador.viatico()  
	}
	
}