//
//  VGFOEViewController.swift
//  UILabelDemo
//
//  Created by 金鑫 on 16/4/14.
//  Copyright © 2016年 金鑫. All rights reserved.
//

import UIKit

class VGFOEViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.edgesForExtendedLayout = UIRectEdge.None
        self.view.backgroundColor = UIColor.whiteColor()
        let str = "Hello Attributed String"
        
        let height:CGFloat = 20.0
        
        // 斜体
        let label0 = UILabel(frame: CGRectMake(10, 10, UIScreen.mainScreen().bounds.size.width-20, height))
        let attributedString0 = NSAttributedString(string: str, attributes:[NSObliquenessAttributeName:0])
        label0.attributedText = attributedString0
        self.view.addSubview(label0)
        
        let label1 = UILabel(frame: CGRectMake(10, 20 + height, UIScreen.mainScreen().bounds.size.width-20, height))
        let attributedString1 = NSAttributedString(string: str, attributes:[NSObliquenessAttributeName:0.5])
        label1.attributedText = attributedString1
        self.view.addSubview(label1)
        
        let label2 = UILabel(frame: CGRectMake(10, 30 + 2 * height, UIScreen.mainScreen().bounds.size.width-20, height))
        let attributedString2 = NSAttributedString(string: str, attributes:[NSObliquenessAttributeName:-0.5]);
        label2.attributedText = attributedString2
        self.view.addSubview(label2)
        
        // 扩展
        let label3 = UILabel(frame: CGRectMake(10, 40 + 3 * height, UIScreen.mainScreen().bounds.size.width-20, height))
        let attributedString3 = NSAttributedString(string: str, attributes:[NSExpansionAttributeName:0]);
        label3.attributedText = attributedString3
        self.view.addSubview(label3)

        
        let label4 = UILabel(frame: CGRectMake(10, 50 + 4 * height, UIScreen.mainScreen().bounds.size.width-20, height))
        let attributedString4 = NSAttributedString(string: str, attributes:[NSExpansionAttributeName:0.5])
        label4.attributedText = attributedString4
        self.view.addSubview(label4)
        
        
        let label31 = UILabel(frame: CGRectMake(10, 60 + 5 * height, UIScreen.mainScreen().bounds.size.width-20, height))
        let attributedString31 = NSAttributedString(string: str, attributes:[NSExpansionAttributeName:-0.5]);
        label31.attributedText = attributedString31
        self.view.addSubview(label31)
        
        // 排版，竖排无效
        let label32 = UILabel(frame: CGRectMake(10, 70 + 6 * height, UIScreen.mainScreen().bounds.size.width-20, height))
        let attributedString32 = NSAttributedString(string: str, attributes:[NSVerticalGlyphFormAttributeName:0]);
        label32.attributedText = attributedString32
        self.view.addSubview(label32)
        
        let label33 = UILabel(frame: CGRectMake(10, 80 + 7 * height, UIScreen.mainScreen().bounds.size.width-20, height))
        let attributedString33 = NSAttributedString(string: str, attributes:[NSVerticalGlyphFormAttributeName:1]);
        label33.attributedText = attributedString33
        self.view.addSubview(label33)
        
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
