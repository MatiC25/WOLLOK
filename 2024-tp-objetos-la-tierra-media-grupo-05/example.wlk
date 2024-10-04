

//-------------------------//
//-------- Parte 1 --------//
//-------------------------//



//-------------------//
//----- Punto 1 -----//
//-------------------//


class Gandalf {

    const armas = #{}
    const vida 
    method vida() = vida 
    method poder() {
        if(self.vida() < 15){
            self.vida() * 300 + self.sumatoriaDePoder() * 2 
        }
        else{
            self.vida() * 15 + self.sumatoriaDePoder() * 2
        }
    }

    method poderArma(arma) {
        arma.poderio()
    }

    method sumatoriaDePoder() {
        return armas.sum({arma => arma.poderio()})
    }

}