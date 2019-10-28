//
//  ViewControllerLetrero.swift
//  tableView
//
//  Created by Layla Tame on 9/2/19.
//  Copyright © 2019 Layla Tame. All rights reserved.
//

import UIKit

class ViewControllerLetrero: UIViewController {

    @IBOutlet weak var labelOutput: UILabel!
    
    var datoMostrar: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelOutput.text = datoMostrar
    }
    

}
