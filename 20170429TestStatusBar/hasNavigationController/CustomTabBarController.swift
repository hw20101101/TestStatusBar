//
//  CustomTabBarController.swift
//  20170429TestStatusBar
//
//  Created by hw on 2017/4/30.
//  Copyright © 2017年 GaiaMagic. All rights reserved.
//

import UIKit

//定义闭包
typealias TabBarSelectClustomType = (_ selectIndex: Int) -> Void

class CustomTabBarController: UITabBarController {
    
    var selectedAction: TabBarSelectClustomType?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.initViewControllers()
    }
    
    func initViewControllers() {
        
        let firstVC = FirstViewController()         
        firstVC.tabBarItem = UITabBarItem.init(title: "first", image: UIImage.init(named: "home"), tag: 0)
        
        let secondVC = SecondViewController()
        secondVC.tabBarItem = UITabBarItem.init(title: "first", image: UIImage.init(named: "shop"), tag: 1)
        self.viewControllers = [firstVC, secondVC]
    }
    
    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        
        if self.selectedAction != nil {
            self.selectedAction!(self.selectedIndex)
        }
    }
    
    // MARK: show StatusBar
    override var prefersStatusBarHidden: Bool {
        return false
    }
}
