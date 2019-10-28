//
//  ViewController.swift
//  tableView
//
//  Created by Layla Tame on 9/2/19.
//  Copyright © 2019 Layla Tame. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet weak var tableView: UITableView!
    
    var lista = ["a", "b", "c", "d", "e"]
    var lista2 = [String]() //Crear una lista vacia
    var lista3 : [String]! //Crea un objeto que apunta a una lista pero la lusta no existe falta crear el objeto lista

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: - Métodos de Data Source y Delegate de Table View
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lista.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "idCell")!
        celda.textLabel?.text = lista[indexPath.row]
        celda.detailTextLabel?.text = "\(indexPath.row)"
        celda.imageView?.image = UIImage(named: "userIcon")
        return celda;
    }
    
    //MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        
        let vistaSig = segue.destination as! ViewControllerLetrero
        
        let indice = tableView.indexPathForSelectedRow!
        
        vistaSig.datoMostrar = lista[indice.row]
    }
    

}

