//
//  ViewController.swift
//  helloWorld
//
//  Created by Layla Tame on 8/13/19.
//  Copyright © 2019 Layla Tame. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfNombre: UITextField!
    
    @IBOutlet weak var lbMensaje: UILabel!
    
    @IBAction func botonSaludar(_ sender: UIButton) {
        lbMensaje.text = "Hola " + tfNombre.text!
    }
    
    @IBAction func quitaTeclado(){
        view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

