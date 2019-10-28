//
//  ViewController.swift
//  tarea3
//
//  Created by Layla Tame on 9/2/19.
//  Copyright © 2019 Layla Tame. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imagen: UIImageView!
    @IBOutlet weak var labelText: UILabel!
    
    var imagen1 : UIImage!
    var colorFondo: UIColor!
    var texto: String!

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func unwindFoto(unwindSegue: UIStoryboardSegue) {
        imagen.image = imagen1
    }
    
    @IBAction func unwindFondo(unwindSegue: UIStoryboardSegue) {
        view.backgroundColor = colorFondo
    }
    
    @IBAction func unwindMensaje(unwindSegue: UIStoryboardSegue) {
        labelText.text = texto
    }
    
    

}

