object rolando {
	
	var property capacidad = 2
	const property artefactos = #{}
	const casa = castillo
	const property historia = []
	
	method encontrar(artefacto) {
		if(self.hayEspacio()) {
			artefactos.add(artefacto)
		}
		historia.add(artefacto)
	}
	
	method hayEspacio() {
		return artefactos.size() < capacidad
	}
	
	method tiene(artefacto) {
		return artefactos.contains(artefacto)
	}
	
	method llegarACasa() {
		casa.recibir(artefactos)
		artefactos.clear()
	}
	
	method posee(artefacto) {
		return self.tiene(artefacto) or casa.tiene(artefacto)
	}
	
	method posesiones() {
		return artefactos + casa.artefactos()
	}
	
}

object castillo {
	
	const property artefactos = #{}
	
	method recibir(_artefactos) {
		artefactos.addAll(_artefactos)
	}
	
	method tiene(artefacto) {
		return artefactos.contains(artefacto)
	}
	
	
	
}

