object olivia {
	var gradoDeConcentracion = 6

	method gradoDeConcentracion() = gradoDeConcentracion
	
	method recibirMasajes(){
		gradoDeConcentracion += 3
	}
	
	method discutir(){
		gradoDeConcentracion -= 1
	}
	method banioDeVapor(){}
}

object bruno {
	var estaFeliz = true
	var tieneSed = false
	var peso = 55000
	
	method estaFeliz() = estaFeliz
	
	method 	tieneSed() = tieneSed
	
	method peso() = peso
	
	method recibirMasajes(){
		estaFeliz = true
	}
	
	method banioDeVapor(){
		peso -= 500
		tieneSed = true
	}
	
	method tomarAgua(){
		tieneSed = false
	}
	
	method comerFideos(){
		peso += 250
		tieneSed = true
	}
	
	method correr(){
		peso -= 300
	}
	
	method mirarNoticiero(){
		estaFeliz = false
	}
	
	method estaPerfecto() = estaFeliz && !tieneSed && peso.between(50000,70000)
	
	method mediodiaEnCasa(){
		self.comerFideos()
		self.tomarAgua()
		self.mirarNoticiero()
	}
}

object ramiro{
	var contractura = 0
	var tieneGrasaEnLaPiel = false
	
	method tieneGrasaEnLaPiel() = tieneGrasaEnLaPiel
	
	method contractura() = contractura
	
	method recibirMasajes(){
		contractura = 0.max(contractura - 2) 
	}
	
	method banioDeVapor(){
		tieneGrasaEnLaPiel = false
	}
	
	method comerBigMac() {
		tieneGrasaEnLaPiel = true
	}
	
	method bajarFosa(){
		contractura += 1
		tieneGrasaEnLaPiel = true
	}
	
	method jugarPaddle(){
		contractura += 3
	}
	
	method diaDeTrabajo(){
		self.bajarFosa()
		self.comerBigMac()
		self.bajarFosa()
	}
	
	
}
