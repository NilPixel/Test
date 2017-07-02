//
//  ZZWeChatMessageEnum.swift
//  WeChat
//
//  Created by 政 on 2017/7/2.
//  Copyright © 2017年 政. All rights reserved.
//

import Foundation
import UIKit

enum GenderType: Int {
    case female = 0, male
}

enum MessageContentType: String {
    case text = "0"
    case image = "1"
    case voice = "2"
    case system = "3"
    case file = "4"
    case time = "110"
}

//服务器返回的消息类型
enum MessageFromType : String {
    case system = "0"//是系统
    case personal = "1"//是个人
    case group = "2"//是群组
    case publicServer = "3"//是服务号
    case publicSubscribe = "4"//是订阅号
    
    var placeHolderImage : UIImage {
        switch (self) {
        case .personal:
            return ZZAsset.icon_avatar.image
        case .system,.group,.publicServer,.publicSubscribe:
            return ZZAsset.icon_avatar.image
        }
    }
}

//消息发送状态
enum MessageSendType : Int {
    case success = 0
    case failed
    case sending
}
