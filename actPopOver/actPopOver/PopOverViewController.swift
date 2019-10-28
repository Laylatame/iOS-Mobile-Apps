//
//  PopOverViewController.swift
//  actPopOver
//
//  Created by Layla Tame on 10/17/19.
//  Copyright © 2019 Layla Tame. All rights reserved.
//

import UIKit

//protocol UIPopoverPresentationControllerDelegate {
//
//    func adaptivePresentationStyle (for controller:
//        UIPresentationController) -> UIModalPresentationStyle
//}

class PopOverViewController: UIViewController {

    @IBOutlet weak var tfPopOver: UITextField!
    @IBOutlet weak var btnListo: UIButton!
    
    var texto: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        preferredContentSize = CGSize(width: 250, height: 120)
        
        tfPopOver.text = texto
    }
    
    
    @IBAction func guardarListo(_ sender: UIButton) {
        let vista1 = presentingViewController as! ViewController
        vista1.dato = tfPopOver.text!
        vista1.actualizaDato()
        dismiss(animated: true, completion: nil)
        
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
