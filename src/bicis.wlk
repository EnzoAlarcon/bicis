import accesorioss.*

class Bici {
	var property rodado
	var property marca
	var property largo
	var property accesorios
	
	method altura() {
		return self.rodado() * 2.5 + 15
	}
	
	method velocidadCrucero() {
		return if(self.largo() > 120) {self.rodado() + 6} else {self.rodado() + 2}
	}
	
	method carga() {
		return accesorios.sum({a => a.carga()})
	}
	
	method peso() {
		return self.rodado()/2 + accesorios.sum({a => a.peso()})
	}
	
	method tieneLuz() {
		return accesorios.any( {a => a.esLuminoso()} )
	}
	
	method cantAccesoriosLivianos() {
		return accesorios.count( {a => a.peso() < 1} )
	}
	
	method esCompanieraDe(bici) {
		return self.marca() == bici.marca() and (self.largo() - bici.largo()).abs() < 10
	}
}


