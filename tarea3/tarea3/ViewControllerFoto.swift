//
//  ViewControllerFoto.swift
//  tarea3
//
//  Created by Layla Tame on 9/2/19.
//  Copyright © 2019 Layla Tame. All rights reserved.
//

import UIKit

class ViewControllerFoto: UIViewController {
    
    @IBOutlet weak var imagen1: UIButton!
    @IBOutlet weak var imagen2: UIButton!
    @IBOutlet weak var imagen3: UIButton!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if sender as! UIButton == imagen1{
            let visitaInic = segue.destination as! ViewController
            visitaInic.imagen1 = UIImage(named: "paisaje2")!
        }
        else if sender as! UIButton == imagen2{
            let visitaInic = segue.destination as! ViewController
            visitaInic.imagen1 = UIImage(named: "paisaje3")!
        }
        else if sender as! UIButton == imagen3{
            let visitaInic = segue.destination as! ViewController
            visitaInic.imagen1 = UIImage(named: "paisaje4")!
        }
    }
    

}
