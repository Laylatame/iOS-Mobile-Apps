//
//  ViewController.swift
//  examenParcial2
//
//  Created by Layla Tame on 10/21/19.
//  Copyright © 2019 Layla Tame. All rights reserved.
//

import UIKit

protocol protocoloAgregaNumero {
    func agregaNumero(num: Double) -> Void
}

class ViewController: UIViewController {

    @IBOutlet weak var tfAgregar: UITextField!
    @IBOutlet weak var btnAgregar: UIButton!
    
    var delegado : protocoloAgregaNumero!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        title = "Agregar Número"
    }
    
    
    @IBAction func guardarNum(_ sender: UIButton) {
        
        if let num = Double(tfAgregar.text!) {
            
            delegado.agregaNumero(num: num)
            
            navigationController?.popViewController(animated: true)
        }
    }
    

}

