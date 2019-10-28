//
//  ViewController.swift
//  Parcial1V1Ago19
//
//  Created by Yolanda Martinez on 9/15/19.
//  Copyright © 2019 com.itesm. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var botonArriba: UIButton!
    @IBOutlet weak var botonAbajo: UIButton!
    @IBOutlet weak var lRosa: UILabel!
    @IBOutlet weak var viewRosa: UIView!
    @IBOutlet weak var bar1: UIProgressView!
    @IBOutlet weak var botonMenos: UIButton!
    @IBOutlet weak var botonMas: UIButton!
    @IBOutlet weak var bMandarNumero: UIButton!
    @IBOutlet weak var lNumero: UILabel!
    @IBOutlet weak var numero1: UITextField!
    @IBOutlet weak var numero2: UITextField!
    @IBOutlet weak var numeroOutput: UITextField!
    @IBOutlet weak var switch1: UISwitch!
    @IBOutlet weak var lOperador: UILabel!
    @IBOutlet weak var bIgual: UIButton!
    
    var numero: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        bar1.setProgress(0.5, animated: true)
        let tap = UITapGestureRecognizer(target: self, action: #selector(quitaTeclado))
        view.addGestureRecognizer(tap)
    }
    
    @IBAction func quitaTeclado(){
        view.endEditing(true)
    }

    
    @IBAction func moverArriba(_ sender: UIButton) {
        UIView.animate(withDuration:1){
            self.lRosa.frame.origin.y = (CGFloat(self.viewRosa.frame.height)-130)
        }
    }
    
    @IBAction func moverAbajo(_ sender: UIButton) {
        UIView.animate(withDuration:1){
            self.lRosa.frame.origin.y = CGFloat(self.viewRosa.frame.height-40)
        }
    }
    
    
    @IBAction func restarBarra(_ sender: UIButton) {
        bar1.setProgress(bar1.progress-0.1, animated: true)
    }
    
    @IBAction func sumarBarra(_ sender: UIButton) {
        bar1.setProgress(bar1.progress+0.1, animated: true)
    }
    
    @IBAction func unwindMandar (unwindSegue: UIStoryboardSegue) {
        lNumero.text = String(numero)
    }
    
    @IBAction func cambioSwitch(_ sender: UISwitch) {
        if switch1.isOn {
            lOperador.text = "*"
        }
        else {
           lOperador.text = "+"
        }
    }
    
    @IBAction func calcularF(_ sender: UIButton) {
        let num1 = Double(numero1.text!)
        let num2 = Double(numero2.text!)
        if switch1.isOn{
            numeroOutput.text = String(num1! * num2!)
        }
        else {
            numeroOutput.text = String(num1! + num2!)
        }
    }
    
    
    
    
}

