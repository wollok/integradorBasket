class Partido {
	const equipo1 
	const equipo2 
	
	method ganador() = if (equipo1.puntaje() > equipo2.puntaje()) equipo1 else equipo2
	
	method victoriaAplastante() = (equipo1.puntaje() - equipo2.puntaje()).abs() > 20 
}

class Equipo {
	var property localidad
	var property integrantes = []
	
	method esLocalista() = integrantes.all{ i=> i.localidad() == localidad }
	
	method valoracion() = integrantes.sum{ i => i.habilidad() } / integrantes.size()
	
	method puntaje() = self.valoracion().truncate(0)
}

class Jugador { 
	var posicion 
	// const nombre 
	const property localidad
	var altura
	var eficaciaDeTriples
	const sucio = false
	const talentos = []
	
	method habilidad() = posicion.habilidad( self )
	
	method cantidadDeTalentos() = talentos.size()
	
	method habilidadesEspeciales() = talentos.count{ tal => tal.size() > 10 }
	
	method esCrack() = self.habilidad() > 90
		
	method indiceSuciedad() = if (sucio) 0.5 else 1.1
	method baseRebotero() =  altura + eficaciaDeTriples * 0.25 
	method baseTirador() = eficaciaDeTriples * talentos.size() + altura /3
	method basePasador() = 	(eficaciaDeTriples * 0.25 + altura * 0.75) * self.habilidadesEspeciales()
}

object rebotero {
	method habilidad( jugador ) = jugador.baseRebotero() * jugador.indiceSuciedad()
	// (jugador.altura() + jugador.eficaciaDeTriples()* 0.25 ) * jugador.indiceSuciedad()
}	

object tirador {
	method habilidad( jugador ) = jugador.baseTirador() * jugador.indiceSuciedad()
	// (jugador.eficaciaDeTriples() * jugador.cantidadTalentos() + jugador.altura() /3)  * jugador.indiceSuciedad()
}	

object pasador {
	method habilidad( jugador ) = jugador.basePasador()
	// jugador.altura() * 0.75 + jugador.eficaciaDeTriples() * 0.25) * jugador.habilidadesEspeciales() 
}
	
class Entrenador {
	//const nombre
	var property torneosGanados 
	var property localidad
}	

class EntrenadorExperimentado inherits Entrenador {
	var aniosDeEntrenador
	
	method habilidad() = torneosGanados + aniosDeEntrenador
	
	method pasaElTiempo() {
		torneosGanados += 1
	}
}

class EntrenadorVendeHumo inherits Entrenador {
	var property entrenadorCopiado
	
	method habilidad() = entrenadorCopiado.habilidad()*0.75 	 
}

// Puntos creativos
class EntrenadorInventado inherits EntrenadorExperimentado {
	
	override method habilidad() = super() + 1
}
	
object posicionInventada {
	method habilidad( jugador ) = 1
}	
