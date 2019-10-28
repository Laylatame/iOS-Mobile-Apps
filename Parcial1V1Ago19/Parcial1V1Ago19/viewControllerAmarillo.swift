//
//  viewControllerAmarillo.swift
//  Parcial1V1Ago19
//
//  Created by Layla Tame on 9/19/19.
//  Copyright © 2019 com.itesm. All rights reserved.
//

import UIKit

class viewControllerAmarillo: UIViewController {

    @IBOutlet weak var bResta: UIButton!
    @IBOutlet weak var botonSuma: UIButton!
    @IBOutlet weak var lNumero: UILabel!
    
    
    var numeroA: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lNumero.text = lNumero.text

    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        numeroA = Int(lNumero.text!)
        if sender as! UIButton == bResta{
            numeroA = numeroA-1
        }
        if sender as! UIButton == botonSuma{
            numeroA = numeroA + 1
        }
        
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        let visitaInic = segue.destination as! ViewController
        visitaInic.numero = numeroA

    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
