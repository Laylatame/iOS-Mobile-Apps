//
//  ViewController.swift
//  calculoTriangulos
//
//  Created by Layla Tame on 8/19/19.
//  Copyright © 2019 Layla Tame. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var a: UITextField!
    @IBOutlet weak var b: UITextField!
    @IBOutlet weak var c: UITextField!
    @IBOutlet weak var boton: UIButton!
    @IBOutlet weak var switch1: UISwitch!
    @IBOutlet weak var mensajeOutput: UILabel!
    @IBOutlet weak var imagen: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(quitaTeclado))
        view.addGestureRecognizer(tap)
    }
    
    @IBAction func quitaTeclado(){
        view.endEditing(true)
    }


    @IBAction func cambioSwitch(_ sender: UISwitch) {
        if switch1.isOn {
            boton.setTitle("Tipo de triángulo", for: .normal)
            mensajeOutput.text = ""
            
        }
        else {
            boton.setTitle("Calcula Área", for: .normal)
            imagen.image = UIImage(named: "")
            mensajeOutput.text = ""
        }
    }
    
    
    @IBAction func calculate(_ sender: UIButton) {
        self.view.endEditing(true)
        if let aA = Double(a.text!), let bB = Double(b.text!), let cC = Double(c.text!){
            
            if aA>0, bB>0, cC>0, (aA+bB)>cC, (aA+cC)>bB, (bB+cC)>aA {
                
                if boton.title(for: .normal) == "Tipo de triángulo" {
                    if(aA == bB) && (aA == cC){
                        mensajeOutput.text = "Equilatero"
                        imagen.image = UIImage(named: "equilatero")
                    }
                    else if (aA == bB) || (aA == cC) || (bB == cC) {
                        mensajeOutput.text = "Isóceles"
                        imagen.image = UIImage(named: "isoceles")
                    }
                    else{
                        mensajeOutput.text = "Escaleno"
                        imagen.image = UIImage(named: "escaleno")
                    }
                }
                
                else {
                    let s = Double((aA+bB+cC)/2)
                    let formula = Float(s*(s-aA)*(s-bB)*(s-cC))
                    let Area = sqrt(formula)
                    mensajeOutput.text = "El área es = \(Area)"
                }
            }
            
            else {
                let alerta = UIAlertController(title: "Error", message: "Los números no representan un triangulo", preferredStyle: .alert)
                
                let accion = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                
                alerta.addAction(accion)
                
                present(alerta, animated: true, completion: nil)
            }
        }
        else {
            let alerta = UIAlertController(title: "Error", message: "Los campos deben tener valores numéricos", preferredStyle: .alert)
            
            let accion = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            
            alerta.addAction(accion)
            
            present(alerta, animated: true, completion: nil)
        }
    }
    
}

