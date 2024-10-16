import enfermedad.*
import enfermedadAuto.*
import enfermedadInfec.*

class EnfermedadAutoEinfec inherits Enfermedad {
    const autoinmune
    const infecciosa

    override method afectarA(persona) {
        autoinmune.afectarA(persona)
        infecciosa.afectarA(persona)
    }

    method esAgresivaPara(unaPersona) {
        return autoinmune.esAgresivaPara(unaPersona) && infecciosa.esAgresivaPara(unaPersona)
    }

    method reproducirse() {
        infecciosa.reproducirse()
    }
     
}



