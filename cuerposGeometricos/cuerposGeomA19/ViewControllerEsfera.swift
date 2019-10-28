//
//  ViewControllerEsfera.swift
//  cuerposGeomA19
//
//  Created by Layla Tame on 8/26/19.
//  Copyright © 2019 com.itesm. All rights reserved.
//

import UIKit

class ViewControllerEsfera: UIViewController {

    @IBOutlet weak var tfRadio: UITextField!
    @IBOutlet weak var btGuardar: UIButton!
    @IBOutlet weak var imgEsfera: UIImageView!
    
    var radioE: Double!
    var volumenE: Double!
    var imagen: UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let tap = UITapGestureRecognizer(target: self, action: #selector(quitaTeclado))
        view.addGestureRecognizer(tap)
    }
    
    @IBAction func quitaTeclado(){
        view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if sender as! UIButton == btGuardar{
            let visitaInic = segue.destination as! ViewController
            visitaInic.radio = radioE!
            visitaInic.volumen = volumenE!
            visitaInic.imagen = imgEsfera.image!
        }
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if sender as! UIButton == btGuardar{
            if tfRadio.text! == "" {
                let alerta = UIAlertController(title: "Error", message: "Los campos deben tener datos", preferredStyle: .alert)
                alerta.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
                present(alerta, animated: true, completion: nil)
                return false
            }
            else if Double(tfRadio.text!) == nil {
                let alerta = UIAlertController(title: "Error", message: "Los datos deben ser numéricos", preferredStyle: .alert)
                alerta.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
                present(alerta, animated: true, completion: nil)
                return false
            }
            else {
                radioE = Double(tfRadio.text!)
                volumenE = (4/3) * (3.1416) * radioE * radioE * radioE
                return true
            }
        }
        return true
    }
}
