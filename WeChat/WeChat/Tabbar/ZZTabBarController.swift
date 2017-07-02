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
        self.initViewControllers()
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
        
        let viewControllerArray = [ZZWeChatViewController(),
                                   ZZContactsViewController(),
                                   ZZDiscoverViewController(),
                                   ZZMeViewController()]
        
        let naviVCArray = NSMutableArray()
        for (index,controller) in viewControllerArray.enumerated() {
            
            //设置tabbar标题
            controller.tabBarItem!.title = titleArray[index]
            
            //设置图标
            controller.tabBarItem!.image = normalImageArray[index]
            controller.tabBarItem.selectedImage = selectedImagesArray[index]
            
            //设置字体颜色
            controller.tabBarItem!.setTitleTextAttributes([NSForegroundColorAttributeName: UIColor.lightGray], for: UIControlState())
            controller.tabBarItem!.setTitleTextAttributes([NSForegroundColorAttributeName: UIColor.tabBarSelectedTextColor], for: .selected)
            
            //设置导航控制器
            let navigationController = UINavigationController(rootViewController: controller)
            naviVCArray.add(navigationController)
        }
        
        self.viewControllers = naviVCArray.mutableCopy() as! [UINavigationController]
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
