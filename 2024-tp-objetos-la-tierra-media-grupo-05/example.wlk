

//-------------------------//
//-------- Parte 1 --------//
//-------------------------//



//-------------------//
//----- Punto 1 -----//
//-------------------//


class Gandalf {

    const armas = #{}
    var property vida // Como hacerlo de 0 a 100 ??
    method poder() {
        if(self.vida() < 15){
            return self.vida() * 300 + self.sumatoriaDePoder() * 2 
        }
        else{
            return self.vida() * 15 + self.sumatoriaDePoder() * 2
        }
    }

    method poderArma(arma) {
        arma.poderio()
    }

    method sumatoriaDePoder() {
        return armas.sum({arma => arma.poderio()})
    }

    method tieneArma() = !armas.isEmpty()

    method disminuirVida(unPocoDeVida) {
        vida -= unPocoDeVida
    }

    method aumentarVida(unPocoDeVida) {
        vida += unPocoDeVida
    }

    method tienePoder(valor) = self.poder() > valor
    

    method puedeAtravesar(zona) = zona.dificultad(self)

    method atravesar(zona) {
        zona.consecuencia(self)
    }

}

class Espada {

    const origen
    method origen() = origen 
    method poderio() = 10 * self.origen()
    
}

class EspadaElfica inherits Espada(origen = 25) {
}


class EspadaEnana inherits Espada(origen = 20) {

}


class EspadaHumana inherits Espada(origen = 15) {

}

object baculo {
    method poderio() = 400
}

class TomBardi inherits Gandalf {
    override method puedeAtravesar(zona) = true
    override method atravesar(zona) {}

}

import persona.*
import gandalf.*
// class Zona {
//     method dificultad()

//     method consecuencias()
// }

object lebennin {
    method dificultad(persona) = persona.tienePoder(1500)
    method consecuencia(persona) {}
}

object minasTirith {

    method dificultad(persona) = persona.tieneArma()
    
    method consecuencia(persona) {
        if(persona.puedeAtravesar(self)) {
            persona.disminuirVida(10) 
        }
    }
}

object lossarnach {
    method dificultad() = true 

    method consecuencia(persona) {
        persona.aumentarVida(1)
    }
}

class CaminoGondor {
    const zonas = #{}

    method dificultad(persona) {
        return zonas.all({zona => persona.puedeAtravesar(zona)})

    }
    method consecuencia(persona) {
        zonas.forEach({zona => persona.atravesar(zona)})
        }

}
