//
//  ODLabelGrayBigTitle.swift
//  OngsDonate
//
//  Created by Bruno Isola Reginato on 7/2/16.
//  Copyright © 2016 BReginato. All rights reserved.
//

import Foundation
import UIKit

class ODLabelGrayBigTitle: UILabel {
    override var text: String? {
        didSet {
            self.attributedText = NSAttributedString.grayTitle(text!)
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.font = UIFont.titleFont()
        self.textColor = UIColor.ODGrayColor()
    }
}