//
//  ODLabelWhiteSubtitle.swift
//  OngsDonate
//
//  Created by Bruno Isola Reginato on 7/2/16.
//  Copyright © 2016 BReginato. All rights reserved.
//

import Foundation
import UIKit

class ODLabelWhiteSubtitle: UILabel {
    override var text: String? {
        didSet {
            self.attributedText = NSAttributedString.whiteSubtitle(text!)
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.font = UIFont.subtitleTitleFont()
        self.textColor = UIColor.whiteColor()
    }
}