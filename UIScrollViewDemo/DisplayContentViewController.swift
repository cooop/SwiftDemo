//
//  DisplayContentViewController.swift
//  UIScrollViewDemo
//
//  Created by 金鑫 on 16/5/19.
//  Copyright © 2016年 Cooop. All rights reserved.
//

import UIKit

class DisplayContentViewController: UIViewController {
    
    var scrollView: UIScrollView?
    var image: UIImage?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.edgesForExtendedLayout = UIRectEdge.None
        self.view.backgroundColor = UIColor.whiteColor()
        
        scrollView = UIScrollView(frame: CGRectMake(0,0,UIScreen.mainScreen().bounds.size.width,300))
        scrollView?.backgroundColor = UIColor.grayColor()
        image = UIImage(named: "TestImage")
        let imageView = UIImageView(image: image)
        imageView.frame = CGRectMake(0, 0, (image?.size.width)!, (image?.size.height)!)

        scrollView?.addSubview(imageView)
        if let sv = scrollView {
            self.view.addSubview(sv)
        }
        
        let label = UILabel(frame: CGRectMake(10, 320, 200, 40))
        label.text = "contentSize"
        self.view.addSubview(label)
        let switcher = UISwitch(frame: CGRectMake(220, 320, 200, 40))
        switcher.addTarget(self, action: #selector(contentSizePressed(_:)), forControlEvents: .ValueChanged)
        self.view.addSubview(switcher)
        
        let label1 = UILabel(frame: CGRectMake(10, 370, 200, 40))
        label1.text = "contentOffset"
        self.view.addSubview(label1)
        let switcher1 = UISwitch(frame: CGRectMake(220, 370, 200, 40))
        switcher1.addTarget(self, action: #selector(contentOffsetPressed(_:)), forControlEvents: .ValueChanged)
        self.view.addSubview(switcher1)
        
        let label2 = UILabel(frame: CGRectMake(10, 420, 200, 40))
        label2.text = "contentInset"
        self.view.addSubview(label2)
        let switcher2 = UISwitch(frame: CGRectMake(220, 420, 200, 40))
        switcher2.addTarget(self, action: #selector(contentOffsetInset(_:)), forControlEvents: .ValueChanged)
        self.view.addSubview(switcher2)
        
        let label3 = UILabel(frame: CGRectMake(10, 470, 200, 40))
        label3.text = "setContentOffset"
        self.view.addSubview(label3)
        let switcher3 = UISwitch(frame: CGRectMake(220, 470, 200, 40))
        switcher3.addTarget(self, action: #selector(setContentOffsetInset(_:)), forControlEvents: .ValueChanged)
        self.view.addSubview(switcher3)

    }
    
    func contentSizePressed(sender:UISwitch) {
        if sender.on {
            scrollView?.contentSize = (image?.size)!
        } else {
            scrollView?.contentSize = CGSizeZero
        }
    }
    
    func contentOffsetPressed(sender: UISwitch) {
        if sender.on {
            scrollView?.contentOffset = CGPointMake(100, 100)
        }else {
            scrollView?.contentOffset = CGPointZero
        }
    }
    
    func contentOffsetInset(sender:UISwitch) {
        if sender.on {
            scrollView?.contentInset = UIEdgeInsetsMake(20, 20, 20, 20)
        } else {
            scrollView?.contentInset = UIEdgeInsetsZero
        }
    }
    
    func setContentOffsetInset(sender:UISwitch) {
        if sender.on {
            scrollView?.setContentOffset(CGPoint(x: 100, y: 100), animated: true)
        } else {
            scrollView?.setContentOffset(CGPointZero, animated: true)
        }
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
