import vikingos.*

class Expedicion {
	var vikingos =[]
	var objetivo
	
	constructor(unObjetivo){
		objetivo=unObjetivo
	}
	
	method subirVikingo(unVikingo){
		if (unVikingo.puedeSubir()){
			vikingos.add(unVikingo)
		}else{
			error.throwWithMessage("No es productivo para la expedicion")
		}
	}
	
	method valeLaPena(){
		return objetivo.valeLaPena(self.cantVikingos())
	}
	
	method cantVikingos(){
		return vikingos.size()
	}
	method invadir(){
		vikingos.forEach({unVikingo=>unVikingo.sumarOro(self.oroGanadoPorVikingo())})
	}
	
	method oroGanadoPorVikingo(){
		return objetivo.botin(self.cantVikingos())/self.cantVikingos()
	}
	
}

class Capital{
	var factorDeRiqueza
	
	constructor(factor){
		factorDeRiqueza=factor
	}
	
	method valeLaPena(cantVikingos){
		return (self.botin(cantVikingos)/cantVikingos)>3
	}
	
	method botin(cantVikingos){
		return cantVikingos*factorDeRiqueza
	}
}

class Aldea{
	var cantCrucifijos
	
	constructor(cant){
		cantCrucifijos=cant
	}
	
	method valeLaPena(cantVikingos){
		return self.botin(cantVikingos)>15
	}
	
	method botin(cantVikingos){
		return cantCrucifijos
	}
}

class AldeaAmurallada inherits Aldea{
	var cantMinima
	
	constructor (crucifijos,minimo)=super(crucifijos){
		cantMinima=minimo
	}
	
	override method valeLaPena(cantVikingos){
		return super(cantVikingos) && cantVikingos>cantMinima
	}
	
}



