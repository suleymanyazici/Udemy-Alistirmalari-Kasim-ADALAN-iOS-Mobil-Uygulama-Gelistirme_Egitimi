//
//  ViewController.swift
//  TabBarCalismasi
//
//  Created by Suleyman YAZICI on 13.06.2023.
//

import UIKit

class ViewController: UIViewController {
    var baslangicSayac = 0
    var settingsSayac = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        
        
    }
    @IBAction func baslangic(_ sender: Any) {
        baslangicSayac = baslangicSayac + 1
        if let tabBarItems = tabBarController?.tabBar.items{
            
            let isTabBarItem = tabBarItems[0]

            isTabBarItem.badgeValue = String(baslangicSayac)
            isTabBarItem.badgeColor = UIColor.systemCyan
        }
    }
    
    @IBAction func settings(_ sender: Any) {
        settingsSayac = settingsSayac + 1
        if let tabBarItems = tabBarController?.tabBar.items{
            
            let isTabBarItem = tabBarItems[1]
            isTabBarItem.badgeValue = String(settingsSayac)
            isTabBarItem.badgeColor = UIColor.systemCyan
        }
    }
    
}

