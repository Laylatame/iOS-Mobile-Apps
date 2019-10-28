//
//  ViewController.swift
//  conversorMoneda
//
//  Created by Layla Tame on 8/15/19.
//  Copyright © 2019 Layla Tame. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var tfTipoCambio: UITextField!
    @IBOutlet weak var tfPesos: UITextField!
    @IBOutlet weak var tfDolares: UITextField!
    @IBOutlet weak var imgLogo: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imgLogo.image = UIImage(named: "dollarSign")
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(quitaTeclado))
        view.addGestureRecognizer(tap)
        
    }
    
    @IBAction func quitaTeclado(){
        view.endEditing(true)
    }

    @IBAction func calculaDolares(_ sender: UIButton) {
        if let tipoCambio = Double(tfTipoCambio.text!), let pesos = Double(tfPesos.text!){
            let dolares = pesos / tipoCambio
            tfDolares.text = "\(dolares)" //Se usa \() para imprimir valores
        }
        else {
            let alerta = UIAlertController(title: "Error", message: "Los datos no son los adecuados", preferredStyle: .alert)
            
            let accion = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            
            alerta.addAction(accion)
            
            present(alerta, animated: true, completion: nil)
        }
    }
    
}

