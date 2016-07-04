//
//  ODProfileImageView.swift
//  OngsDonate
//
//  Created by Bruno Isola Reginato on 7/2/16.
//  Copyright © 2016 BReginato. All rights reserved.
//

import Foundation
import UIKit

class ODProfileImageView: UIImageView {
    //MARK: - Override
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.layer.masksToBounds = true
        self.layer.cornerRadius = self.frame.size.height/2
    }
}