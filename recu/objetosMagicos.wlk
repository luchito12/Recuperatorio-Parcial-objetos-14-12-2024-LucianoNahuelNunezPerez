import mago.*

class ObjetoMagico{
    const poderBase //aportan un valor base de poder 

method poderBase() = poderBase
    


}

class Varita inherits ObjetoMagico{

method poder(unObjeto, usuario){
    if(usuario.tieneNombrePar(usuario)){ //le mando mensaje al mago para que me diga si su nombre es par  
        super(poderBase) * 1.5
    } else {
        return 
    } 

}
}


class TunicaComun inherits ObjetoMagico{

method poder(unObjeto, usuario){
 super(poderBase) + usuario.resistenciaMagica()
}

}

class TunicaEpica inherits ObjetoMagico{

method poder(unObjeto, usuario){
    super(poderBase) + usuario.resistenciaMagica() + 10

}
}

class Amuletos inherits ObjetoMagico{
    
method poder(unObjeto, usuario){
        super(poderBase) + 200
    }
}

class Ojota inherits ObjetoMagico {
  
 method poder(unObjeto, usuario){
    super(poderBase) + usuario.longitudNombre()*10
  }

}