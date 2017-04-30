//
//  RootViewController.swift
//  20170429TestStatusBar
//
//  Created by hw on 2017/4/30.
//  Copyright © 2017年 GaiaMagic. All rights reserved.
//

import UIKit

class RootViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
    }
    
    // MARK: hide StatusBar
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        
        if cell == nil {
            cell = UITableViewCell.init(style: .default, reuseIdentifier: "cell")
        }
        
        cell?.textLabel?.textColor = UIColor.black
        if indexPath.row == 1 {
            cell?.textLabel?.text = "has NavigationController"
        } else {
            cell?.textLabel?.text = "no NavigationController"
        }
        
        return cell!
    }
    
    // MARK: - Table view Delegate
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if indexPath.row == 1 {
            let vc = CustomTabBarController()
            let nav = CustomNavigationController.init(rootViewController: vc)
            self.present(nav, animated: true, completion: nil)
            
        } else {
            let vc = BlankViewController()
            self.present(vc, animated: true, completion: nil)
        }
    }
}
