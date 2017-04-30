//
//  CustomNavigationController.swift
//  20170429TestStatusBar
//
//  Created by hw on 2017/4/30.
//  Copyright © 2017年 GaiaMagic. All rights reserved.
//

import UIKit

class CustomNavigationController: UINavigationController {
    
    var statusBarStyle: UIStatusBarStyle = .default
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.handleTabbarAction()
    }
    
    func handleTabbarAction() {
        
        let tabarController = self.topViewController as! CustomTabBarController
        tabarController.selectedAction = { (selectIndex: Int) -> Void in
                         
            if selectIndex == 0 {
                self.statusBarStyle = .lightContent
            } else {
                self.statusBarStyle = .default
            }
        }
    }
    
    override var preferredStatusBarStyle : UIStatusBarStyle {
        return self.statusBarStyle
    }
}
