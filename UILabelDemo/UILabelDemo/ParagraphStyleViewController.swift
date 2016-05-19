//
//  ParagraphStyleViewController.swift
//  UILabelDemo
//
//  Created by 金鑫 on 16/4/14.
//  Copyright © 2016年 金鑫. All rights reserved.
//

import UIKit

class ParagraphStyleViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.edgesForExtendedLayout = UIRectEdge.None
        self.view.backgroundColor = UIColor.whiteColor()
        let str = "The UILabel class implements a read-only text view. \nThe default content mode of the UILabel class is UIViewContentModeRedraw. "
        let height:CGFloat = 120.0
        
        let label0 = UILabel(frame: CGRectMake(10, 10, UIScreen.mainScreen().bounds.size.width-20, height))
        let paragraphStyle0 = NSMutableParagraphStyle.defaultParagraphStyle()
        let attributedString0 = NSAttributedString(string: str, attributes:[NSParagraphStyleAttributeName:paragraphStyle0]);
        label0.attributedText = attributedString0
        label0.numberOfLines = 0
        label0.backgroundColor = UIColor.lightGrayColor()
        self.view.addSubview(label0)
        
        // 行间距，段间距，对齐方式，分行模式，首行缩进，左缩进，右缩进
        let label1 = UILabel(frame: CGRectMake(10, 20 + height, UIScreen.mainScreen().bounds.size.width-20, height))
        let paragraphStyle1 = NSMutableParagraphStyle()
        paragraphStyle1.lineSpacing = 5.0
        paragraphStyle1.paragraphSpacing = 10.0
        paragraphStyle1.alignment = NSTextAlignment.Justified
        paragraphStyle1.lineBreakMode = NSLineBreakMode.ByCharWrapping
        paragraphStyle1.firstLineHeadIndent = 30.0
        paragraphStyle1.headIndent = 10.0
        paragraphStyle1.tailIndent = -10.0
        let attributedString1 = NSAttributedString(string: str, attributes:[NSParagraphStyleAttributeName:paragraphStyle1, NSBaselineOffsetAttributeName:NSNumber(float:0)]);
        label1.attributedText = attributedString1
        label1.numberOfLines = 0
        label1.backgroundColor = UIColor.lightGrayColor()
        self.view.addSubview(label1)
        
        // 行高倍数，最大行高，段前间距
        let label2 = UILabel(frame: CGRectMake(10, 30 + 2 * height, UIScreen.mainScreen().bounds.size.width-20, height))
        let paragraphStyle2 = NSMutableParagraphStyle()
        paragraphStyle2.lineHeightMultiple = 1.5
//        paragraphStyle2.maximumLineHeight = 20
        paragraphStyle2.paragraphSpacingBefore = 10.0
        let attributedString2 = NSAttributedString(string: str, attributes:[NSParagraphStyleAttributeName:paragraphStyle2, NSBaselineOffsetAttributeName:NSNumber(float:0)]);
        label2.attributedText = attributedString2
        label2.numberOfLines = 0
        label2.backgroundColor = UIColor.lightGrayColor()
        self.view.addSubview(label2)
        
        // 书写方向，最小行高
        let label3 = UILabel(frame: CGRectMake(10, 40 + 3 * height, UIScreen.mainScreen().bounds.size.width-20, height))
        let paragraphStyle3 = NSMutableParagraphStyle()
        paragraphStyle3.baseWritingDirection = NSWritingDirection.RightToLeft
//        paragraphStyle3.minimumLineHeight = 40
        let attributedString3 = NSAttributedString(string: str, attributes:[NSParagraphStyleAttributeName:paragraphStyle3]);
        label3.attributedText = attributedString3
        label3.numberOfLines = 0
        label3.backgroundColor = UIColor.lightGrayColor()
        self.view.addSubview(label3)
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
