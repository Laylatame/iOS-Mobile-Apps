//
//  ViewController.swift
//  ejerPersistenciaPlist
//
//  Created by Layla Tame on 9/30/19.
//  Copyright © 2019 Layla Tame. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dato1: UITextField!
    @IBOutlet weak var dato2: UITextField!
    @IBOutlet weak var dato3: UITextField!
    @IBOutlet weak var dato4: UITextField!
    
    func dataFilePath() -> String {
        
        let urls = FileManager().urls(for: .documentDirectory, in: .userDomainMask).first!
        
        let pathArchivo = urls.appendingPathComponent("dataFile.plist")
        
        return pathArchivo.path
    }
    
    @IBAction func aplicacionSeVaBackground(notificacion: NSNotification){
        
        let arreglo: NSMutableArray = []
        
        arreglo.add(dato1.text!)
        arreglo.add(dato2.text!)
        arreglo.add(dato3.text!)
        arreglo.add(dato4.text!)
        
        arreglo.write(toFile: dataFilePath(), atomically: true)

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        if FileManager.default.fileExists(atPath: dataFilePath()){
            let arreglo = NSArray(contentsOfFile: dataFilePath())
            
            dato1.text = arreglo?[0] as? String
            dato2.text = arreglo?[1] as? String
            dato3.text = arreglo?[2] as? String
            dato4.text = arreglo?[3] as? String
        }
        
        //Registrar para recibir la notificacion
        let app = UIApplication.shared
        NotificationCenter.default.addObserver(self, selector: #selector(aplicacionSeVaBackground(notificacion:)), name: UIApplication.willResignActiveNotification, object: app)
    }


}

