//
//  SecondViewController.swift
//  20170429TestStatusBar
//
//  Created by hw on 2017/4/30.
//  Copyright © 2017年 GaiaMagic. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func pushButtonOnClick(_ sender: Any) {
        
        let vc = ThirdViewController()
        let navigationController = self.navigationController as! CustomNavigationController
        navigationController.statusBarStyle = .default
        navigationController.pushViewController(vc, animated: true)
    }
}
