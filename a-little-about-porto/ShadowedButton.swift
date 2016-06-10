//
//  ShadowedButton.swift
//  a-little-about-porto
//
//  Created by Amadeu Andrade on 10/05/16.
//  Copyright © 2016 Amadeu Andrade. All rights reserved.
//

import UIKit

class ShadowedButton: UIButton {
    
    override func awakeFromNib() {
        self.backgroundColor = UIColor(red: 141.0/255.0, green: 203.0/255.0, blue: 255.0/255.0, alpha: 0.30)
        self.setTitleColor(UIColor.whiteColor(), forState: .Normal)
    }
        
    override var highlighted: Bool {
        didSet {
            if highlighted {
                self.backgroundColor = UIColor(red: 141.0/255.0, green: 203.0/255.0, blue: 255.0/255.0, alpha: 0.35)
            } else {
                self.backgroundColor = UIColor(red: 141.0/255.0, green: 203.0/255.0, blue: 255.0/255.0, alpha: 0.30)
            }
        }
    }
    
}
