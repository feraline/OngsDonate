//
//  ODRedFilledButton.swift
//  OngsDonate
//
//  Created by Bruno Isola Reginato on 7/4/16.
//  Copyright © 2016 BReginato. All rights reserved.
//

import Foundation
import UIKit

class ODRedFilledButton: ODFilledButton {
    
    //MARK: - Override
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.setupUI()
    }
    
    private func setupUI() {
        self.layer.borderWidth = 1.0
        self.layer.borderColor = UIColor.ODRedColor().CGColor
        
        self.setBackgroundImage(UIImage.fromColor(UIColor.ODRedColor()), forState: .Normal)
        self.setBackgroundImage(UIImage.fromColor(UIColor.clearColor()), forState: .Disabled)
        
        self.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        self.setTitleColor(UIColor.ODRedColor(), forState: .Disabled)
    }
}