//
//  ViewController.swift
//  slotMachine
//
//  Created by Layla Tame on 10/13/19.
//  Copyright © 2019 Layla Tame. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    

    @IBOutlet weak var pvSlot: UIPickerView!
    @IBOutlet weak var btGo: UIButton!
    @IBOutlet weak var btReset: UIButton!
    
    var slot1 : [[UIImage]] = [[UIImage]]()
    var slot2 : [UIImage] = Array()
    var slot3 : [UIImage] = Array()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        pvSlot.delegate = self
        pvSlot.dataSource = self
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 3
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {

        return 6 //slot1[0].count
    }
    
    
    //NO SE SI SEA NECESARIO
    
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 80
    }
    
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        
        var myImageView = UIImageView()
        
        switch row {
        case 0:
            myImageView = UIImageView(image: UIImage(named:"apple"))
        case 1:
            myImageView = UIImageView(image: UIImage(named:"bar"))
        case 2:
            myImageView = UIImageView(image: UIImage(named:"seven"))
        case 3:
            myImageView = UIImageView(image: UIImage(named:"crown"))
        case 4:
            myImageView = UIImageView(image: UIImage(named:"cherry"))
        case 5:
            myImageView = UIImageView(image: UIImage(named:"lemon"))
        default:
            myImageView.image = nil
            
            return myImageView
        }
        return myImageView
    }
    
    @IBAction func play(_ sender: UIButton) {
        
        let position = Int(arc4random_uniform(6))
        let position2 = Int(arc4random_uniform(6))
        let position3 = Int(arc4random_uniform(6))
        
        
        pvSlot.selectRow(position, inComponent: 0, animated: true)
        pvSlot.selectRow(position2, inComponent: 1, animated: true)
        pvSlot.selectRow(position3, inComponent: 2, animated: true)

        pvSlot.showsSelectionIndicator = true
        
        if (position == position2) && (position == position3) {
            
            //myT.invalidate()
            
            let alert = UIAlertController(title: "Ganaste!", message: "Felicidades!", preferredStyle: .alert)
            let buttonOK = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)

            alert.addAction(buttonOK)
            
            present(alert, animated: true, completion: nil)
        }
        
    }
    
    
    @IBAction func resetGame(_ sender: UIButton) {
        pvSlot.selectRow(0, inComponent: 0, animated: true)
        pvSlot.selectRow(0, inComponent: 1, animated: true)
        pvSlot.selectRow(0, inComponent: 2, animated: true)
    }
    

}

