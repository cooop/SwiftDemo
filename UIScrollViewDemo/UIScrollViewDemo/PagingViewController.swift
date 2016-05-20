//
//  PagingViewController.swift
//  UIScrollViewDemo
//
//  Created by 金鑫 on 16/5/19.
//  Copyright © 2016年 Cooop. All rights reserved.
//

import UIKit

class PagingViewController: UIViewController {

    var scrollView: UIScrollView?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.edgesForExtendedLayout = UIRectEdge.None
        self.view.backgroundColor = UIColor.whiteColor()
        
        scrollView = UIScrollView(frame: CGRectMake(0,0,UIScreen.mainScreen().bounds.size.width,500))
        scrollView?.backgroundColor = UIColor.grayColor()
        self.view.addSubview(scrollView!)
        
        var colors:[UIColor] = [UIColor.redColor(), UIColor.blueColor(), UIColor.greenColor(), UIColor.yellowColor()]
        var frame: CGRect = CGRectMake(0, 0, 0, 0)
        
        for index in 0..<colors.count {
            
            frame.origin.x = self.scrollView!.frame.size.width * CGFloat(index)
            frame.size = self.scrollView!.frame.size
            
            let subView = UIView(frame: frame)
            subView.backgroundColor = colors[index]
            scrollView!.addSubview(subView)
        }
        
        self.scrollView!.contentSize = CGSizeMake(self.scrollView!.frame.size.width * CGFloat(colors.count), self.scrollView!.frame.size.height)
        
        let label = UILabel(frame: CGRectMake(10, 520, 200, 40))
        label.text = "pagingEnabled"
        self.view.addSubview(label)
        let switcher = UISwitch(frame: CGRectMake(220, 520, 200, 40))
        switcher.addTarget(self, action: #selector(pagingEnabled(_:)), forControlEvents: .ValueChanged)
        self.view.addSubview(switcher)
    }
    
    func pagingEnabled(sender: UISwitch) {
        scrollView?.pagingEnabled = sender.on
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
