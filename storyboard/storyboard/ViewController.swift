//
//  ViewController.swift
//  storyboard
//
//  Created by Layla Tame on 8/25/19.
//  Copyright © 2019 Layla Tame. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgFoto: UIImageView!
    @IBOutlet weak var tfNombre: UITextField!
    @IBOutlet weak var tfEmail: UITextField!
    
    var nombre : String!
    var email : String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier == "info" {
            let vistaInfo = segue.destination as! ViewControllerInformacionViewController
            vistaInfo.imagen = imgFoto.image
            vistaInfo.ancho = imgFoto.frame.size.width
            vistaInfo.altura = imgFoto.frame.size.height
        }
        else {
            let vistaEditar = segue.destination as! ViewControllerEditar
            vistaEditar.nombre = tfNombre.text!
            vistaEditar.email = tfEmail.text!
        }
    }
    
    @IBAction func unwindInformacion (unwindSegue: UIStoryboardSegue) {
    }
    
    @IBAction func unwindEditar (unwindSegue: UIStoryboardSegue) {
        tfNombre.text = nombre
        tfEmail.text = email
    }

}

