//
//  ODTabViewController.swift
//  OngsDonate
//
//  Created by Bruno Isola Reginato on 7/2/16.
//  Copyright © 2016 BReginato. All rights reserved.
//

import Foundation
import UIKit

class ODTabBarController: UITabBarController {
    //MARK: - Properties
    var initialTab: ODTab = ODTab.Menu
    private let kMenuImageName = "Menu"
    private let kMenuSelectedImageName = "MenuRed"
    
    private let kCameraImageName = "CameraGray"
    private let kCameraSelectedImageName = "MenuRed"
    
    private let kShareImageName = "ShareGray"
    private let kShareSelectedImageName = "MenuRed"
    
    //MARK: - Overrides
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.configureTabItens()
        self.selectedIndex = initialTab.rawValue
    }
    
    //MARK: - Private methods
    private func configureTabItens() {
        guard let itens = self.tabBar.items else {return}
        let menuItem = itens[0]
        let cameraItem = itens[1]
        let shareItem = itens[2]
        
        let imageItemInset = UIEdgeInsets(top: 5,left: 0,bottom: -5,right: 0)
        
        
        // Menu Item
        menuItem.imageInsets = imageItemInset
        menuItem.title = ""
        menuItem.image = UIImage(named: kMenuImageName)?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        menuItem.selectedImage = UIImage(named: kMenuSelectedImageName)?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        
        // Camera Item
        cameraItem.imageInsets = imageItemInset
        cameraItem.title = ""
        cameraItem.image = UIImage(named: kCameraImageName)?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        cameraItem.selectedImage = UIImage(named: kCameraSelectedImageName)?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        
        // Share
        shareItem.imageInsets = imageItemInset
        shareItem.title = ""
        shareItem.image = UIImage(named: kShareImageName)?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        shareItem.selectedImage = UIImage(named: kShareSelectedImageName)?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        
        //
        self.tabBar.translucent = false
        self.tabBar.backgroundColor = UIColor.clearColor()
    }
}

enum ODTab : Int {
    case Menu = 0
    case Camera = 1
    case Share = 2
}