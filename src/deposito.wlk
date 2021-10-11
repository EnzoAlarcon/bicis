// DEPOSITO

class Deposito {
	var property bicicletas = #{}
	
	method bicisRapidas() {
		return bicicletas.filter({b => b.velocidadCrucero() > 25})
	}
	
	method marcasBici() {
		return bicicletas.map({b => b.marca()}).asSet()
	}
	
	method esNocturno() {
		return bicicletas.all({b => b.tieneLuz()})
	}
	
	method biciCarga(kg) {
		return bicicletas.any({b=> b.carga() > kg})
	}
	
	method marcaBiciMasRapida() {
		return bicicletas.max({b => b.velocidadCrucero()}).marca()
	}
	
	method cargaBicisLargas() {
		return bicicletas.filter({b=>b.largo() > 170}).sum({b=> b.carga()})
	}
	
	method bicisSinAccesorios() {
		return bicicletas.count({b=> b.accesorios().size() == 0})
	}
	
	method bicisCompanierasDe(bici) {
		const compas = []
		compas.addAll(bicicletas.filter({b => b.esCompanieraDe(bici)}))
		compas.remove(bici)
		return compas
	}
}
