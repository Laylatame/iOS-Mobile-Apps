//
//  ViewController.swift
//  lanzaDados
//
//  Created by Layla Tame on 8/26/19.
//  Copyright © 2019 Layla Tame. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgDado1: UIImageView!
    @IBOutlet weak var imgDado2: UIImageView!
    @IBOutlet weak var botonLanzar: UIButton!
    @IBOutlet weak var sum2: UILabel!
    @IBOutlet weak var sum3: UILabel!
    @IBOutlet weak var sum4: UILabel!
    @IBOutlet weak var sum5: UILabel!
    @IBOutlet weak var sum6: UILabel!
    @IBOutlet weak var sum7: UILabel!
    @IBOutlet weak var sum8: UILabel!
    @IBOutlet weak var sum9: UILabel!
    @IBOutlet weak var sum10: UILabel!
    @IBOutlet weak var sum11: UILabel!
    @IBOutlet weak var sum12: UILabel!
    @IBOutlet weak var bar2: UIProgressView!
    @IBOutlet weak var bar3: UIProgressView!
    @IBOutlet weak var bar4: UIProgressView!
    @IBOutlet weak var bar5: UIProgressView!
    @IBOutlet weak var bar6: UIProgressView!
    @IBOutlet weak var bar7: UIProgressView!
    @IBOutlet weak var bar8: UIProgressView!
    @IBOutlet weak var bar9: UIProgressView!
    @IBOutlet weak var bar10: UIProgressView!
    @IBOutlet weak var bar11: UIProgressView!
    @IBOutlet weak var bar12: UIProgressView!
    
    var i2 = 0;
    var i3 = 0;
    var i4 = 0;
    var i5 = 0;
    var i6 = 0;
    var i7 = 0;
    var i8 = 0;
    var i9 = 0;
    var i10 = 0;
    var i11 = 0;
    var i12 = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bar2.setProgress(0, animated: true)
        bar3.setProgress(0, animated: true)
        bar4.setProgress(0, animated: true)
        bar5.setProgress(0, animated: true)
        bar6.setProgress(0, animated: true)
        bar7.setProgress(0, animated: true)
        bar8.setProgress(0, animated: true)
        bar9.setProgress(0, animated: true)
        bar10.setProgress(0, animated: true)
        bar11.setProgress(0, animated: true)
        bar12.setProgress(0, animated: true)
        
    }

    
    @IBAction func generarDados(_ sender: UIButton) {
        let dado1 = Int(arc4random_uniform(6)+1)
        let dado2 = Int(arc4random_uniform(6)+1)
        
        switch dado1 {
        case 1:
            imgDado1.image = UIImage(named: "dado1")
        case 2:
            imgDado1.image = UIImage(named: "dado2")
        case 3:
            imgDado1.image = UIImage(named: "dado3")
        case 4:
            imgDado1.image = UIImage(named: "dado4")
        case 5:
            imgDado1.image = UIImage(named: "dado5")
        case 6:
            imgDado1.image = UIImage(named: "dado6")
        default:
            break;
        }
        
        switch dado2 {
        case 1:
            imgDado2.image = UIImage(named: "dado1")
        case 2:
            imgDado2.image = UIImage(named: "dado2")
        case 3:
            imgDado2.image = UIImage(named: "dado3")
        case 4:
            imgDado2.image = UIImage(named: "dado4")
        case 5:
            imgDado2.image = UIImage(named: "dado5")
        case 6:
            imgDado2.image = UIImage(named: "dado6")
        default:
            break;
        }
        
        
        switch dado1+dado2 {
        case 2:
            i2+=1
            sum2.text = String(i2)
            bar2.setProgress(Float(i2)*0.02, animated: true)
        case 3:
            i3+=1
            sum3.text = String(i3)
            bar3.setProgress(Float(i3)*0.02, animated: true)
        case 4:
            i4+=1
            sum4.text = String(i4)
            bar4.setProgress(Float(i4)*0.02, animated: true)
        case 5:
            i5+=1
            sum5.text = String(i5)
            bar5.setProgress(Float(i5)*0.02, animated: true)
        case 6:
            i6+=1
            sum6.text = String(i6)
            bar6.setProgress(Float(i6)*0.02, animated: true)
        case 7:
            i7+=1
            sum7.text = String(i7)
            bar7.setProgress(Float(i7)*0.02, animated: true)
        case 8:
            i8+=1
            sum8.text = String(i8)
            bar8.setProgress(Float(i8)*0.02, animated: true)
        case 9:
            i9+=1
            sum9.text = String(i9)
            bar9.setProgress(Float(i9)*0.02, animated: true)
        case 10:
            i10+=1
            sum10.text = String(i10)
            bar10.setProgress(Float(i10)*0.02, animated: true)
        case 11:
            i11+=1
            sum11.text = String(i11)
            bar11.setProgress(Float(i11)*0.02, animated: true)
        case 12:
            i12+=1
            sum12.text = String(i12)
            bar12.setProgress(Float(i12)*0.02, animated: true)
        default:
            break
        }
    }
}

