//
//  ODMainNavigationController.swift
//  OngsDonate
//
//  Created by Bruno Isola Reginato on 7/2/16.
//  Copyright © 2016 BReginato. All rights reserved.
//

import Foundation
import UIKit

class  ODMainNavigationController : UINavigationController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ODControlFlow.sharedInstance.mainNavigation = self
    }
}