class Persona {
    var property temperatura
    var property celulasTotales     // var estaVivo
    var enfermedades = #{}

    method enComa() = temperatura == 45 || celulasTotales < 1000000

    method contrae(unaEnfermedad){
        enfermedades.add(unaEnfermedad)
    }

    method aumentarTemperatura(unosGrados) {
        temperatura = 45.min(temperatura + unosGrados)
    }

    method destruirCelulas(cantCelulas) {
        celulasTotales -= cantCelulas
    }

    method vivirUnDia(){
        enfermedades.forEach({enfermedad => enfermedad.afectarA(self)})
    }

    method vivirDias(cantDias){
        cantDias.time {self.vivirUnDia()}
    }


    method recibirDosis(unaDosis) {
        self.aplicarDosis(unaDosis)
        self.sacarCuradas()
    }

    method muerte() {
        temperatura = 0
    }

    method estaMuerto() = temperatura == 0

    method tieneEnfermedad(enfermedad) {
        enfermedades.contains(enfermedad)
    }

    method curarEnfermedad(enfermedad) {
        enfermedades.remove(enfermedad)
    }

    method aplicarDosis(unaDosis) {
      enfermedades.forEach({enfermedad => enfermedad.atenuarse(unaDosis, self)})
    }

    method sacarCuradas() {
        enfermedades.forEachAllSuchThat({enfermedad => enfermedad.estaCurada()})
    }

}


