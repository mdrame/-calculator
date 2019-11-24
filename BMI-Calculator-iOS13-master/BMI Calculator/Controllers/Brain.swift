//
//  Brain.swift
//  BMI Calculator
//
//  Created by Mohammed Drame on 11/22/19.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import Foundation


struct Brain {
    
// Changable function 
    mutating func calculate(height: Double, weight: Double) -> Double {
        
        let bmi = weight  * height 
//        print("BMI Value:  \(bmi) ")
        return bmi // BMI should returhn Double
    }
    
    
   
    
    
    
    
    
}
