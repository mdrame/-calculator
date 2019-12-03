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
    @IBOutlet weak var labelOutlet: UILabel!
    @IBOutlet weak var playButtonOutlet: UIButton!
    @IBOutlet weak var pauseButtonOutlet: UIButton!
    
    
    
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
    
    // Variables
    var timer = Timer()
    var time: Float = 0
    var isPlay = false
    
   
    
    
    func timerCounting() {
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(changeLables), userInfo: nil, repeats: true)
        
    }
    
    // this function funs ever time the time move by a second
    @objc func changeLables() {
        time += 1
        labelOutlet.text = "00.\(time)"
//        print("test pass")
        // add breathing animation like a wave 🥰
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // ui
        buttonUI()
        
        // unable pause button when code run's for the first time
        pauseButtonPressed()
        

       
      
    }
    
    func playButtonPressed() {
        playButtonOutlet.alpha = isPlay ? 0.5 : 1
        // WTF Thinary
        playButtonOutlet.isEnabled = false
        pauseButtonOutlet.alpha = isPlay ?  1 : 0.5
        pauseButtonOutlet.isEnabled = true
    }
    
    func pauseButtonPressed() {
        
        pauseButtonOutlet.alpha = isPlay ? 1 : 0.5
        pauseButtonOutlet.isEnabled = false
        playButtonOutlet.alpha = isPlay ? 0.5 : 1
        playButtonOutlet.isEnabled = true
        
    }
 
    
    
    @IBAction func play_and_pause_button(_ sender: UIButton) {
        
        isPlay.toggle() // toggle change the state of a bool for ever time the action is excuted
       
//        timmerOn.toggle() // changing the state of the timmerOn bootle to true and false ever time the button is tap
        switch sender.tag {
        case 0:
            
            timerCounting()
            playButtonPressed()
            print(isPlay)
            
          
        default:
            timer.invalidate()
            pauseButtonPressed()
            
        }
        
        
        
    }
    
    
    


}




