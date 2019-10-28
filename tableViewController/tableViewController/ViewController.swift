//
//  ViewController.swift
//  tableViewController
//
//  Created by Layla Tame on 9/12/19.
//  Copyright © 2019 Layla Tame. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var imgFoto: UIImageView!
    @IBOutlet weak var lNombre: UILabel!
    @IBOutlet weak var lPuntos: UILabel!
    @IBOutlet weak var lEmail: UILabel!
    
    var mostrarNombre: String = ""
    var mostrarPuntos: Int = 0
    var mostrarEmail: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lNombre.text = mostrarNombre
        lPuntos.text = String(mostrarPuntos)
        lEmail.text = mostrarEmail
        imgFoto.image = UIImage(named: "userIcon")
    }


}

