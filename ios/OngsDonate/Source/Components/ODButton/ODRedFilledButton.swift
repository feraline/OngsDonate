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
        self.backgroundColor = UIColor.ODRedColor()
        self.tintColor = UIColor.whiteColor()
    }
}