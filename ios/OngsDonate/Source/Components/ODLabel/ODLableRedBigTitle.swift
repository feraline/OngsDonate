//
//  ODLableRedBigTitle.swift
//  OngsDonate
//
//  Created by Bruno Isola Reginato on 7/3/16.
//  Copyright © 2016 BReginato. All rights reserved.
//

import Foundation
import UIKit

class ODLabelRedBigTitle: UILabel {
    override var text: String? {
        didSet {
            self.attributedText = NSAttributedString.redTitle(text!)
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.font = UIFont.titleFont()
        self.textColor = UIColor.ODRedColor()
    }
}