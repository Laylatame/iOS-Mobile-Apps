//
//  TableViewControllerActividades.swift
//  protocolosParaCompletar
//
//  Created by Yolanda Martinez on 9/24/19.
//  Copyright © 2019 com.itesm. All rights reserved.
//

import UIKit

class TableViewControllerActividades: UITableViewController {

    var listaAct = [Actividad]()
    var index: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let act1 = Actividad(nombreAct: "Tarea 1", calif: 100, coment: "Sacó 100")
        let act2 = Actividad(nombreAct: "Examen 1", calif: 90, coment: "Sacó 90")
        let act3 = Actividad(nombreAct: "Tarea 2", calif: 80, coment: "Sacó 80")
        listaAct += [act1, act2, act3]
        
        title = "Actividades"
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listaAct.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "idCell")!
        
        cell.textLabel?.text = listaAct[indexPath.row].nombreAct
        cell.detailTextLabel?.text = String(listaAct[indexPath.row].calif)
        
        return cell
    }
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    func calificaAlumno(nombre: String, Calificacion: Int, Comentarios Comentatios: String) {
        let actividad = Actividad(nombreAct: nombre, calif: Calificacion, coment: Comentatios)
        
        listaAct[index].nombreAct = actividad.nombreAct
        listaAct[index].calif = actividad.calif
        listaAct[index].coment = actividad.coment
        
        tableView.reloadData()
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let vistaSig = segue.destination as! ViewController
        let indice = tableView.indexPathForSelectedRow!
        
        
        vistaSig.mostrarNombreAct = listaAct[indice.row].nombreAct
        vistaSig.mostrarCalif = listaAct[indice.row].calif
        vistaSig.mostrarComent = listaAct[indice.row].coment
        index = indice.row

    }
    

}
