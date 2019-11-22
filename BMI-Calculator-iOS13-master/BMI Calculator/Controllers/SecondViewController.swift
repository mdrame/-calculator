//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by Mohammed Drame on 11/21/19.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var secondVCLabel: UILabel!
    var bmiValue: String?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        secondVCLabel.text = bmiValue
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func recalculate(_ sender: UIButton) {
        
        
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
