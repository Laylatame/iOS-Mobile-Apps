//
//  ViewControllerFondo.swift
//  tarea3
//
//  Created by Layla Tame on 9/2/19.
//  Copyright © 2019 Layla Tame. All rights reserved.
//

import UIKit

class ViewControllerFondo: UIViewController {

    @IBOutlet weak var botonRojo: UIButton!
    @IBOutlet weak var botonAzul: UIButton!
    @IBOutlet weak var botonVerde: UIButton!
    @IBOutlet weak var botonAmarillo: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if sender as! UIButton == botonRojo{
            let visitaInic = segue.destination as! ViewController
            visitaInic.colorFondo = botonRojo.backgroundColor!
        }
        else if sender as! UIButton == botonAzul{
            let visitaInic = segue.destination as! ViewController
            visitaInic.colorFondo = botonAzul.backgroundColor!

        }
        else if sender as! UIButton == botonVerde{
            let visitaInic = segue.destination as! ViewController
            visitaInic.colorFondo = botonVerde.backgroundColor!
        }
        else if sender as! UIButton == botonAmarillo{
            let visitaInic = segue.destination as! ViewController
            visitaInic.colorFondo = botonAmarillo.backgroundColor!
        }
    }
}
