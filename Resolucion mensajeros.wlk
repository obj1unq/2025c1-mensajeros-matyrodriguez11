import wollok.vm.*
object paquete {
    var pago = 0

    method pago_(pago_){
        pago = pago_
    }

    method pago(){
        return pago
    }

    method entregar(destino, repartidor){
        if (self.pago() = 1){
            destino.puedeIngresar(repartidor)
        }
        else {
            return 'No puede entregar el paquete'
        }
    }
}


object puenteBrooklyn {
    const pesoMaximo = 1000

    /*method puedePasar(repartidor) = (repartidor.peso() <= pesoMaximo)*/

    method puedeIngresar(repartidor){
        if (repartidor.peso() <= pesoMaximo) {
            return 'Puede pasar al puente de Brooklyn'
        }
        else {
            return 'No Puede pasar al puente de Brooklyn'
        }
    }
}

object matrix {
    var creditoLlamada = 10
    
    /*method puedeIngresar(repartidor) = repartidor.credito() >= creditoLlamada*/
    
    method puedeIngresar(repartidor) {
        if (repartidor.credito() >= creditoLlamada){
            return 'Puede pasar a la Matrix'
        }
        else {
            return 'No puede pasar a la Matrix'
        }
    }
}

object chuckNorris {
    const peso = 900
    const credito = 1000
    
    method peso() = peso

    method credito() = credito
}

object neo {
    var peso = 1
    var credito = 20
    
    method peso() = peso

    method credito() = credito

    method credito_(saldo) {
        credito = saldo
      
    } 
}

object lincolnHawk {
    const credito = 0
    var pesoPropio = 0
    var vehiculo = 0

    method pesoPropio(pesoPropio_) {
        pesoPropio = pesoPropio_
    }

    method peso(vehiculo) = pesoPropio + vehiculo.peso()

    method credito() = credito
}

object bicicleta {
    const peso = 10
}

object camion {
    const pesoCamion = 500
    const pesoAcoplado = 500
    var cantAcoplados = 0


    method peso() = pesoCamion + (pesoAcoplado * cantAcoplados)

    method cantAcoplados(cantAcoplados_) {
        cantAcoplados = cantAcoplados_
    }

    method pesoCamion() = pesoCamion

    method pesoAcoplado() = pesoAcoplado
}
