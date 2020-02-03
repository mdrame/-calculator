//
//  CustomeUILabel.swift
//  coolStopWatch
//
//  Created by Mohammed Drame on 2/2/20.
//  Copyright © 2020 Mo Drame. All rights reserved.
//

import UIKit

class CircleLabel: UILabel {
    
    

    
      required init(text: String, color: UIColor, frame: CGRect) {
            super.init(frame: frame)
    //        self.color = color
    //        self.setup()
            self.text = text
            self.backgroundColor = color
        }
    
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        self.commonInit()

    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.commonInit()
    }
    
    func commonInit(){
        self.layer.cornerRadius = self.bounds.width/2
        self.clipsToBounds = true
        self.textColor = UIColor.red
//        self.setProperties(1.0, borderColor:UIColor.blackColor())
    }
//    func setProperties(borderWidth: Float, borderColor: UIColor) {
//        self.layer.borderWidth = CGFloat(borderWidth)
//        self.layer.borderColor = borderColor.CGColor
//    }
}
