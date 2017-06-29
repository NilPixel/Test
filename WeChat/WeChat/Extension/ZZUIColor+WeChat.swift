//
//  ZZUIColor+WeChat.swift
//  WeChat
//
//  Created by 政 on 2017/6/29.
//  Copyright © 2017年 政. All rights reserved.
//

import Foundation
import UIKit
import TimedSilver

extension UIColor {
    //控制器背景色
    class var viewBackgroundColor: UIColor {
        return UIColor(ts_hexString: "#E7EBEE")
    }
    
    //tabBar选中文字颜色
    class var tabBarSelectedTextColor: UIColor {
        return UIColor(ts_hexString: "#68BB1E")
    }
    
    //
    class var barTintColor: UIColor {
        return UIColor(ts_hexString: "#1A1A1A")
    }
}
