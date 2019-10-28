//
//  ViewController.swift
//  cuerposGeomA19
//
//  Created by Yolanda Martinez on 8/25/19.
//  Copyright © 2019 com.itesm. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tfInfo: UILabel!
    @IBOutlet weak var tfVolumen: UILabel!
    @IBOutlet weak var tfImagen: UIImageView!
    @IBOutlet weak var botonInicio: UIButton!
    
    var radio: Double!
    var volumen: Double!
    var imagen: UIImage!
    var largo: Double!
    var ancho: Double!
    var altura: Double!
    var texto: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tfInfo.text = ""
        tfVolumen.text = ""
    }
    
    
    @IBAction func inicioReset(_ sender: Any) {
        tfImagen.image = UIImage(named: "")
        tfInfo.text = ""
        tfVolumen.text = ""
    }
    
    @IBAction func unwindEsfera (unwindSegue: UIStoryboardSegue) {
        tfInfo.text = String(radio)
        tfVolumen.text = String(volumen)
        tfImagen.image = imagen
    }
    
    @IBAction func unwindPrisma (unwindSegue: UIStoryboardSegue) {
        tfInfo.text = texto
        tfVolumen.text = String(volumen)
        tfImagen.image = imagen
    }


}

