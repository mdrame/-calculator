//
//  ViewController.swift
//  coolStopWatch
//
//  Created by Mohammed Drame on 12/2/19.
//  Copyright © 2019 Mo Drame. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var resetOulet: UIButton!
    @IBOutlet var buttonsOutletsCollection: [UIButton]!
    
    func buttonUI() {
        // looping over the buttons collection and setting both their properties the same
        for buttons in buttonsOutletsCollection {
            
            buttons.layer.borderWidth = 2
//            buttons.layer.borderColor = #colorLiteral(red: 0.1212944761, green: 0.1292245686, blue: 0.141699791, alpha: 1)
            buttons.layer.cornerRadius = 60
            buttons.layer.shadowColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            buttons.layer.shadowOffset = CGSize(width: 1.0, height: 9.0)
            buttons.layer.shadowOpacity = 0.9
            buttons.layer.masksToBounds = false
        }
        
        // resetOulet uid
        resetOulet.layer.cornerRadius = 20
        resetOulet.layer.shadowColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        resetOulet.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        resetOulet.layer.shadowOpacity = 2.0
        resetOulet.layer.masksToBounds = false
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // ui
        buttonUI()
    }


}

