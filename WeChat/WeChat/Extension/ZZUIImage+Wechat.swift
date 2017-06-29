//
//  ZZUIImage+Wechat.swift
//  WeChat
//
//  Created by 政 on 2017/6/29.
//  Copyright © 2017年 政. All rights reserved.
//

import Foundation
import UIKit

typealias ZZAsset = UIImage.Asset

extension UIImage {
    
    enum Asset: String {
        case tabBar_weChat_hl = "tabBar_weChat_hl"
        case tabBar_weChat_n = "tabBar_weChat_n"
        case tabBar_contacts_hl = "tabBar_contacts_hl"
        case tabBar_contacts_n = "tabBar_contacts_n"
        case tabBar_discover_hl = "tabBar_discover_hl"
        case tabBar_discover_n = "tabBar_discover_n"
        case tabBar_me_hl = "tabBar_me_hl"
        case tabBar_me_n = "tabBar_me_n"
        case tabBar_badge = "tabBar_badge"
        case tabBar_bg = "tabBar_bg"
        
        var image: UIImage {
            return UIImage(asset: self)
        }
    }
    
    convenience init!(asset: Asset) {
        self.init(named: asset.rawValue)
    }
}
