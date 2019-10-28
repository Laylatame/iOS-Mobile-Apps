//
//  ViewControllerSexto.swift
//  tabbedApp
//
//  Created by Layla Tame on 10/7/19.
//  Copyright © 2019 Layla Tame. All rights reserved.
//

import UIKit

class ViewControllerSexto: UIViewController {

    @IBOutlet weak var lbMensaje: UILabel!
    
    var datoMostrar : String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lbMensaje.text = datoMostrar
        
        // Do any additional setup after loading the view.
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
