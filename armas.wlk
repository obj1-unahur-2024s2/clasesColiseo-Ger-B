class ArmasDeFilo{
  const largo
  const filo

  method poder() = filo * largo
}

class ArmasContundentes{
  const peso
  method poder() = peso
}

object casco{
  method puntosDefensa(gladiador) = 10
}

object escudo {
  method puntosDefensa(gladiador) = 5 + gladiador.destreza()
}