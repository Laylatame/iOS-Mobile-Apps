//
//  ViewController.swift
//  protocolosParaCompletar
//
//  Created by Yolanda Martinez on 2/22/18.
//  Copyright © 2018 com.itesm. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
   
    @IBOutlet weak var lbNombreAct: UILabel!
    @IBOutlet weak var lbCalificacion: UILabel!
    @IBOutlet weak var textViewComentarios: UITextView!
    
    var mostrarNombreAct: String = ""
    var mostrarCalif: Int = 0
    var mostrarComent: String = ""
    
    var delegado: protocoloCalificaActividad!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lbNombreAct.text = mostrarNombreAct
        lbCalificacion.text = String(mostrarCalif)
        textViewComentarios.text = mostrarComent
        
        title = "Calificar"
    }


    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "segueCalifica" {
            let vistaSig = segue.destination as! ViewControllerCalifica
            vistaSig.delegado = delegado
            
            /*
            vistaSig.mostrarLabel1 = lbNombreAct.text!
            vistaSig.mostrarCalif = Int(lbCalificacion.text!)!
            vistaSig.mostrarComment = textViewComentarios.text!
            */
        }
        
    }
    

}

