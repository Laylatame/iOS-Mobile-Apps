//
//  ViewControllerPrisma.swift
//  cuerposGeomA19
//
//  Created by Layla Tame on 8/26/19.
//  Copyright © 2019 com.itesm. All rights reserved.
//

import UIKit

class ViewControllerPrisma: UIViewController {

    @IBOutlet weak var imgPrisma: UIImageView!
    @IBOutlet weak var tfLargo: UITextField!
    @IBOutlet weak var tfAncho: UITextField!
    @IBOutlet weak var tfAltura: UITextField!
    @IBOutlet weak var btGuardar: UIButton!
    
    var largoP: Double!
    var anchoP: Double!
    var alturaP: Double!
    var imagen: UIImage!
    var volumenP: Double!
    var textoP: String!
    
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
            visitaInic.texto = "Largo: \(largoP!)\n Ancho: \(anchoP!)\n Altura: \(alturaP!)"
            visitaInic.volumen = volumenP!
            visitaInic.imagen = imgPrisma.image!
        }
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        largoP = Double(tfLargo.text!)
        anchoP = Double(tfAncho.text!)
        alturaP = Double(tfAltura.text!)
        if sender as! UIButton == btGuardar{
            if tfLargo.text! == "" || tfAncho.text == "" || tfAltura.text! == ""{
                let alerta = UIAlertController(title: "Error", message: "Los campos deben tener datos", preferredStyle: .alert)
                
                let accion = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                
                alerta.addAction(accion)
                present(alerta, animated: true, completion: nil)
                return false
            }
            else if largoP == nil || anchoP == nil || alturaP == nil{
                let alerta = UIAlertController(title: "Error", message: "Los datos deben de ser  numéricos", preferredStyle: .alert)
                alerta.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
                present(alerta, animated: true, completion: nil)
                return false
            }
            else {
                largoP = Double(tfLargo.text!)
                anchoP = Double(tfAncho.text!)
                alturaP = Double(tfAltura.text!)
                volumenP = largoP * anchoP * alturaP
            }
        }
        return true
    }

}
