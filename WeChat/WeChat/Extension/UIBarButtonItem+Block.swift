//
//  UIBarButtonItem+Block.swift
//  WeChat
//
//  Created by 政 on 2017/7/4.
//  Copyright © 2017年 政. All rights reserved.
//

import Foundation
import UIKit

public typealias ActionHandler = (Void) -> Void


public extension UIViewController {
    
    //一个传入闭包，闭包内可以捕获点击回调事件
    func leftBackAction(_ action:@escaping ActionHandler) {
        self.leftBackBarButton(ZZAsset.back_icon.image, action: action)
    }
    
    //返回上一个界面，无点击回调事件
    func leftBackToPrevious() {
        self.leftBackBarButton(ZZAsset.back_icon.image, action: nil)
    }
    
    //backAction
    fileprivate func leftBackBarButton(_ backImage: UIImage, action: ActionHandler!) {
        guard self.navigationController != nil else {
            assert(false,"Your target ViewController doesn't have a UINavigationController")
            return
        }
        
        let button: UIButton = UIButton(type: UIButtonType.custom)
        button.setImage(backImage, for: .normal)
        button.frame = CGRect(x: 0, y: 0, width: 40, height: 30)
        button.imageView!.contentMode = .scaleAspectFit
        button.contentHorizontalAlignment = .left
        
        //添加点击事件
        button.ngl_addAction(forControlEvents: .touchUpInside, withCallBack: {[weak self] in
            if action != nil {
                action()
                return//这个return有点疑惑，难道有闭包回调事件的话就不反回上一个界面了
            }
            
            if self!.navigationController!.viewControllers.count > 1 {
                self!.navigationController!.popViewController(animated: true)
            } else if (self!.presentationController != nil) {
                self!.dismiss(animated: true, completion: nil)
            }
        })
    }
    
}

var AssociatedClosure: UInt8 = 0

//给button的父类添加一个用闭包回调点击事件的扩展
extension UIControl {
    fileprivate func ngl_addAction(forControlEvents events: UIControlEvents, withCallBack callBack: @escaping (Void) -> Void) {
        let wrapper = ClosureWarpper(callBack: callBack)
        addTarget(wrapper, action: #selector(ClosureWarpper.invoke), for: events)
        objc_setAssociatedObject(self, &AssociatedClosure, wrapper, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
    }
}

//定义一个闭包工具类，用来产生并调用闭包
open class ClosureWarpper: NSObject {
    let _callBack: (Void) -> Void
    init(callBack: @escaping (Void) -> Void) {
        _callBack = callBack
    }
    
    open func invoke() {
        _callBack()
    }
}
