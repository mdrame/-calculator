//
//  ViewController.swift
//  ♥️ calculator
//
//  Created by Mohammed Drame on 10/27/19.
//  Copyright © 2019 Mo Drame. All rights reserved.
//

import UIKit



class ViewController: UIViewController {
    
    let message:Dictionary = [10: "Hmmm this don't sound goood", 20: "I dont see this going any where", 30: "This could work out yah just need some more communication", 40: "You guys nedda go out more offten", 50: "I see alot of optential in this relationship", 60: "Yah is almost there", 70: "Honestly yah nedda take to more serious cause I can see some connection othere", 80: "Love apple", 90: "Almost perfect ♥️", 100: "Perfect couple 🔥"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // making sure user enter user name.
      
      
    }

    // text view that message dictionary is display in
    @IBOutlet weak var result_text_view: UITextView!
    
    // first user text field
    @IBOutlet weak var userName: UITextField!
    
    // user partner textfield
    @IBOutlet weak var partnerName: UITextField!
    
    // calculate button outlet to hide button just incasue user dont enter names, cause logic is base on the ramdon integer not user names.
    @IBOutlet weak var caculateOutlet: UIButton!
    
    // caculate button
    @IBAction func caculate(_ sender: UIButton) {
        
      //create a random varioble to change ever time the vc load
    let randomInt = Int.random(in: 0...100)
        // testing
        //print(randomInt)
        
        
        // print these state
        if randomInt <= 10 {
            result_text_view.text = message[10]
        } else if randomInt <= 20 && randomInt > 10 {
             result_text_view.text = message[20]
        } else if randomInt <= 30 && randomInt > 20 {
             result_text_view.text = message[30]
        } else if randomInt <= 40 && randomInt > 30 {
             result_text_view.text = message[40]
        } else if randomInt <= 50 && randomInt > 40 {
             result_text_view.text = message[50]
        } else if randomInt <= 60 && randomInt > 50 {
             result_text_view.text = message[60]
        } else if randomInt <= 70 && randomInt > 60 {
             result_text_view.text = message[70]
        } else if randomInt <= 80 && randomInt > 70 {
             result_text_view.text = message[80]
        } else if randomInt <= 90 && randomInt > 80 {
             result_text_view.text = message[90]
        } else if randomInt <= 100 && randomInt > 90 {
             result_text_view.text = message[100]
        } else {
            result_text_view.text = " Sorry we can't find your love percentage "
        }
        
 
        
    }
    
    
    
    
    
    


}

