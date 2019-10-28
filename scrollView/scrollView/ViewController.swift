//
//  ViewController.swift
//  scrollView
//
//  Created by Layla Tame on 10/17/19.
//  Copyright © 2019 Layla Tame. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var vistaVerde: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    func viewForZooming(in scrollview: UIScrollView) -> UIView? {
        return vistaVerde
    }


}

