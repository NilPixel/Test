//
//  ZZWeChatViewController.swift
//  WeChat
//
//  Created by 政 on 2017/6/29.
//  Copyright © 2017年 政. All rights reserved.
//

import UIKit

class ZZWeChatViewController: UIViewController {
    var messageTable: UITableView!//列表
    fileprivate var dataSource = [ZZWeChatMessageModel]()//数据源
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.viewBackgroundColor
        self.title = "微信"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    


}
