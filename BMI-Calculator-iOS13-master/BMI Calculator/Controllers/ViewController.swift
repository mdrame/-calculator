//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
 
    

    
    @IBOutlet weak var height: UILabel!
    @IBOutlet weak var weight: UILabel!
    
    @IBOutlet weak var weightsLIDER: UISlider!
    @IBOutlet weak var heightSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let convert = String(format: "%.2f", sender.value)
        height.text? = "\(convert)m"
    }
    
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
//        testing
//        print(sender.value)
        let convert = Int(sender.value)
        weight.text? = "\(convert)kg"
        
    }
    
    @IBAction func calculatePress(_ sender: UIButton) {
        
        let height = heightSlider.value
        let weight = weightsLIDER.value
        
        func calculate(height: Float, width: Float ) -> Float {
            return width / (height * 2)
        }
        
        print(calculate(height: height, width: weight))
        
        
    }
    
}


