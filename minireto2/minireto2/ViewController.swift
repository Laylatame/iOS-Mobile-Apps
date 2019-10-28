//
//  ViewController.swift
//  minireto2
//
//  Created by Layla Tame on 9/29/19.
//  Copyright © 2019 Layla Tame. All rights reserved.
//

import UIKit

protocol administraCategorias {
    func agregaCategoria(titulo: String, color: UIColor)
    func modificaCategoria(color: UIColor) -> Void
}

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var tfTitulo: UITextField!
    
    var delegado : administraCategorias!
    var tituloSent :  String!
    var posiblesColores = [UIColor]()
    
    //var posiblesColores = [UIColor.blue, UIColor.green, UIColor.purple, UIColor.red, UIColor.yellow, UIColor.orange, UIColor.cyan]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if tituloSent != "" {
            tfTitulo.isUserInteractionEnabled = false
            tfTitulo.text = tituloSent
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posiblesColores.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "idCell")!

        //celda.textLabel?.text = posiblesColores[indexPath.row]
        celda.backgroundColor = posiblesColores[indexPath.row]
        //celda.detailTextLabel?.text = "\(indexPath.row)"

        return celda;
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let color = posiblesColores[indexPath.row]
        NSLog("You selected cell number: \(indexPath.row)!");
        
        if tfTitulo.isUserInteractionEnabled == false {
            delegado.modificaCategoria(color: color)
            navigationController!.popToRootViewController(animated: true)
        }
        else {
            if tfTitulo.text! != "" {
                let titulo = tfTitulo.text!
                delegado.agregaCategoria(titulo: titulo, color: color)
                navigationController!.popToRootViewController(animated: true)
            }
        }
        
        
        
        /*if tituloSent != "" {

            delegado.modificaCategoria(color: color)
                
                //self.performSegue(withIdentifier: "returnRoot", sender: self)
        }
        else {
            let titulo = tfTitulo.text!
            delegado.agregaCategoria(titulo: titulo, color: color)
        }*/
    }

}

