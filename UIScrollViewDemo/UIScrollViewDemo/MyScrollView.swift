//
//  MyScrollView.swift
//  UIScrollViewDemo
//
//  Created by 金鑫 on 16/5/20.
//  Copyright © 2016年 Cooop. All rights reserved.
//

import UIKit

class MyScrollView: UIScrollView {

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */
    
    override func touchesShouldBegin(touches: Set<UITouch>, withEvent event: UIEvent?, inContentView view: UIView) -> Bool {
        NSLog("touchesShouldBegin");
        //返回yes - 将触摸事件传递给相应的subView; 返回no - 直接滚动scrollView，不传递触摸事件到subView

        return true
    }
    
    override func touchesShouldCancelInContentView(view: UIView) -> Bool {
        NSLog("touchesShouldCancelInContentView");
        //no - 不取消，touch事件由view处理，scrollView不滚动; yes - scrollView取消，touch事件由scrollView处理，可滚动

        return true
    }
}
