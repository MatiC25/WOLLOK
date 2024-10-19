
class Zona {

    method requerimiento(grupo){}

}

class Grupo {
    const personas = []

    method personas() = personas 

    method elGrupoTiene(cantItem, item) { 
        return personas.sum({persona => persona.cuantosTiene(item)}) >= cantItem
    }

    method puedeAtravesar(zona) {
        return zona.requerimiento(self)
    }

    method algunoTienePoder(cantPoder) {
        return personas.any({persona => persona.tienePoder(1500)})
    }
    
    method algunoTieneArma() {
        return personas.any({persona => persona.tieneArma()})
    }
}

// class Region {
//     const zonas = []

// }

// class RegionGondor inherits Region(zonas = [lebennin, minasTirith]) {

// }

class Belfalas inherits Zona {
    override method requerimiento(grupo) = true
}

class Lebennin inherits Zona {

    override method requerimiento(grupo){
        return grupo.algunoTienePoder(1500)
    }
}

class MinasTirith inherits Zona {

    const itemNecesario = lemba
    const cantItem = 10

    override method requerimiento(grupo) {
        return grupo.elGrupoTiene(cantItem, itemNecesario)
    }
}

class BosqueDeFangorn inherits Zona {

    override method requerimiento(grupo){
        return grupo.algunoTieneArma()
    }
}

class Edoras inherits Zona {
    override method requerimiento(grupo) = true
}


class Item {

}

const lemba = new Item()

class Estremnet inherits Zona {
    
    const itemNecesario = lemba
    const cantItem = 30

    override method requerimiento(grupo) {
        return grupo.elGrupoTiene(cantItem, itemNecesario)
    }
}

class CaminoGondor {
    const zonas = []

    method requerimiento(grupo) {
        return zonas.all({zona => grupo.puedeAtravesar(zona)})
    }

    // method consecuencia(persona) {
    //     zonas.forEach({zona => persona.atravesar(zona)})
    //     }

}

const bosqueF = new BosqueDeFangorn()
const edoras = new Edoras()
const estemnet = new Estremnet()
const belfalas = new Belfalas()

// const camino = new CaminoGondor(zonas = [bosqueF, edoras, estemnet, belfalas])
