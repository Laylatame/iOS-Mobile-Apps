//
//  TableViewController.swift
//  masTableViews
//
//  Created by Layla Tame on 9/22/19.
//  Copyright © 2019 Layla Tame. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var listaEmpleados = [Empleado]()

    override func viewDidLoad() {
        super.viewDidLoad()

        var empleado = Empleado(nombre: "Jorge", sueldo: 12000, foto: UIImage.init(named: "userIcon")!, departamento: "Ventas")
        listaEmpleados.append(empleado)
        empleado = Empleado(nombre: "Silvia", sueldo: 13000, foto: UIImage.init(named: "userIcon")!, departamento: "Compras")
        listaEmpleados.append(empleado)
        empleado = Empleado(nombre: "Patricia", sueldo: 10000, foto: UIImage.init(named: "userIcon")!, departamento: "Ventas")
        listaEmpleados.append(empleado)
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    /*override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }*/
    

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return listaEmpleados.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "idCell") as? CustomTableViewCell{
            cell.label1?.text = listaEmpleados[indexPath.row].nombre
            cell.label2?.text = String(listaEmpleados[indexPath.row].sueldo)
            cell.label3?.text = listaEmpleados[indexPath.row].departamento
         //cell.imagen?.image = UIImage(named: "userIcon")
        }
        
        
        /*
        let cell = tableView.dequeueReusableCell(withIdentifier: "idCell")!
        
        cell.textLabel?.text = listaEmpleados[indexPath.row].nombre
        
        
        
        */

        return UITableViewCell()
    }
    

    
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            listaEmpleados.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    

    
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
        
        let temp = listaEmpleados[fromIndexPath.row]
        listaEmpleados[fromIndexPath.row] = listaEmpleados[to.row]
        listaEmpleados[to.row] = temp

    }
    

    
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 170
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
