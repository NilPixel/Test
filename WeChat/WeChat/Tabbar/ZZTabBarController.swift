//
//  ZZTabBarController.swift
//  WeChat
//
//  Created by 政 on 2017/6/28.
//  Copyright © 2017年 政. All rights reserved.
//

import UIKit

class ZZTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    func initViewControllers() {
        let titleArray = ["微信","通讯录","发现","我"]
        
        let normalImageArray = [ZZAsset.tabBar_weChat_n.image,
                                ZZAsset.tabBar_contacts_n.image,
                                ZZAsset.tabBar_discover_n.image,
                                ZZAsset.tabBar_me_n.image]
        
        let selectedImagesArray = [ZZAsset.tabBar_weChat_hl.image,
                                   ZZAsset.tabBar_contacts_hl.image,
                                   ZZAsset.tabBar_discover_hl.image,
                                   ZZAsset.tabBar_me_hl.image]
        
        
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
