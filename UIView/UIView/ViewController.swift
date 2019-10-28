//
//  ViewController.swift
//  UIView
//
//  Created by Layla Tame on 8/19/19.
//  Copyright © 2019 Layla Tame. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var viewFrame: UIView!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var lemon: UIImageView!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var view2: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func sliderValueChange(_ sender: Any) {
        UIView.animate(withDuration:1){
            self.lemon.frame.origin.x = (CGFloat(self.slider.value) * CGFloat(self.viewFrame.frame.width))
        }
    }
    
    
    @IBAction func changeController(_ sender: Any) {
        switch segmentedControl.selectedSegmentIndex
        {
        case 0:
            UIView.animate(withDuration:1) {
                self.label.frame.origin.x = CGFloat(self.view2.frame.width/10)}
        case 1:
            UIView.animate(withDuration:1) {
                self.label.frame.origin.x = CGFloat(self.view2.frame.width-55)}
        default:
            break
        }
        
        
        
        
    }
    
    
}

