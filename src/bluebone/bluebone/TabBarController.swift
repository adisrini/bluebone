//
//  TabBarController.swift
//  bluebone
//
//  Created by Aditya Srinivasan on 06/01/17.
//  Copyright © 2017 Aditya Srinivasan. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let historyViewController = viewControllers![0]
        historyViewController.tabBarItem.title = "History"
        historyViewController.tabBarItem.image = #imageLiteral(resourceName: "time")
        
        let viewController = viewControllers![1]
        viewController.tabBarItem.title = "Profile"
        viewController.tabBarItem.image = #imageLiteral(resourceName: "profile")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
