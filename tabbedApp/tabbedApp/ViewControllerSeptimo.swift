//
//  ViewControllerSeptimo.swift
//  tabbedApp
//
//  Created by Layla Tame on 10/7/19.
//  Copyright © 2019 Layla Tame. All rights reserved.
//

import UIKit

class ViewControllerSeptimo: UIViewController {

    @IBOutlet weak var tfDatoLogin: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let nav = segue.destination as! UINavigationController
        
        let tableViewCont = nav.topViewController as! TableViewControllerQuinto
        
        tableViewCont.datoLogin = tfDatoLogin.text!
    }
    

}
