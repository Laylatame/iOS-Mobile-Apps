//
//  ViewController.swift
//  cargarDatosPlist
//
//  Created by Layla Tame on 9/9/19.
//  Copyright © 2019 Layla Tame. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var lbTipo: UILabel!
    @IBOutlet weak var lbCapacidad: UILabel!
    @IBOutlet weak var lbPrecio: UILabel!
    @IBOutlet weak var imgFoto: UIImageView!
    
    var arrDiccionarios : NSArray!
    //Creo la variable pero no existe el objeto
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let path = Bundle.main.path(forResource: "PropertyList", ofType: "plist")
        
        arrDiccionarios = NSArray(contentsOfFile: path!)
    }

    //MARK: - Métodos de Table View
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrDiccionarios.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda")!
        
        let dic = arrDiccionarios[indexPath.row] as! NSDictionary
        
        cell.textLabel?.text = dic["tipo"] as! String
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let dic = arrDiccionarios[indexPath.row] as! NSDictionary
        
        lbTipo.text = dic["tipo"] as! String
        lbCapacidad.text = dic["capacidad"] as! String
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        
        let precioNSNumber = dic["precio"] as! NSNumber
        lbPrecio.text = formatter.string(from: precioNSNumber)
        
        let sUrl = dic["urlFoto"] as! String
        let url = URL(string: sUrl)!
        let imgData = NSData(contentsOf: url)!
        imgFoto.image = UIImage(data: imgData as Data)
    }

}

