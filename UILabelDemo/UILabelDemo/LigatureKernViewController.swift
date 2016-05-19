//
//  LigatureKernViewController.swift
//  UILabelDemo
//
//  Created by 金鑫 on 16/4/14.
//  Copyright © 2016年 金鑫. All rights reserved.
//

import UIKit

class LigatureKernViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.edgesForExtendedLayout = UIRectEdge.None
        self.view.backgroundColor = UIColor.whiteColor()
        let str = "flush"
        
        let height:CGFloat = 20.0
        
        // 不连写
        let label0 = UILabel(frame: CGRectMake(10, 10, UIScreen.mainScreen().bounds.size.width-20, height))
        let attributedString0 = NSAttributedString(string: str, attributes:[NSFontAttributeName:UIFont(name: "futura", size: 18)!,NSLigatureAttributeName:0])
        label0.attributedText = attributedString0
        self.view.addSubview(label0)
        
        // 连写
        let label1 = UILabel(frame: CGRectMake(10, 20 + height, UIScreen.mainScreen().bounds.size.width-20, height))
        let attributedString1 = NSAttributedString(string: str, attributes:[NSFontAttributeName:UIFont(name: "futura", size: 18)!,NSLigatureAttributeName:1])
        label1.attributedText = attributedString1
        self.view.addSubview(label1)
        
        // 字符间距
        let label2 = UILabel(frame: CGRectMake(10, 30 + 2 * height, UIScreen.mainScreen().bounds.size.width-20, height))
        let attributedString2 = NSAttributedString(string: str, attributes:[NSFontAttributeName:UIFont(name: "futura", size: 18)!,NSKernAttributeName:0]);
        label2.attributedText = attributedString2
        self.view.addSubview(label2)
        
        let label3 = UILabel(frame: CGRectMake(10, 40 + 3 * height, UIScreen.mainScreen().bounds.size.width-20, height))
        let attributedString3 = NSAttributedString(string: str, attributes:[NSFontAttributeName:UIFont(name: "futura", size: 18)!,NSKernAttributeName:10]);
        label3.attributedText = attributedString3
        self.view.addSubview(label3)
        
        let label4 = UILabel(frame: CGRectMake(10, 50 + 4 * height, UIScreen.mainScreen().bounds.size.width-20, height))
        let attributedString4 = NSAttributedString(string: str, attributes:[NSFontAttributeName:UIFont(name: "futura", size: 18)!,NSKernAttributeName:-3])
        label4.attributedText = attributedString4
        self.view.addSubview(label4)
        
        // 字符间距，不连写
        let label5 = UILabel(frame: CGRectMake(10, 60 + 5 * height, UIScreen.mainScreen().bounds.size.width-20, height))
        let attributedString5 = NSAttributedString(string: str, attributes:[NSFontAttributeName:UIFont(name: "futura", size: 18)!,NSKernAttributeName:10, NSLigatureAttributeName:0])
        label5.attributedText = attributedString5
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
