//: Playground - noun: a place where people can play

import UIKit

enum Velocidades : Int {
    case
        Apagado         = 0,
        VelocidadBaja   = 20,
        VelocidadMedia  = 50,
        VelocidadAlta   = 120
    init( velocidadInicial : Velocidades ) {
        self = velocidadInicial
    }
}

class Auto {
    var velocidad : Velocidades
    init() {
        velocidad = Velocidades.Apagado
    }
    func cambioDeVelocidad() -> (actual :Int, velocidadEnCadena: String){
        let respuesta : (actual: Int, velocidadEnCadena: String) = (velocidad.rawValue,String (describing: velocidad))
        switch velocidad{
        case Velocidades.Apagado:
            velocidad = .VelocidadBaja
        case .VelocidadBaja:
            velocidad = .VelocidadMedia
        case .VelocidadMedia:
            velocidad = .VelocidadAlta
        case .VelocidadAlta:
            velocidad = .VelocidadMedia
        }
        return respuesta
    }
    
    
}

var auto = Auto()

for i in 0..<20{
    var res :(actual :Int, velocidadEnCadena: String) = auto.cambioDeVelocidad()
   print("\(res.actual), \(res.velocidadEnCadena)")
}
    