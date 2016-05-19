//
//  SizingLabelViewController.swift
//  UILabelDemo
//
//  Created by 金鑫 on 16/4/15.
//  Copyright © 2016年 金鑫. All rights reserved.
//

import UIKit

class SizingLabelViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.edgesForExtendedLayout = UIRectEdge.None
        self.view.backgroundColor = UIColor.whiteColor()
        let str = "The UILabel class implements a read-only text view. "
        
        let height:CGFloat = 50.0
        
        let label0 = UILabel(frame: CGRectMake(10, 10, UIScreen.mainScreen().bounds.size.width-20, height))
        label0.text = str
        label0.numberOfLines = 0
        self.view.addSubview(label0)
        
        // adjustsFontSizeToFitWidth
        let label1 = UILabel(frame: CGRectMake(10, 20 + height, UIScreen.mainScreen().bounds.size.width-20, height))
        label1.text = str
        label1.adjustsFontSizeToFitWidth = true
        self.view.addSubview(label1)
        
        // baselineAdjustment = UIBaselineAdjustment.AlignBaselines
        let label2 = UILabel(frame: CGRectMake(10, 30 + 2 * height, (UIScreen.mainScreen().bounds.size.width-20)/2, height))
        label2.text = str
        label2.backgroundColor = UIColor.lightGrayColor()
        label2.adjustsFontSizeToFitWidth = true
        label2.baselineAdjustment = UIBaselineAdjustment.AlignBaselines
        self.view.addSubview(label2)
        
        let label21 = UILabel(frame: CGRectMake(CGRectGetMaxX(label2.frame), 30 + 2 * height, (UIScreen.mainScreen().bounds.size.width-20)/2, height))
        label21.text = str
        label21.backgroundColor = UIColor.grayColor()
        self.view.addSubview(label21)
        
        // baselineAdjustment = UIBaselineAdjustment.AlignCenters
        let label3 = UILabel(frame: CGRectMake(10, 40 + 3 * height, (UIScreen.mainScreen().bounds.size.width-20)/2, height))
        label3.text = str
        label3.backgroundColor = UIColor.lightGrayColor()
        label3.adjustsFontSizeToFitWidth = true
        label3.baselineAdjustment = UIBaselineAdjustment.AlignCenters
        self.view.addSubview(label3)

        let label31 = UILabel(frame: CGRectMake(CGRectGetMaxX(label3.frame), 40 + 3 * height, (UIScreen.mainScreen().bounds.size.width-20)/2, height))
        label31.text = str
        label31.backgroundColor = UIColor.grayColor()
        self.view.addSubview(label31)
        
        // baselineAdjustment = UIBaselineAdjustment.None
        let label4 = UILabel(frame: CGRectMake(10, 50 + 4 * height,( UIScreen.mainScreen().bounds.size.width-20)/2, height))
        label4.text = str
        label4.backgroundColor = UIColor.lightGrayColor()
        label4.adjustsFontSizeToFitWidth = true
        label4.baselineAdjustment = UIBaselineAdjustment.None
        self.view.addSubview(label4)

        let label41 = UILabel(frame: CGRectMake(CGRectGetMaxX(label4.frame), 50 + 4 * height, (UIScreen.mainScreen().bounds.size.width-20)/2, height))
        label41.text = str
        label41.backgroundColor = UIColor.grayColor()
        self.view.addSubview(label41)
        
        
        let str1 = "The UILabel class implements a read-only text view. You can use this class to draw one or multiple lines of static text."
        // minimumScaleFactor
        let label5 = UILabel(frame: CGRectMake(10, 60 + 5 * height, UIScreen.mainScreen().bounds.size.width-20, height))
        label5.adjustsFontSizeToFitWidth = true
        label5.text = str1
        label5.minimumScaleFactor = 0
        self.view.addSubview(label5)

        let label6 = UILabel(frame: CGRectMake(10, 70 + 6 * height, UIScreen.mainScreen().bounds.size.width-20, height))
        label6.adjustsFontSizeToFitWidth = true
        label6.text = str1
        label6.minimumScaleFactor = 0.5
        self.view.addSubview(label6)
        
        let label7 = UILabel(frame: CGRectMake(10, 80 + 7 * height, UIScreen.mainScreen().bounds.size.width-20, height))
        label7.adjustsFontSizeToFitWidth = true
        label7.text = str1
        label7.minimumScaleFactor = 1
        self.view.addSubview(label7)
        
        // allowsDefaultTighteningForTruncation
        let label8 = UILabel(frame: CGRectMake(10, 90 + 8 * height, UIScreen.mainScreen().bounds.size.width-20, height))
        label8.allowsDefaultTighteningForTruncation = true
        label8.minimumScaleFactor = 0.5
        label8.adjustsFontSizeToFitWidth = true
        label8.text = str1
        self.view.addSubview(label8)
        
        let label9 = UILabel(frame: CGRectMake(10, 100 + 9 * height, UIScreen.mainScreen().bounds.size.width-20, height))
        label9.allowsDefaultTighteningForTruncation = true
        label9.text = str1
        self.view.addSubview(label9)

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
