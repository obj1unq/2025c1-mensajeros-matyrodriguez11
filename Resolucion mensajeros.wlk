object PuenteBrooklyn {
    const pesoMaximo = 1000
    method puedePasar(repartidor){
        if (repartidor.peso() <= pesoMaximo) {
            return 'Puede pasar al puente de Brooklyn'
        }
        else {
            return 'No Puede pasar al puente de Brooklyn'
        }
    }
}

object Matrix {
    
}

object ChuckNorris {
    const peso = 900
    method peso() {
        return peso
    }
}

object Neo {
    const peso = 0
    method peso(){
        return peso
    }
}

object LincolnHawk {
    const pesoCamion = 500
    const pesoAcoplado = 500
    const pesoBici = 10
    var pesoPropio = 0
    var peso = 0

    method pesoPropio(peso_){
        pesoPropio = peso_
    }

    method pesoFinal(vehiculo, cantAcoplados) {
        if (vehiculo == Camion) {
            peso = (pesoPropio * pesoCamion) + (cantAcoplados + pesoAcoplado)
        }
        else {
            peso = pesoPropio + pesoBici
        }
    }
}

