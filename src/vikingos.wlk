import expediciones.*

class Vikingo{
	var casta
	var tipo
	
	constructor (unaCasta,unTipo){
		casta=unaCasta
		tipo=unTipo
	}
	
	method esProductivo(){
		return tipo.esProductivo() && casta.puedeIr(tipo)
	}
	
	method ascender(){
		casta=casta.ascender(tipo)
	}
}

object jarl{
	method puedeIr(tipo){
		return tipo.cantArmas()==0
	}
	
	method ascender(tipo){
		tipo.ascender()
		return karl
	}
}

object karl{
	method puedeIr(tipo){
		return true
	}
	method ascender(tipo){
		return thrall
	}
}

object thrall{
	method puedeIr(tipo){
		return true
	}
	method ascender(tipo){
		return self
	}
}

class Soldado{
	var cantArmas
	var vidasCobradas
	
	constructor (armas,vidas){
		cantArmas=armas
		vidasCobradas=vidas
	}
	
	method esProductivo(){
		return cantArmas>0 && vidasCobradas>20
	}
	
	method cantArmas(){
		return cantArmas
	}
	
	method ascender(){
		cantArmas+=10
	}
}

class Granjero{
	var cantHijos
	var cantHectareas
	
	constructor(hijos,hect){
		cantHijos=hijos
		cantHectareas=hect
	}
	
	method esProductivo(){
		return (cantHectareas/cantHijos)>2
	}
	
	method ascender(){
		cantHijos+=2
		cantHectareas+=2
	}
	
}






