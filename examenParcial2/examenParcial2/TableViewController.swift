//
//  TableViewController.swift
//  examenParcial2
//
//  Created by Layla Tame on 10/21/19.
//  Copyright © 2019 Layla Tame. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController, protocoloAgregaNumero {
    
    
    var listaNumeros = [Double]()
    
    func dataFileUrl() -> URL {
        let url = FileManager().urls(for: .documentDirectory, in: .userDomainMask).first!
        let pathArchivo = url.appendingPathComponent("Numeros.plist")
        return pathArchivo
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.obtenerNumeros()
        
        title = "Números"
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return listaNumeros.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "idCell", for: indexPath)

        cell.textLabel?.text = String(listaNumeros[indexPath.row])

        return cell
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let viewAgregar = segue.destination as! ViewController
        viewAgregar.delegado = self
    }
    
    func agregaNumero(num: Double) {
        listaNumeros.append(num)
        tableView.reloadData()
        self.guardarNum(num: num)
    }
    
    func guardarNum(num: Double) {
        do {
            let data = try PropertyListEncoder().encode(listaNumeros)
            try data.write(to: dataFileUrl())
        }
        catch {
            print("Save Failed")
        }
    }
    
    func obtenerNumeros() {
        listaNumeros.removeAll()
        
        do {
            let data = try Data.init(contentsOf: dataFileUrl())
            listaNumeros = try PropertyListDecoder().decode([Double].self, from: data)
        }
        catch {
            print("Error reading or decoding file")
        }
        
        //for num in listaNumeros {
          //  print (num)
        //}
    }
    

}
