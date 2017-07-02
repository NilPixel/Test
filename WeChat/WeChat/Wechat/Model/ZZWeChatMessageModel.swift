//
//  ZZWeChatMessageModel.swift
//  WeChat
//
//  Created by 政 on 2017/7/2.
//  Copyright © 2017年 政. All rights reserved.
//

import UIKit
import ObjectMapper

class ZZWeChatMessageModel: NSObject {
    var headerImgUrl : String?
    var unReadNum : Int?
    var nickName : String?
    var messageFromType : MessageFromType  = MessageFromType.personal
    var messageContentType : MessageContentType = MessageContentType.text
    var chatId : String?
    var latestMessage : String?
    var dateString : String?
    
    
    
    
    
    
    
    
    
}
