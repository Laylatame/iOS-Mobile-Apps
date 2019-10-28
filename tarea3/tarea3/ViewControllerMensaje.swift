//
//  ViewControllerMensaje.swift
//  tarea3
//
//  Created by Layla Tame on 9/2/19.
//  Copyright © 2019 Layla Tame. All rights reserved.
//

import UIKit

class ViewControllerMensaje: UIViewController {

    @IBOutlet weak var tfMensaje: UITextField!
    @IBOutlet weak var botonListo: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(quitaTeclado))
        view.addGestureRecognizer(tap)
    }
    
    @IBAction func quitaTeclado(_ sender: Any) {
        view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if sender as! UIButton == botonListo{
            let visitaInic = segue.destination as! ViewController
            visitaInic.texto = tfMensaje.text!
        }
    }

}
