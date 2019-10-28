//
//  Categoria.swift
//  minireto2
//
//  Created by Layla Tame on 10/7/19.
//  Copyright © 2019 Layla Tame. All rights reserved.
//

import UIKit

class Categoria: NSObject {
    
    var titulo : String!
    var color : UIColor!
    
    init(titulo: String, color: UIColor){
        self.titulo = titulo
        self.color = color
    }
}
