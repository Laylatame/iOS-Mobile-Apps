//
//  ViewControllerEditar.swift
//  storyboard
//
//  Created by Layla Tame on 8/25/19.
//  Copyright © 2019 Layla Tame. All rights reserved.
//

import UIKit

class ViewControllerEditar: UIViewController {

    @IBOutlet weak var tfNombre: UITextField!
    @IBOutlet weak var tfEmail: UITextField!
    @IBOutlet weak var btGuardar: UIButton!
    
    var nombre : String!
    var email : String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tfNombre.text = nombre
        tfEmail.text = email
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if sender as! UIButton == btGuardar{
            let visitaInic = segue.destination as! ViewController
            visitaInic.nombre = tfNombre.text!
            visitaInic.email = tfEmail.text!
        }
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if sender as! UIButton == btGuardar{
            if tfNombre.text! == "" || tfEmail.text! == "" {
                let alerta = UIAlertController(title: "Error", message: "Los campos deben tener datos", preferredStyle: .alert)
                alerta.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
                return false
            }
        }
        return true
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
