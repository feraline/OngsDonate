//
//  ODShareView.swift
//  OngsDonate
//
//  Created by Bruno Isola Reginato on 7/3/16.
//  Copyright © 2016 BReginato. All rights reserved.
//

import Foundation
import UIKit

class ODSharedView: ODBaseView {
    @IBOutlet weak private var twitterLabel: ODLabelGrayBigTitle!
    @IBOutlet weak private var linkedinLabel: ODLabelGrayBigTitle!
    @IBOutlet weak private var facebookLabel: ODLabelGrayBigTitle!
    
    @IBOutlet weak private var checkTwitter: UIImageView!
    @IBOutlet weak private var checkFacebook: UIImageView!
    @IBOutlet weak private var checkLinkedin: UIImageView!
    
    @IBOutlet weak private var shareButton: ODRedFilledButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        checkTwitter.hidden = true
        checkFacebook.hidden = true
        checkLinkedin.hidden = true
    }
    
    func checkButtons(socialMedias: [ODSocialMedia]) {
        facebookLabel.textColor = UIColor.ODGrayColor()
        checkFacebook.hidden = true
        
        twitterLabel.textColor = UIColor.ODGrayColor()
        checkTwitter.hidden = true
        
        linkedinLabel.textColor = UIColor.ODGrayColor()
        checkLinkedin.hidden = true

        
        for media in socialMedias {
            switch media {
            case .Facebook:
                facebookLabel.textColor = UIColor.ODRedColor()
                checkFacebook.hidden = false
            case .Twitter:
                twitterLabel.textColor = UIColor.ODRedColor()
                checkTwitter.hidden = false
            case .Linkedin:
                linkedinLabel.textColor = UIColor.ODRedColor()
                checkLinkedin.hidden = false
            }
        }
        
        let enableButton = socialMedias.count > 0
        shareButton.enabled = enableButton
    }
}

enum ODSocialMedia {
    case Facebook
    case Twitter
    case Linkedin
}
