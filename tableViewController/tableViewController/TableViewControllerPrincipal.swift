//
//  TableViewControllerPrincipal.swift
//  tableViewController
//
//  Created by Layla Tame on 9/12/19.
//  Copyright © 2019 Layla Tame. All rights reserved.
//

import UIKit

class TableViewControllerPrincipal: UITableViewController{

    
    var listaJugadores = [Jugador]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        var jugador = Jugador(nombre: "Juan", puntos: 2800, email: "juan@gmail.com")
        listaJugadores.append(jugador)
        jugador = Jugador(nombre: "Carolina", puntos: 2300, email: "caro@gmail.com")
        listaJugadores.append(jugador)
        jugador = Jugador(nombre: "Karla", puntos: 3100, email: "karla@gmail.com")
        listaJugadores.append(jugador)
    
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listaJugadores.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "idCell")!
        
        cell.textLabel?.text = listaJugadores[indexPath.row].nombre
        cell.detailTextLabel?.text = "\(indexPath.row)"
        cell.imageView?.image = UIImage(named: "userIcon")

        return cell
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        let vistaSig = segue.destination as! ViewController
        
        let indice = tableView.indexPathForSelectedRow!
        
        vistaSig.mostrarNombre = listaJugadores[indice.row].nombre
        vistaSig.mostrarPuntos = listaJugadores[indice.row].puntos
        vistaSig.mostrarEmail = listaJugadores[indice.row].email
    }

}
