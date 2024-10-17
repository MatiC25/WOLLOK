
class Zona {

    method requerimiento(grupo){}

}

class Grupo {
    const personas = []

    method elGrupoTiene(cantItem, item) { 
        personas.sum({persona => persona.cuantosTiene(item)}) >= cantItem
    }

    method puedeAtravesar(zona) {
        return zona.requerimiento(self)
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
        return grupo.anyOne({persona => persona.tienePoder(1500)})
    }
}

class MinasTirith inherits Zona {

    const itemNecesario
    const cantItem

    override method requerimiento(grupo) {
        return grupo.elGrupoTiene(cantItem, itemNecesario)
    }
}

class BosqueDeFangorn inherits Zona {

    override method requerimiento(grupo){
        return grupo.anyOne({persona => persona.tieneArma()})
    }
}

class Edoras inherits Zona {
    override method requerimiento(grupo) = true
}

class Estremnet inherits Zona {
    
    const itemNecesario
    const cantItem

    override method requerimiento(grupo) {
        return grupo.elGrupoTiene(cantItem, itemNecesario)
    }
}

class CaminoGondor {
    const zonas = #{}

    method requerimiento(grupo) {
        return zonas.all({zona => grupo.puedeAtravesar(zona)})
    }

    // method consecuencia(persona) {
    //     zonas.forEach({zona => persona.atravesar(zona)})
    //     }

}