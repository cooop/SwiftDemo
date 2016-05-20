//
//  MyView.swift
//  UIScrollViewDemo
//
//  Created by 金鑫 on 16/5/20.
//  Copyright © 2016年 Cooop. All rights reserved.
//

import UIKit

class MyView: UIView {

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        NSLog("touchesBegan")
        self.backgroundColor = UIColor.grayColor()
    }
    
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        NSLog("touchesMoved")
    }
    
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        NSLog("touchesEnded")
    }
    
    override func touchesCancelled(touches: Set<UITouch>?, withEvent event: UIEvent?) {
        NSLog("touchesCancelled")
        self.backgroundColor = UIColor.yellowColor()
    }

}
