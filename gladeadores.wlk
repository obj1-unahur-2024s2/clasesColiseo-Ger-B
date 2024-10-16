class Mirmillon{
  var vida 
  // Contenido nuevo: method initialize(){}
  method initialize(){
    vida = vida.between(0, 100)
    /*
    Forma de inicializar una variable o constante de un 
    objeto(en la instanciacion) con reglas mas complejas.
    Tambien tiene sentido en los test, para ejecutar mensajes que 
    van a usar todos los test.
    */
  }

  const fuerzaPromedio 
  const destreza = 15
  const property armadura
  const property arma

  method atacar(objetivo) {
    objetivo.recibirDanio(self.poderAtaque() - objetivo.defensa())
  }

  method poderAtaque() = fuerzaPromedio + arma.poder()
  method defensa() = armadura.puntosDefensa(self) + destreza
  method recibirDanio(danio){
    vida = 0.max(vida - danio)
  } 
  method vida() = vida 

}


class Dimachaerus{
  var vida = 100
  const fuerzaPromedio = 10
  var destreza
  const property armas 

  method atacar(objetivo) {
    objetivo.recibirDanio(self.poderAtaque() - objetivo.defensa())
    destreza = destreza + 1
  }

  method poderAtaque() = fuerzaPromedio + armas.sum({a => a.poder()})
  method defensa() = destreza * 0.5 
  method recibirDanio(danio) {
    vida = 0.max(vida - danio)
  }

  method vida() = vida 

}

class Grupos {
  const nombre
  var nroPeleas
  const integrantes 

  method agregarIntegrante(integrante) {
    integrantes.add(integrante)
  }
  method quitarIntegrante(integrante) {
    integrantes.remove(integrante)
  }
  method elMasFuerte() = integrantes.max({i => i.poderAtaque()})
  method elCampeon() = integrantes.find({i => i.vida() > 0 and self.elMasFuerte()})
}

object coliseo {
  method organizarColiseo() {
    
  }
}

