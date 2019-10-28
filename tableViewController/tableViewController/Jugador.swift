//
//  Jugador.swift
//  tableViewController
//
//  Created by Layla Tame on 9/12/19.
//  Copyright © 2019 Layla Tame. All rights reserved.
//

import UIKit

class Jugador: NSObject {
    
    var nombre: String = " "
    var puntos: Int = 0
    var email: String = " "
    
    init(nombre: String, puntos: Int, email: String){
        self.nombre = nombre
        self.puntos = puntos
        self.email = email
    }

}
