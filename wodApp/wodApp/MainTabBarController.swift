//
//  MainViewController.swift
//  wodApp
//
//  Created by 김광준 on 2020/09/02.
//  Copyright © 2020 VincentGeranium. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    let firstNavi = UINavigationController(rootViewController: FirstViewController())
    let secondNavi = UINavigationController(rootViewController: SecondViewController())

    override func viewDidLoad() {
        super.viewDidLoad()

        viewControllers = [firstNavi,secondNavi]
    }

 

}
