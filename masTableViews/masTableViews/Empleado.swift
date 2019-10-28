//
//  Empleado.swift
//  masTableViews
//
//  Created by Layla Tame on 9/22/19.
//  Copyright © 2019 Layla Tame. All rights reserved.
//

import UIKit

class Empleado: NSObject {
    
    var nombre: String!
    var sueldo: Float!
    var foto: UIImage!
    var departamento: String!
    
    init(nombre: String, sueldo: Float, foto: UIImage, departamento: String) {
        self.nombre = nombre
        self.sueldo = sueldo
        self.foto = foto
        self.departamento = departamento
    }
}
