import mago.*
class Gremios {
var miembros = []

//parte B 
method poderTotal(){
return miembros.sum() {miembro => miembro.poderTotal()}
}

method reservaDeEnergiaMagica(){
return miembros.sum() {miembro => miembro.energiaMagica()}
}


method liderGremio(){
return miembros.max { unMiembro => unMiembro.poderTotal() }
}

method resistenciaMagicaDelGemio(){
return miembros.sum() {miembro => miembro.resistenciaMagica()}
}

method resistenciaMagicaLider(){
    return miembros.liderGremio().resistenciaMagica()
}

method sumatoriaDeResistencia(){
   return self.resistenciaMagicaDelGemio() + self.resistenciaMagicaLider() * 2    
}
method vencerGremio(unGremio, unAtacante){
    return unAtacante.poderTotal() > unGremio.sumatoriaDeResistencia()
}

//crear un Gremio
method construirGremio(unosMagos) {
    self.validarMiembros(unosMagos)
    miembros = unosMagos
  } 

method validarMiembros(unosMagos) {
    if(unosMagos.size() < 2) {
      throw new GremioException(message = "Un Gremio debe tener al menos 2 miembros!")
    }  	
  }

//desafiar gremio 
method desafiarGremio(unGremio) {
		return miembros.forEach{ miembro => miembro.desafiarMago(magoADesafiar, elMagoQueDesafia)}
	}
}

class GremioException inherits Exception {}
