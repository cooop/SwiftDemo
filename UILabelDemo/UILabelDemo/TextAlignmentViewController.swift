//
//  TextAlignmentViewController.swift
//  UILabelDemo
//
//  Created by 金鑫 on 16/4/12.
//  Copyright © 2016年 金鑫. All rights reserved.
//

import UIKit

class TextAlignmentViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.edgesForExtendedLayout = UIRectEdge.None
        self.view.backgroundColor = UIColor.whiteColor()
        let str = "The UILabel class implements a read-only text view. You can use this class to draw one or multiple lines of static text."
//        let str1 = "الطبقة تطبق على  للقراءة فقط. يمكنك استخدام هذه الفئة لرسم واحد أو عدة أسطر من النص ثابت."
        let height:CGFloat = 80.0
        
        // 左对齐
        let label0 = UILabel(frame: CGRectMake(10, 10, UIScreen.mainScreen().bounds.size.width-20, height))
        label0.text = str
        label0.numberOfLines = 0
        label0.textAlignment = NSTextAlignment.Left
        self.view.addSubview(label0)
        
        // 右对齐
        let label1 = UILabel(frame: CGRectMake(10, 20 + height, UIScreen.mainScreen().bounds.size.width-20, height))
        label1.text = str
        label1.numberOfLines = 0
        label1.textAlignment = NSTextAlignment.Right
        self.view.addSubview(label1)
        
        // 居中对齐
        let label2 = UILabel(frame: CGRectMake(10, 30 + 2 * height, UIScreen.mainScreen().bounds.size.width-20, height))
        label2.text = str
        label2.numberOfLines = 0
        label2.textAlignment = NSTextAlignment.Center
        self.view.addSubview(label2)
        
        // 两端对齐
        let label3 = UILabel(frame: CGRectMake(10, 40 + 3 * height, UIScreen.mainScreen().bounds.size.width-20, height))
        let paragraphStyle3 = NSMutableParagraphStyle()
        paragraphStyle3.alignment = NSTextAlignment.Justified
        let attributedString3 = NSAttributedString(string: str, attributes: [NSParagraphStyleAttributeName:paragraphStyle3,NSBaselineOffsetAttributeName:NSNumber(float:0)])
        label3.attributedText = attributedString3
        label3.numberOfLines = 0
        self.view.addSubview(label3)
        
        // 自然对齐, 还没试出来右对齐的情况
        let label4 = UILabel(frame: CGRectMake(10, 50 + 4 * height, UIScreen.mainScreen().bounds.size.width-20, height))
        let paragraphStyle4 = NSMutableParagraphStyle()
        paragraphStyle4.alignment = NSTextAlignment.Natural
        let attributedString4 = NSAttributedString(string: str, attributes: [NSParagraphStyleAttributeName:paragraphStyle4, NSBaselineOffsetAttributeName:NSNumber(float:0), NSWritingDirectionAttributeName:[NSWritingDirection.RightToLeft.rawValue|NSWritingDirectionFormatType.Override.rawValue]])
        label4.attributedText = attributedString4
        label4.numberOfLines = 0
        self.view.addSubview(label4)
        
//        let label5 = UILabel(frame: CGRectMake(10, 60 + 5 * height, UIScreen.mainScreen().bounds.size.width-20, height))
//        let paragraphStyle5 = NSMutableParagraphStyle()
//        paragraphStyle5.alignment = NSTextAlignment.Natural
//        let attributedString5 = NSAttributedString(string: str1, attributes: [NSParagraphStyleAttributeName:paragraphStyle5,NSBaselineOffsetAttributeName:NSNumber(float:0)])
//        label5.attributedText = attributedString5
//        label5.numberOfLines = 0
//        self.view.addSubview(label5)
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
