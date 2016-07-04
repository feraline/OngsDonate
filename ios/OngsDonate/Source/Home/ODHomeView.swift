//
//  ODHomeView.swift
//  OngsDonate
//
//  Created by Bruno Isola Reginato on 6/11/16.
//  Copyright © 2016 BReginato. All rights reserved.
//
import UIKit

class ODHomeView: ODBaseView {
    //MARK: - Constants
    private let kHighConstraintPriority: UILayoutPriority = 999
    private let kLowConstraintPriority: UILayoutPriority = 1
    
    private let kFinalLogoHeight: CGFloat = 90
    private let kFinalLogoWidth: CGFloat = 90
    
    //MARK: - Constraints
    @IBOutlet private weak var logoTopConstraint: NSLayoutConstraint!
    @IBOutlet private weak var logoLeftConstraint: NSLayoutConstraint!
    @IBOutlet private weak var horizontalAlignLogo: NSLayoutConstraint!
    @IBOutlet private weak var verticalAlignLogo: NSLayoutConstraint!
    @IBOutlet private weak var logoHeight: NSLayoutConstraint!
    @IBOutlet private weak var logoWidth: NSLayoutConstraint!
    
    //MARK: - Constraints fake tabbar
    @IBOutlet private weak var item1WidthConstraint: NSLayoutConstraint!
    @IBOutlet private weak var item2WidthContraint: NSLayoutConstraint!
    @IBOutlet private weak var item3WidthConstraint: NSLayoutConstraint!
    @IBOutlet private weak var bottomTabbarConstraint: NSLayoutConstraint!
    
    @IBOutlet private weak var greetingsLabel: UILabel!
    @IBOutlet private weak var helpLabel: UILabel!
    
    //MARK: - Public methods
    func animate() {
        self.adjustWidthTabbar()
        self.animateLogo()
    }
    
    //MARK: - Private methods
    private func animateLogo() {
        //centering align
        self.horizontalAlignLogo.priority = self.kLowConstraintPriority
        self.verticalAlignLogo.priority = self.kLowConstraintPriority
        
        // left align
        self.logoTopConstraint.priority = self.kHighConstraintPriority
        self.logoLeftConstraint.priority = self.kHighConstraintPriority
        
        //size
        self.logoHeight.constant = self.kFinalLogoHeight
        self.logoWidth.constant = self.kFinalLogoWidth
        
        UIView.animateWithDuration(1.0, delay: 0.3, options: .CurveEaseIn, animations: {
             self.layoutIfNeeded()
            
        }, completion: { complete in
            self.animateTabbar()
            self.animateLabels()
        })
    }
    
    private func animateLabels() {
        UIView.animateWithDuration(0.4, animations: { 
            self.greetingsLabel.alpha = 1
        })
        
        UIView.animateWithDuration(0.4, delay: 0.3, options: .CurveEaseIn , animations: {
            self.helpLabel.alpha = 1
        }, completion: nil)
    }
    
    private func animateTabbar() {
        bottomTabbarConstraint.constant = 0
        
        UIView.animateWithDuration(0.4) { 
            self.layoutIfNeeded()
        }
    }
    
    private func adjustWidthTabbar() {
        let width: CGFloat = frame.size.width/3
        
        item1WidthConstraint.constant = width
        item2WidthContraint.constant = width
        item3WidthConstraint.constant = width
        
        self.layoutIfNeeded()
    }
    
    //MARK: - Actions
    
}
