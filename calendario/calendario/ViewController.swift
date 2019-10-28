//
//  ViewController.swift
//  calendario
//
//  Created by Layla Tame on 8/26/19.
//  Copyright © 2019 Layla Tame. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lAño: UILabel!
    @IBOutlet weak var lMes: UILabel!
    @IBOutlet weak var lFecha: UILabel!
    @IBOutlet weak var lDia: UILabel!
    @IBOutlet var myView: UIView!
    
    
    //dateFormatter.dateStyle = DateFormatterStyle.FullStyle
    //let now = dateFormatter.stringFromDate(Date())
    
    var fecha = Date()
    let formato:DateFormatter = DateFormatter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        formato.dateFormat = "EEEE"
        let weekday = formato.string(from: fecha)
        formato.dateFormat = "yyyy"
        let year = formato.string(from: fecha)
        formato.dateFormat = "MMMM"
        let month = formato.string(from: fecha)
        formato.dateFormat = "dd"
        let day = formato.string(from: fecha)
        
        lAño.text = year
        lMes.text = month
        lFecha.text = day
        lDia.text = weekday
        
        let left = UISwipeGestureRecognizer(target : self, action : #selector(ViewController.leftSwipe))
        left.direction = .left
        self.myView.addGestureRecognizer(left)
        
        let right = UISwipeGestureRecognizer(target : self, action : #selector(ViewController.rightSwipe))
        right.direction = .right
        self.myView.addGestureRecognizer(right)
        
    }
    
    @objc func leftSwipe(){
        let fecha1 = Calendar.current.date(byAdding: .day, value: 1, to: fecha)
        
        formato.dateFormat = "EEEE"
        let weekday = formato.string(from: fecha1!)
        formato.dateFormat = "yyyy"
        let year = formato.string(from: fecha1!)
        formato.dateFormat = "MMMM"
        let month = formato.string(from: fecha1!)
        formato.dateFormat = "dd"
        let day = formato.string(from: fecha1!)
        
        lAño.text = year
        lMes.text = month
        lFecha.text = day
        lDia.text = weekday
        fecha = fecha1!
    }
    
    @objc func rightSwipe(){
        let fecha1 = Calendar.current.date(byAdding: .day, value: -1, to: fecha)
        
        formato.dateFormat = "EEEE"
        let weekday = formato.string(from: fecha1!)
        formato.dateFormat = "yyyy"
        let year = formato.string(from: fecha1!)
        formato.dateFormat = "MMMM"
        let month = formato.string(from: fecha1!)
        formato.dateFormat = "dd"
        let day = formato.string(from: fecha1!)
        
        lAño.text = year
        lMes.text = month
        lFecha.text = day
        lDia.text = weekday
        fecha = fecha1!
        
    }

    
}

