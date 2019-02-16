//
//  IGTabController.swift
//  Instagram
//
//  Created by FABY on 2/16/19.
//  Copyright © 2019 Grupo Lider. All rights reserved.
//

import Foundation
import UIKit
import AsyncDisplayKit


class IGTabBarController:ASTabBarController{
    override func viewDidLoad() {
        super.viewDidLoad()
        tabBar.isTranslucent = false
        setupTabs()
    }
    
    func setupTabs(){
        let feedVc = UINavigationController(rootViewController: FeedViewController())
        feedVc.tabBarItem.image = UIImage(named: "Home")
        
        let searchVC = UIViewController()
        searchVC.tabBarItem.image = UIImage(named: "Search")
        
        let addphotoVC = UIViewController()
        addphotoVC.tabBarItem.image = UIImage(named: "AddPhoto")
        
        let activityVC = UIViewController()
        activityVC.tabBarItem.image = UIImage(named: "Activity")
        
        let profileVC = UIViewController()
        profileVC.tabBarItem.image = UIImage(named: "Profile")
        
        
        tabBar.tintColor = .black
        tabBar.unselectedItemTintColor  = .black
        
        viewControllers = [feedVc,searchVC,addphotoVC,activityVC,profileVC]
    }
}


