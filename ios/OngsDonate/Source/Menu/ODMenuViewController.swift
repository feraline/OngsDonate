//
//  ODMenuViewController.swift
//  OngsDonate
//
//  Created by Bruno Isola Reginato on 7/2/16.
//  Copyright © 2016 BReginato. All rights reserved.
//

import Foundation
import UIKit

class ODMenuViewController : ODBaseViewController {
    private let kCellIdentifier = "cell"
    private let menuItens = ["PERFIL",
    "SOBRE",
    "MEU HISTÓRICO",
    "MINHAS ONGs",
    "CONVIDAR ONG",
    "DOAR CUPOM",
    "LOGOUT"]
    
    
    @IBAction func close(sender: AnyObject) {
        ODControlFlow.sharedInstance.mainNavigation?.dismissViewControllerAnimated(true, completion: nil)
    }
}

// MARK: - UITableViewDelegate
extension ODMenuViewController : UITableViewDelegate {
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print("Did select: \(menuItens[indexPath.row])")
    }
}

// MARK: - UITableViewDataSource
extension ODMenuViewController : UITableViewDataSource {
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuItens.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(kCellIdentifier) as? ODMenuItemCell
        cell?.titleLabel?.text = menuItens[indexPath.row]
        
        return cell ?? UITableViewCell()
    }
}