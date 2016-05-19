//
//  ASShadowViewController.swift
//  UILabelDemo
//
//  Created by 金鑫 on 16/4/14.
//  Copyright © 2016年 金鑫. All rights reserved.
//

import UIKit

class ASShadowViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.edgesForExtendedLayout = UIRectEdge.None
        self.view.backgroundColor = UIColor.whiteColor()
        let str = "Hello, AttributedString"
        
        let height:CGFloat = 20.0
        
        // 阴影
        let shadow: NSShadow = NSShadow()
        shadow.shadowColor = UIColor.redColor()
        shadow.shadowOffset = CGSizeMake(2, 2)
        shadow.shadowBlurRadius = 0
        
        let shadow1: NSShadow = NSShadow()
        shadow1.shadowColor = UIColor.blueColor()
        shadow1.shadowOffset = CGSizeMake(-2, -2)
        shadow1.shadowBlurRadius = 2
        
        let shadow2: NSShadow = NSShadow()
        shadow2.shadowColor = UIColor.greenColor()
        shadow2.shadowOffset = CGSizeMake(-2, 2)
        shadow2.shadowBlurRadius = 10
        
        
        let label0 = UILabel(frame: CGRectMake(10, 10, UIScreen.mainScreen().bounds.size.width-20, height))
        let attributedString0 = NSAttributedString(string: str, attributes:[NSShadowAttributeName:shadow])
        label0.attributedText = attributedString0
        self.view.addSubview(label0)
        
        let label1 = UILabel(frame: CGRectMake(10, 20 + height, UIScreen.mainScreen().bounds.size.width-20, height))
        let attributedString1 = NSAttributedString(string: str, attributes:[NSShadowAttributeName:shadow1, NSVerticalGlyphFormAttributeName:0])
        label1.attributedText = attributedString1
        self.view.addSubview(label1)
        
        let label2 = UILabel(frame: CGRectMake(10, 30 + 2 * height, UIScreen.mainScreen().bounds.size.width-20, height))
        let attributedString2 = NSAttributedString(string: str, attributes:[NSShadowAttributeName:shadow2]);
        label2.attributedText = attributedString2
        self.view.addSubview(label2)
        
        // NSShadowAttributeName & shadowColor
        let label3 = UILabel(frame: CGRectMake(10, 40 + 3 * height, UIScreen.mainScreen().bounds.size.width-20, height))
        let attributedString3 = NSAttributedString(string: str, attributes:[NSShadowAttributeName:shadow]);
        label3.attributedText = attributedString3
        label3.shadowColor = UIColor.orangeColor()
        self.view.addSubview(label3)
        
        // NSShadowAttributeName & shadowOffset
        let label4 = UILabel(frame: CGRectMake(10, 50 + 4 * height, UIScreen.mainScreen().bounds.size.width-20, height))
        let attributedString4 = NSAttributedString(string: str, attributes:[NSShadowAttributeName:shadow])
        label4.attributedText = attributedString4
        label4.shadowOffset = CGSizeMake(10, 0)
        self.view.addSubview(label4)
        
        // NSShadowAttributeName & shadowColor & shadowOffset
        let label5 = UILabel(frame: CGRectMake(10, 60 + 5 * height, UIScreen.mainScreen().bounds.size.width-20, height))
        let attributedString5 = NSAttributedString(string: str, attributes:[NSShadowAttributeName:shadow])
        label5.attributedText = attributedString5
        label5.shadowColor = UIColor.orangeColor()
        label5.shadowOffset = CGSizeMake(10, 0)
        self.view.addSubview(label5)
        
        
        let label6 = UILabel(frame: CGRectMake(10, 70 + 6 * height, UIScreen.mainScreen().bounds.size.width-20, height))
        label6.shadowColor = UIColor.orangeColor()
        label6.shadowOffset = CGSizeMake(10, 0)
        let attributedString6 = NSAttributedString(string: str, attributes:[NSShadowAttributeName:shadow])
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
