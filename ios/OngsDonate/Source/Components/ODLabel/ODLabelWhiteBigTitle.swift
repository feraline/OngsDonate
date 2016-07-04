//
//  ODLabelWhiteBigTitle.swift
//  OngsDonate
//
//  Created by Bruno Isola Reginato on 7/2/16.
//  Copyright © 2016 BReginato. All rights reserved.
//

import Foundation
import UIKit

class ODLabelWhiteBigTitle: UILabel {
    override var text: String? {
        didSet {
            self.attributedText = NSAttributedString.whiteBigTitle(text!)
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.font = UIFont.bigTitleFont()
        self.textColor = UIColor.whiteColor()
    }
}