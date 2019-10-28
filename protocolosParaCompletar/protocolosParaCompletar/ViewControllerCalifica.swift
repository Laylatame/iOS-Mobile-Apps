//
//  ViewControllerCalifica.swift
//  protocolosParaCompletar
//
//  Created by Layla Tame on 9/30/19.
//  Copyright © 2019 com.itesm. All rights reserved.
//

import UIKit

protocol protocoloCalificaActividad {
    func calificaActividad(nombre: String, Calificacion: Int, Comentarios: String) -> Void
}

class ViewControllerCalifica: UIViewController {
    
    
    @IBOutlet weak var lbActividad: UILabel!
    @IBOutlet weak var tfCalif: UITextField!
    @IBOutlet weak var tfComent: UITextView!
    @IBOutlet weak var btGuardar: UIButton!
    
    var mostrarLabel1: String = ""
    var mostrarCalif: Int = 0
    var mostrarComment: String  = ""
    var index: Int = 0;
    
    var delegado: protocoloCalificaActividad!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Detalle Actividad"
        lbActividad.text = mostrarLabel1
        tfCalif.text = String(mostrarCalif)
        tfComent.text = mostrarComment
        
    }
    
    @IBAction func guardarCambios(_ sender: UIButton) {
        let nombre = lbActividad.text!
        let calif = Int(tfCalif.text!)
        let coment = tfComent.text!
        
        if nombre != "" && calif != nil && coment != "" {
            delegado.calificaActividad(nombre: nombre, Calificacion: calif!, Comentarios: coment)
            navigationController!.popToRootViewController(animated: true)
        }
    }
}
