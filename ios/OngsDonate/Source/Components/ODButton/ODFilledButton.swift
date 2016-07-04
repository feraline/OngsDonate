//
//  ODFilledButton.swift
//  OngsDonate
//
//  Created by Bruno Isola Reginato on 7/3/16.
//  Copyright © 2016 BReginato. All rights reserved.
//

import Foundation
import UIKit

class ODFilledButton: UIButton {
    //MARK: - Override
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.setupUI()
    }
    
    private func setupUI() {
        self.layer.masksToBounds = true
        self.layer.cornerRadius = self.frame.size.height/2
        self.titleLabel?.font = UIFont.filledButtonFont()
    }
}