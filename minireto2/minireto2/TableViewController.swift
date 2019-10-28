//
//  TableViewController.swift
//  minireto2
//
//  Created by Layla Tame on 9/29/19.
//  Copyright © 2019 Layla Tame. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController, administraCategorias {
    
    var listaCategorias = [Categoria]()
    var posiblesColores = [UIColor.blue, UIColor.green, UIColor.purple, UIColor.red, UIColor.yellow, UIColor.orange, UIColor.cyan]
    var index : Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var categ = Categoria(titulo: "Rojo", color: UIColor.red)
        listaCategorias.append(categ)
        categ = Categoria(titulo: "Verde", color: UIColor.green)
        listaCategorias.append(categ)
        
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return listaCategorias.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        cell.textLabel?.text = listaCategorias[indexPath.row].titulo
        cell.backgroundColor = listaCategorias[indexPath.row].color.withAlphaComponent(0.75)
        
        return cell
    }
    
    func agregaCategoria(titulo: String, color: UIColor) {
        let categ = Categoria(titulo: titulo, color: color)
        NSLog("Agrega - Row number: \(categ.titulo)!");
        listaCategorias.append(categ)
        //listaCategorias[index].titulo = categ.titulo
        //listaCategorias[index].color = categ.color
        
        tableView.reloadData()
    }
    
    
    func modificaCategoria(color: UIColor) {
    
        NSLog("Modifica - Row number: ");
        
        listaCategorias[index].color = color
        tableView.reloadData()
        
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vistaSig = segue.destination as! ViewController
        let indexPath = tableView.indexPathForSelectedRow
        
        vistaSig.posiblesColores = posiblesColores
        //vistaSig.tituloSent = listaCategorias[(indexPath?.row)!].titulo
        
        //if segue.identifier == "modifyCell" {
            
            vistaSig.delegado = self
            index = indexPath?.row
        //}
        //if segue.identifier == "addCell" {

          //  vistaSig.delegado = self
            //index = indexPath?.row
        //}
    }

}
