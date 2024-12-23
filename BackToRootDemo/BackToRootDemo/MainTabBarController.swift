//
//  Untitled.swift
//  BackToRootDemo
//
//  Created by 王杰 on 2024/12/23.
//
import UIKit

class MainTabBarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let homeVC = HomeViewController()
        let otherVC = OtherViewController()
        
        let homeNav = UINavigationController(rootViewController: homeVC)
        let otherNav = UINavigationController(rootViewController: otherVC)
        
        homeNav.tabBarItem = UITabBarItem(title: "Home", image: UIImage(systemName: "house"), tag: 0)
        otherNav.tabBarItem = UITabBarItem(title: "Other", image: UIImage(systemName: "square.grid.2x2"), tag: 1)
        
        viewControllers = [homeNav, otherNav]
    }
}
