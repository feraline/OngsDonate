//
//  ODShareViewController.swift
//  OngsDonate
//
//  Created by Bruno Isola Reginato on 7/3/16.
//  Copyright © 2016 BReginato. All rights reserved.
//

import Foundation
import UIKit

class ODShareViewController: ODBaseViewController {
    private var mainView: ODSharedView {
        return self.view as! ODSharedView
    }
    private var socialMedia: [ODSocialMedia] = []
    
    @IBAction func close(sender: AnyObject) {
        ODControlFlow.sharedInstance.mainNavigation?.dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func linkedin(sender: AnyObject) {
        if let index = socialMedia.indexOf(ODSocialMedia.Linkedin) {
            socialMedia.removeAtIndex(index)
        } else {
            socialMedia.append(ODSocialMedia.Linkedin)
        }
        
        self.mainView.checkButtons(self.socialMedia)
    }
    
    @IBAction func facebook(sender: AnyObject) {
        if let index = socialMedia.indexOf(ODSocialMedia.Facebook) {
            socialMedia.removeAtIndex(index)
        } else {
            socialMedia.append(ODSocialMedia.Facebook)
        }
        
        self.mainView.checkButtons(self.socialMedia)
    }
    
    @IBAction func twitter(sender: AnyObject) {
        if let index = socialMedia.indexOf(ODSocialMedia.Twitter) {
            socialMedia.removeAtIndex(index)
        } else {
            socialMedia.append(ODSocialMedia.Twitter)
        }
        
        self.mainView.checkButtons(self.socialMedia)
    }
}