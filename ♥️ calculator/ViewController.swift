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
        
        
      
    }

    // text view that message dictionary is display in
    @IBOutlet weak var result_text_view: UITextView!
    
    // first user text field
    @IBOutlet weak var userName: UITextField!
    
    // user partner textfield
    @IBOutlet weak var partnerName: UITextField!
    
    // caculate button
    @IBAction func caculate(_ sender: UIButton) {
        
      //create a random varioble to change ever time the vc load
      var randomInt = Int.random(in: 0...100)
        // testing
        //print(randomInt)
        
        
        
        
        
    }
    
    
    
    
    
    


}

