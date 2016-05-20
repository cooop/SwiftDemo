//
//  MyScrollViewController.swift
//  UIScrollViewDemo
//
//  Created by 金鑫 on 16/5/20.
//  Copyright © 2016年 Cooop. All rights reserved.
//

import UIKit

class MyScrollViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let scrollView = MyScrollView()
        scrollView.frame = CGRectMake(0, 0, view.frame.size.width, view.frame.size.height)
        scrollView.userInteractionEnabled = true
        scrollView.scrollEnabled = true
        
        //NO - 设置scrollView不能取消传递touch事件，此时就算手指若在subView上滑动，scrollView不滚动; YES - 设置scrollView可取消传递touch事件
        scrollView.canCancelContentTouches = true
        scrollView.bounces = false
        
        //NO - 立即通知touchesShouldBegin:withEvent:inContentView
        scrollView.delaysContentTouches = false
        scrollView.contentSize = CGSizeMake(scrollView.frame.size.width, 900)
        
        scrollView.backgroundColor = UIColor.redColor()
        
        view.addSubview(scrollView)
        
        let myView = MyView()
        myView.frame = CGRectMake(100, 100, 100, 200)
        myView.backgroundColor = UIColor.yellowColor()
        
        scrollView.addSubview(myView)
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
