import objetosMagicos.*

class Mago{

    var objetosMagicos = [] //lista de objetos magicos que tiene 
    const poderInnato 
    const resistenciaMagica
    var energiaMagica 
    const nombre 
    var caracteristicaMago //la caracteristica de cada mago puede cambiar, utilize interfase para representarla  

//Acessors
    method energiaMagica() = energiaMagica
    method resistenciaMagica() = resistenciaMagica
    method poderInnato () = poderInnato
    method nombre() = nombre


method longitudNombre(){ //metodo auxiliar para tieneNombrePar 
    return nombre.length()
}

method tieneNombrePar(unMago){
    return self.longitudNombre().even() //retorno si el nombre es par o no 
}

//1)calcular el poder total

method poderObjeto(){ //metodo auxiliar para poder total, sumo el poder de cada objeto 
return 	objetosMagicos.sum{ objetosMagico => objetosMagicos.poderBase() } 
}

method poderTotal(unMago) {   //es la sumatoria de poder que aporta cada objetoMagico multiplicado el poder innato del mago
      return self.poderObjeto() * self.poderInnato()
    }


//2) desafiar magos 

method robarPuntos(){

}

method desafiarMago(magoADesafiar, elMagoQueDesafia) { //yo voy a desafiar a otro mago 
  if (caracteristicaMago.esVencido(magoADesafiar, elMagoQueDesafia)){  //si logro vencer al mago que estoy desafiando
    self.robarPuntos() // en robar puntos me tengo que sumar los puntos que le saque al mago que derrote 
  }
}


}

//caracteristicas de magos 
class Aprendiz { 

method esVencido(unMago, magoAtacante){ 
 return unMago.resistenciaMagica() < magoAtacante.poderTotal()
        
}

method perderPuntos(){
 if (caracteristicaMago.esVencido(unMago, magoAtacante)){
   self.energiaMagica() * 0.5 
 }
}

}

class Veterano { //no son vencidos

method esVencido(unMago, magoAtacante){
 return unMago.resistenciaMagica() * 1.5 <= magoAtacante.resistenciaMagica()
}

method perderPuntos() {
  if(esVencido(unMago, MagoAtacante)){
    self.energiaMagica() * 0.25
  }

}

}

class Inmortal {
method esVencido(unMago, magoAtacante){
    return false 
}
}





