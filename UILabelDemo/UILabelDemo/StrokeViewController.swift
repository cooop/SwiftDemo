//
//  StrokeViewController.swift
//  UILabelDemo
//
//  Created by 金鑫 on 16/4/14.
//  Copyright © 2016年 金鑫. All rights reserved.
//

import UIKit

class StrokeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.edgesForExtendedLayout = UIRectEdge.None
        self.view.backgroundColor = UIColor.whiteColor()
        let str = "Hello, AttributedString"
        
        let height:CGFloat = 20.0
        
        // 描边宽度
        let label0 = UILabel(frame: CGRectMake(10, 10, UIScreen.mainScreen().bounds.size.width-20, height))
        let attributedString0 = NSAttributedString(string: str, attributes:[NSStrokeWidthAttributeName:0])
        label0.attributedText = attributedString0
        self.view.addSubview(label0)
        
        let label1 = UILabel(frame: CGRectMake(10, 20 + height, UIScreen.mainScreen().bounds.size.width-20, height))
        let attributedString1 = NSAttributedString(string: str, attributes:[NSStrokeWidthAttributeName:3])
        label1.attributedText = attributedString1
        self.view.addSubview(label1)
        
        let label2 = UILabel(frame: CGRectMake(10, 30 + 2 * height, UIScreen.mainScreen().bounds.size.width-20, height))
        let attributedString2 = NSAttributedString(string: str, attributes:[NSStrokeWidthAttributeName:-3]);
        label2.attributedText = attributedString2
        self.view.addSubview(label2)
        
        // 描边颜色
        let label3 = UILabel(frame: CGRectMake(10, 40 + 3 * height, UIScreen.mainScreen().bounds.size.width-20, height))
        let attributedString3 = NSAttributedString(string: str, attributes:[NSStrokeWidthAttributeName:3, NSStrokeColorAttributeName:UIColor.redColor()]);
        label3.attributedText = attributedString3
        self.view.addSubview(label3)
        
        let label4 = UILabel(frame: CGRectMake(10, 50 + 4 * height, UIScreen.mainScreen().bounds.size.width-20, height))
        let attributedString4 = NSAttributedString(string: str, attributes:[NSStrokeWidthAttributeName:-3, NSStrokeColorAttributeName:UIColor.redColor()])
        label4.attributedText = attributedString4
        self.view.addSubview(label4)
        
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
