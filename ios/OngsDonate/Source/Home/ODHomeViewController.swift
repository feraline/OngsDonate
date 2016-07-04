//
//  ODHomeViewController.swift
//  OngsDonate
//
//  Created by Bruno Isola Reginato on 6/11/16.
//  Copyright © 2016 BReginato. All rights reserved.
//
import UIKit

class ODHomeViewController: ODBaseViewController {
    private let kTabBarSegueIdentifier = "tabBar"
    private var tabToRedirect: ODTab?
    
    //MARK: - Properties
    private var mainView: ODHomeView {
        return self.view as! ODHomeView
    }
    
    //MARK: - Overrides
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        self.mainView.animate()
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == kTabBarSegueIdentifier {
            guard let tabVc = segue.destinationViewController as? ODTabBarController else {return}
            guard let tab = self.tabToRedirect else {return}
            
            tabVc.initialTab = tab
        }
    }
    
    //MARK: - Actions
    
    @IBAction func didSelectMenu(sender: AnyObject) {
        self.tabToRedirect = ODTab.Menu
        self.performSegueWithIdentifier(kTabBarSegueIdentifier, sender: nil)
    }
    
    @IBAction func didSelectCamera(sender: AnyObject) {
        self.tabToRedirect = ODTab.Camera
        self.performSegueWithIdentifier(kTabBarSegueIdentifier, sender: nil)
    }
    
    @IBAction func didSelectShare(sender: AnyObject) {
        self.tabToRedirect = ODTab.Share
        self.performSegueWithIdentifier(kTabBarSegueIdentifier, sender: nil)
    }
}
