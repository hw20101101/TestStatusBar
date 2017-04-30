//
//  FirstViewController.swift
//  20170429TestStatusBar
//
//  Created by hw on 2017/4/30.
//  Copyright © 2017年 GaiaMagic. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()         
    }
    
    @IBAction func closeButtonOnClick(_ sender: Any) {        
        self.dismiss(animated: true, completion: nil)
    }
}

