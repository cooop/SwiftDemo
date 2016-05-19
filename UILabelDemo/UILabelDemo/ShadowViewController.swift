//
//  ShadowViewController.swift
//  UILabelDemo
//
//  Created by 金鑫 on 16/4/13.
//  Copyright © 2016年 金鑫. All rights reserved.
//

import UIKit

class ShadowViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.edgesForExtendedLayout = UIRectEdge.None
        self.view.backgroundColor = UIColor.whiteColor()
        let str = "Hello, UILabel!"
        let height:CGFloat = 20.0
        
        // only shadowColor
        let label0 = UILabel(frame: CGRectMake(10, 10, UIScreen.mainScreen().bounds.size.width-20, height))
        label0.text = str
        label0.shadowColor = UIColor.redColor()
        self.view.addSubview(label0)
        
        // only shadowOffset
        let label1 = UILabel(frame: CGRectMake(10, 20 + height, UIScreen.mainScreen().bounds.size.width-20, height))
        label1.text = str
        label1.shadowOffset = CGSizeMake(2, 2)
        self.view.addSubview(label1)
        
        // both shadowColor & shadowOffset, different offset
        let label2 = UILabel(frame: CGRectMake(10, 30 + 2 * height, UIScreen.mainScreen().bounds.size.width-20, height))
        label2.text = str
        label2.shadowColor = UIColor.redColor()
        label2.shadowOffset = CGSizeMake(0, 0)
        self.view.addSubview(label2)
        
        let label3 = UILabel(frame: CGRectMake(10, 40 + 3 * height, UIScreen.mainScreen().bounds.size.width-20, height))
        label3.text = str
        label3.shadowColor = UIColor.redColor()
        label3.shadowOffset = CGSizeMake(2, 2)
        self.view.addSubview(label3)
        
        let label4 = UILabel(frame: CGRectMake(10, 50 + 4 * height, UIScreen.mainScreen().bounds.size.width-20, height))
        label4.text = str
        label4.shadowColor = UIColor.redColor()
        label4.shadowOffset = CGSizeMake(-2, -2)
        self.view.addSubview(label4)
        
        // layer shadow
        let label5 = UILabel(frame: CGRectMake(10, 60 + 5 * height, UIScreen.mainScreen().bounds.size.width-20, height))
        label5.text = str
        label5.layer.shadowColor = UIColor.redColor().CGColor
        label5.layer.shadowRadius = 0
        label5.layer.masksToBounds = false
        label5.layer.shadowOffset = CGSizeMake(2, 2)
        label5.layer.shadowOpacity = 1
        self.view.addSubview(label5)
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
