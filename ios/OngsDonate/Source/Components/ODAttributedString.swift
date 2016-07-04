//
//  ODAttributedString.swift
//  OngsDonate
//
//  Created by Bruno Isola Reginato on 7/2/16.
//  Copyright © 2016 BReginato. All rights reserved.
//

import Foundation
import UIKit

extension NSAttributedString {
    
    static func redTitle(text: String) -> NSAttributedString {
        let attr = [NSForegroundColorAttributeName: UIColor.ODRedColor(), NSFontAttributeName: UIFont.titleFont()]
        return NSAttributedString(string: text, attributes: attr)
    }
    
    static func grayTitle(text: String) -> NSAttributedString {
        let attr = [NSForegroundColorAttributeName: UIColor.ODGrayColor(), NSFontAttributeName: UIFont.titleFont()]
        return NSAttributedString(string: text, attributes: attr)
    }
    
    static func whiteBigTitle(text: String) -> NSAttributedString {
        let attr = [NSForegroundColorAttributeName: UIColor.whiteColor(), NSFontAttributeName: UIFont.bigTitleFont()]
        return NSAttributedString(string: text, attributes: attr)
    }
    
    static func whiteSubtitle(text: String) -> NSAttributedString {
        let attr = [NSForegroundColorAttributeName: UIColor.whiteColor(), NSFontAttributeName: UIFont.subtitleTitleFont()]
        return NSAttributedString(string: text, attributes: attr)
    }
}
