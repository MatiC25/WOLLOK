class Espada {

    const origen
    const multiplicadorDePoder
    method origen() = origen 
    method multiplicadorDePoder() = multiplicadorDePoder

    method poderio() = self.multiplicadorDePoder() * origen.valorExtra()
}

// class EspadaElfica inherits Espada(origen = 25) {
// }

// class EspadaEnana inherits Espada(origen = 20) {
// }


// class EspadaHumana inherits Espada(origen = 15) {
// }

class Origen {
    const valorExtra
    method valorExtra() = valorExtra
}
class Elfico inherits Origen(valorExtra = 25){ }

class Enano inherits Origen(valorExtra = 20){}

class Humano inherits Origen(valorExtra = 10){}

class Baculo {
    const poder
    method poderio() = poder 
}
object baculo {
    method poderio() = 400
}

class Daga inherits Espada {
    override method poderio() = super() / 2
}

class Arco {
    var property tension = 40
    const largo

    method poderio() = 0.1 * tension * largo
}

class Hacha {
    const mango
    const hojaMetalica

    method largo() = mango
    method peso() = hojaMetalica 

    method poderio() = mango * hojaMetalica
}

