//
//  ODFont.swift
//  OngsDonate
//
//  Created by Bruno Isola Reginato on 7/2/16.
//  Copyright © 2016 BReginato. All rights reserved.
//

import Foundation
import UIKit

extension UIFont {
    static func filledButtonFont() -> UIFont {
        return UIFont(name: ODFontName.ArimoBold.rawValue, size: 14.0)!
    }
    
    static func titleFont() -> UIFont {
        return UIFont(name: ODFontName.LatoBlack.rawValue, size: 25.0)!
    }
    
    static func bigTitleFont() -> UIFont {
        return UIFont(name: ODFontName.LatoBlack.rawValue, size: 40.0)!
    }
    
    static func subtitleTitleFont() -> UIFont {
        return UIFont(name: ODFontName.Arimo.rawValue, size: 17.0)!
    }
}