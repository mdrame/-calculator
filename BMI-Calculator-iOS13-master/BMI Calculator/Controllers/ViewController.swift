//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var brain = Brain()
    var background = BackGroundProperties()
    var bmiValue: Double?
    
    
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
//        print("Height \( Double(height)) ")
//        print("Weight \( Double(weight)) ")
        
        // Try to optimiz this code in another struct class its dirty
        if brain.calculate(height: Double(height), weight: Double(weight)) <= 20 {
           bmiValue = brain.calculate(height: Double(height), weight: Double(weight))
            background.background = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
            background.fontColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        } else if brain.calculate(height: Double(height), weight: Double(weight)) <= 50 {
            bmiValue = brain.calculate(height: Double(height), weight: Double(weight))
            background.background = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
            background.fontColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
        } else if brain.calculate(height: Double(height), weight: Double(weight)) <= 500 {
            bmiValue = brain.calculate(height: Double(height), weight: Double(weight))
            background.background = #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)
            background.fontColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
        } else {
            bmiValue = brain.calculate(height: Double(height), weight: Double(weight))
            background.background = #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)
            background.fontColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        }
        
       self.performSegue(withIdentifier: "goToResult", sender: self)
   
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.bmiValue = bmiValue ?? 0.1 // defuault
//            print(bmiValue ?? 0.01)
           // using a ! because I have an if statment make sure background have a value 😀
            destinationVC.viewBackground = background.background!
            destinationVC.fonts = background.fontColor!
        }
    }
    
    
    // unwind Segue
    
   
    
    
}




