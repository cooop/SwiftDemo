//
//  ASFontColorViewController.swift
//  UILabelDemo
//
//  Created by 金鑫 on 16/4/14.
//  Copyright © 2016年 金鑫. All rights reserved.
//

import UIKit

class ASFontColorViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.edgesForExtendedLayout = UIRectEdge.None
        self.view.backgroundColor = UIColor.whiteColor()
        let str = "Hello, AttributedString"

        let height:CGFloat = 20.0
        
        let label0 = UILabel(frame: CGRectMake(10, 10, UIScreen.mainScreen().bounds.size.width-20, height))
        let attributedString0 = NSAttributedString(string: str)
        label0.attributedText = attributedString0
        self.view.addSubview(label0)
        
        // 字体
        let label1 = UILabel(frame: CGRectMake(10, 20 + height, UIScreen.mainScreen().bounds.size.width-20, height))
        let attributedString1 = NSAttributedString(string: str, attributes:[NSFontAttributeName:UIFont.systemFontOfSize(20)]);
        label1.attributedText = attributedString1
        self.view.addSubview(label1)
        
        // 前景色
        let label2 = UILabel(frame: CGRectMake(10, 30 + 2 * height, UIScreen.mainScreen().bounds.size.width-20, height))
        let attributedString2 = NSAttributedString(string: str, attributes:[NSForegroundColorAttributeName:UIColor.redColor()]);
        label2.attributedText = attributedString2
        self.view.addSubview(label2)
        
        // 背景色
        let label3 = UILabel(frame: CGRectMake(10, 40 + 3 * height, UIScreen.mainScreen().bounds.size.width-20, height))
        let attributedString3 = NSAttributedString(string: str, attributes:[NSBackgroundColorAttributeName:UIColor.redColor()]);
        label3.attributedText = attributedString3
        self.view.addSubview(label3)
        
        // 字体，前景色，背景色
        let label4 = UILabel(frame: CGRectMake(10, 50 + 4 * height, UIScreen.mainScreen().bounds.size.width-20, height))
        let attributedString4 = NSAttributedString(string: str, attributes:[NSFontAttributeName:UIFont.systemFontOfSize(20),NSBackgroundColorAttributeName:UIColor.grayColor(),NSForegroundColorAttributeName:UIColor.redColor()])
        label4.attributedText = attributedString4
        self.view.addSubview(label4)
        
        // NSForegroundColorAttributeName & textColor
        let label5 = UILabel(frame: CGRectMake(10, 60 + 5 * height, UIScreen.mainScreen().bounds.size.width-20, height))
        let attributedString5 = NSAttributedString(string: str, attributes:[NSFontAttributeName:UIFont.systemFontOfSize(20),NSBackgroundColorAttributeName:UIColor.grayColor(),NSForegroundColorAttributeName:UIColor.redColor()])
        label5.attributedText = attributedString5
        label5.textColor = UIColor.blueColor()
        self.view.addSubview(label5)
        
        // 字符串中一段范围加效果
        let label6 = UILabel(frame: CGRectMake(10, 70 + 6 * height, UIScreen.mainScreen().bounds.size.width-20, height))
        let attributedString6 = NSMutableAttributedString(string: str)
        attributedString6.addAttributes([NSFontAttributeName:UIFont.systemFontOfSize(20),NSBackgroundColorAttributeName:UIColor.grayColor(),NSForegroundColorAttributeName:UIColor.redColor()], range: NSMakeRange(0, 5))
        attributedString6.addAttributes([NSFontAttributeName:UIFont.systemFontOfSize(10),NSBackgroundColorAttributeName:UIColor.yellowColor(),NSForegroundColorAttributeName:UIColor.blueColor()], range: NSMakeRange(15, 6))
        
        label6.attributedText = attributedString6
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
