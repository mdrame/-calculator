//
//  ViewController.swift
//  coolStopWatch
//
//  Created by Mohammed Drame on 12/2/19.
//  Copyright © 2019 Mo Drame. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    // MARK: -> Outlets
    @IBOutlet weak var resetOulet: UIButton!
    @IBOutlet var buttonsOutletsCollection: [UIButton]!
    @IBOutlet weak var secondLable: UILabel!
    @IBOutlet weak var minuteLabel: UILabel!
    @IBOutlet weak var hourLabel: UILabel!
    @IBOutlet weak var playButtonOutlet: UIButton!
    @IBOutlet weak var pauseButtonOutlet: UIButton!
    
    var putLabel: CircleLabel!
    
    
   
    // MARK: -> Global Variables
    var timer = Timer()
    var time: Int = 0
    var isPlay = false
    
    var minutes: Int =  0
    var hours: Int = 0
    
    
    
    
    // MARK: -> Global Function
    func timerCounting() {
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(changeLables), userInfo: nil, repeats: true)
        
    }
    
    // this function runs ever time the time move by a second
    @objc func changeLables() {
        time += 1
        secondLable.text = "\(time)"
        //        print("test pass")
        // Write a code so that when timmer reach 60 the munite label incrementa and also the for the hour
        
        switch time {
        case 60:
            time = 0
            minutes += 1
            minuteLabel.text = "\(minutes)"
        default:
            print(" Times reach 60 but expected code did not run")
        }
        
        switch minutes {
        case 60
            :
            minutes = 0
            hours += 1
            minuteLabel.text = "\(00)"
            hourLabel.text = "\(hours)"
        default:
            print(" Minutes reach 60 but expected code did not run")
        }
        
    }
    
    
    // MARK: -> ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        // ui
        buttonUI()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    
    // MARK: -> Actions
    @IBAction func resetPressed(_ sender: UIButton) {
        // stop time
        timer.invalidate()
        
        // resetting Variable
        time = 0
        minutes = 0
        hours = 0
        
        // resetting labels
        secondLable.text = "00"
        minuteLabel.text = "00"
        hourLabel.text = "00"
        isPlay = false
        
        pauseButtonPressed()
    }
    
    
    func playButtonPressed() {
        
        // if isPlay is true  activate pause button and unactivate playbutton
        playButtonOutlet.alpha = isPlay ? 0.5 : 1
        // WTF 
        playButtonOutlet.isEnabled = false
        pauseButtonOutlet.alpha = isPlay ?  1 : 0.5
        pauseButtonOutlet.isEnabled = true
    }
    
    func pauseButtonPressed() {
        // if isPlay is false  activate play button and unactivate pause button
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










extension ViewController {
    
    
    
    // MARK: -> Styling
    /// This function style the reset button.
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
       
    
    
    
    
    
}




