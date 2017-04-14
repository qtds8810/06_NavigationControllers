//
//  ViewController5.swift
//  06_NavigationControllers
//
//  Created by 左得胜 on 2017/4/14.
//  Copyright © 2017年 左得胜. All rights reserved.
//

import UIKit

class ViewController5: UIViewController {

    // MARK: - View LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
    
    // MARK: - Private Method
    /// 初始化UI
    private func setupUI() {
        
        removeChildControllers()
        
    }
    
    /// 移除导航控制器中指定的（单个、多个连续|不连续）控制器
    private func removeChildControllers() {
        
        // 移除导航控制器中指定的多个连续控制器，方法一：
        if let tmpControllers = navigationController?.viewControllers {
            var controllers = tmpControllers
            // 从导航控制器的堆栈中连续移除多个维护的控制器，推荐用这种方法，注意数组越界的问题，因此从最大的开始遍历，逐级往最小的移除
            for i in (1 ..< (controllers.count-1)).reversed() {
                controllers.remove(at: i)
                navigationController?.viewControllers = controllers
            }
        }
        
//        // 移除导航控制器中指定的多个连续控制器，方法二：
//        guard let tmpControllers = navigationController?.viewControllers else { return }
//        var controllers = tmpControllers
//        
//        // 从导航控制器的堆栈中连续移除多个维护的控制器，推荐用这种方法，注意数组越界的问题，因此从最大的开始遍历，逐级往最小的移除
//        for i in (1 ..< (controllers.count-1)).reversed() {
//            controllers.remove(at: i)
//            navigationController?.viewControllers = controllers
//        }
        
        
//        // 移除导航控制器中指定的多个不连续控制器，推荐用这种方法
//        for (i, controller) in (controllers.enumerated()).reversed() {
//            if controller.isKind(of: ViewController4.classForCoder()) {
//                controllers.remove(at: i)
//                navigationController?.viewControllers = controllers
//            }
////            if controller.isKind(of: ViewController3.classForCoder()) {
////                controllers.remove(at: i)
////                navigationController?.viewControllers = controllers
////            }
////            if controller.isKind(of: ViewController2.classForCoder()) {
////                controllers.remove(at: i)
////                navigationController?.viewControllers = controllers
////            }
//            if controller.isKind(of: ViewController1.classForCoder()) {
//                controllers.remove(at: i)
//                navigationController?.viewControllers = controllers
//            }
//        }
    }
    
    // MARK: - Action
    
    // MARK: - Lazy

}
