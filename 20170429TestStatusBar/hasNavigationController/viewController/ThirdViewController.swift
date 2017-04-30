//
//  ThirdViewController.swift
//  20170429TestStatusBar
//
//  Created by hw on 2017/4/30.
//  Copyright © 2017年 GaiaMagic. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        self.customLeftBarButtonItem()
    }
    
    // MARK: 自定义导航栏左边的返回按钮
    func customLeftBarButtonItem() {
        
        let image = UIImage.init(named: "leftArrow")
        let customView = UIButton()
        customView.setImage(image, for: .normal)
        customView.addTarget(self, action: #selector(leftItemOnClick), for: .touchUpInside)
        customView.frame = CGRect.init(x: 0, y: 0, width: 12, height: 18)
        let leftItem = UIBarButtonItem.init(customView: customView)
        self.navigationItem.leftBarButtonItem = leftItem
    }
    
    func leftItemOnClick() {
        let navigationController = self.navigationController as! CustomNavigationController
        navigationController.statusBarStyle = .lightContent
        navigationController.popViewController(animated: true)
    }
}
