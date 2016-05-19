//
//  DrawingOverrideViewController.swift
//  UILabelDemo
//
//  Created by 金鑫 on 16/4/15.
//  Copyright © 2016年 金鑫. All rights reserved.
//

import UIKit

class DrawingOverrideViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.edgesForExtendedLayout = UIRectEdge.None
        self.view.backgroundColor = UIColor.whiteColor()
        let str = "The UILabel class implements a read-only text view. You can use this class to draw one or multiple lines of static text."
        let height:CGFloat = 80.0
        
        // 顶端对齐
        let label3 = myUILabel(frame: CGRectMake(10, 10, UIScreen.mainScreen().bounds.size.width-20, height))
        label3.text = str
        label3.verticalAlignment = VerticalAlignment.Top
        label3.backgroundColor = UIColor.lightGrayColor()
        self.view.addSubview(label3)
        
        // 底端对齐
        let label4 = myUILabel(frame: CGRectMake(10, 20 + height, UIScreen.mainScreen().bounds.size.width-20, height))
        label4.text = str
        label4.verticalAlignment = VerticalAlignment.Bottom
        label4.backgroundColor = UIColor.lightGrayColor()
        self.view.addSubview(label4)
        
        // 居中对齐
        let label5 = myUILabel(frame: CGRectMake(10, 30 + 2 * height, UIScreen.mainScreen().bounds.size.width-20, height))
        label5.text = str
        label5.verticalAlignment = VerticalAlignment.Center
        label5.backgroundColor = UIColor.lightGrayColor()
        self.view.addSubview(label5)
        
        // 水平对齐和垂直对齐混用
        let label6 = myUILabel(frame: CGRectMake(10, 40 + 3 * height, UIScreen.mainScreen().bounds.size.width-20, height))
        label6.text = str
        label6.verticalAlignment = VerticalAlignment.Bottom
        label6.textAlignment = NSTextAlignment.Right
        label6.numberOfLines = 0
        label6.backgroundColor = UIColor.lightGrayColor()
        self.view.addSubview(label6)
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
