//
//  ViewController.swift
//  Bubble Tab
//
//  Created by Junyu Lin on 5/09/19.
//  Copyright © 2019 Junyu Lin. All rights reserved.
//

import UIKit

class ViewController: UITabBarController {

    
    let mainBarItem: UITabBarItem = {
       let item = UITabBarItem(title: "Main", image: UIImage(named: "icon-16"), selectedImage: nil)
        item.setTitleTextAttributes([NSAttributedString.Key.font: UIFont(name: "Arial", size: 14)!, NSAttributedString.Key.foregroundColor: UIColor.gray], for: .normal)
        item.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.brown], for: .selected)
        return item
    }()
    
    let secondBarItem: UITabBarItem = {
        let item = UITabBarItem(title: "Second", image: UIImage(named: "icon-16"), selectedImage: nil)
        item.setTitleTextAttributes([NSAttributedString.Key.font: UIFont(name: "Arial", size: 14)!, NSAttributedString.Key.strokeColor: UIColor.white], for: .normal)
        item.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.brown], for: .selected)
        return item
    }()
    
    
    let mainViewController: UIViewController = {
        let vc = UIViewController()
        vc.view.backgroundColor = .yellow
        return vc
    }()
    
    let secondViewController: UIViewController = {
        let vc = UIViewController()
        vc.view.backgroundColor = .cyan
        return vc
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        viewControllers = [mainViewController, secondViewController]
        mainViewController.tabBarItem = mainBarItem
        secondViewController.tabBarItem = secondBarItem
    }


}

