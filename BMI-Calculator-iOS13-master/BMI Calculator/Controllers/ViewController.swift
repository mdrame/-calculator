//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var bmiValue = "0.0"
    
    
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
        height.text = "\(convert)m"
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
        
//       let bmi = weight / ( height * height)
        let bmi = weight * height
//       print(bmi)
        bmiValue =  "\(bmi)"
//        print(bmiValue)
       self.performSegue(withIdentifier: "goToResult", sender: self)
   
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.bmiValue = "\(bmiValue)"
        }
    }
    
    
    
}




