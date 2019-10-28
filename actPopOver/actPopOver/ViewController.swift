//
//  ViewController.swift
//  actPopOver
//
//  Created by Layla Tame on 10/17/19.
//  Copyright © 2019 Layla Tame. All rights reserved.
//

import UIKit



class ViewController: UIViewController, UIPopoverPresentationControllerDelegate {

    @IBOutlet weak var tfLabel: UILabel!
    @IBOutlet weak var btnEditar: UIButton!
    
    var dato: String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func adaptivePresentationStyle (for controller:
        UIPresentationController) -> UIModalPresentationStyle {
        return .none
    }
    
    func popoverPresentationControllerDidDismissPopover
        (popoverPresentationController: UIPopoverPresentationController) {
    
    }
    
    func actualizaDato() {
        tfLabel.text = dato
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vistaPopOver = segue.destination as! PopOverViewController
       
        vistaPopOver.popoverPresentationController!.delegate = self
        
        vistaPopOver.texto = tfLabel.text!
        
    }


}

