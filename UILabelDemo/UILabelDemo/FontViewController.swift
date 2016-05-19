//
//  FontViewController.swift
//  UILabelDemo
//
//  Created by 金鑫 on 16/4/13.
//  Copyright © 2016年 金鑫. All rights reserved.
//

import UIKit

class FontViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.edgesForExtendedLayout = UIRectEdge.None
        self.view.backgroundColor = UIColor.whiteColor()
        let str = "Hello, UILabel!"
        let height:CGFloat = 20.0
        
        let label0 = UILabel(frame: CGRectMake(10, 10, UIScreen.mainScreen().bounds.size.width-20, height))
        label0.text = str
        label0.font = UIFont.systemFontOfSize(14)
        self.view.addSubview(label0)
        
        let label1 = UILabel(frame: CGRectMake(10, 20 + height, UIScreen.mainScreen().bounds.size.width-20, height))
        label1.text = str
        label1.font = UIFont.boldSystemFontOfSize(14)
        self.view.addSubview(label1)
        
        let label2 = UILabel(frame: CGRectMake(10, 30 + 2 * height, UIScreen.mainScreen().bounds.size.width-20, height))
        label2.text = str
        label2.font = UIFont.italicSystemFontOfSize(14)
        self.view.addSubview(label2)
        
        let label3 = UILabel(frame: CGRectMake(10, 40 + 3 * height, UIScreen.mainScreen().bounds.size.width-20, height))
        label3.text = str
        label3.font = UIFont.preferredFontForTextStyle(UIFontTextStyleTitle1)
        self.view.addSubview(label3)
        
        let label4 = UILabel(frame: CGRectMake(10, 50 + 4 * height, UIScreen.mainScreen().bounds.size.width-20, height))
        label4.text = str
        label4.font = UIFont.preferredFontForTextStyle(UIFontTextStyleTitle2)
        self.view.addSubview(label4)
        
        let label5 = UILabel(frame: CGRectMake(10, 60 + 5 * height, UIScreen.mainScreen().bounds.size.width-20, height))
        label5.text = str
        label5.font = UIFont.preferredFontForTextStyle(UIFontTextStyleTitle3)
        self.view.addSubview(label5)
        
        let label6 = UILabel(frame: CGRectMake(10, 70 + 6 * height, UIScreen.mainScreen().bounds.size.width-20, height))
        label6.text = str
        label6.font = UIFont.preferredFontForTextStyle(UIFontTextStyleBody)
        self.view.addSubview(label6)
        
        let label7 = UILabel(frame: CGRectMake(10, 80 + 7 * height, UIScreen.mainScreen().bounds.size.width-20, height))
        label7.text = str
        label7.font = UIFont.preferredFontForTextStyle(UIFontTextStyleCaption1)
        self.view.addSubview(label7)
        
        let label8 = UILabel(frame: CGRectMake(10, 90 + 8 * height, UIScreen.mainScreen().bounds.size.width-20, height))
        label8.text = str
        label8.font = UIFont.preferredFontForTextStyle(UIFontTextStyleCaption2)
        self.view.addSubview(label8)
        
        let label9 = UILabel(frame: CGRectMake(10, 100 + 9 * height, UIScreen.mainScreen().bounds.size.width-20, height))
        label9.text = str
        label9.font = UIFont.preferredFontForTextStyle(UIFontTextStyleCallout)
        self.view.addSubview(label9)
        
        let label10 = UILabel(frame: CGRectMake(10, 110 + 10 * height, UIScreen.mainScreen().bounds.size.width-20, height))
        label10.text = str
        label10.font = UIFont.preferredFontForTextStyle(UIFontTextStyleHeadline)
        self.view.addSubview(label10)
        
        let label11 = UILabel(frame: CGRectMake(10, 120 + 11 * height, UIScreen.mainScreen().bounds.size.width-20, height))
        label11.text = str
        label11.font = UIFont.preferredFontForTextStyle(UIFontTextStyleSubheadline)
        self.view.addSubview(label11)
        
        let label12 = UILabel(frame: CGRectMake(10, 130 + 12 * height, UIScreen.mainScreen().bounds.size.width-20, height))
        label12.text = str
        label12.font = UIFont.preferredFontForTextStyle(UIFontTextStyleFootnote)
        self.view.addSubview(label12)
        
        let label13 = UILabel(frame: CGRectMake(10, 140 + 13 * height, UIScreen.mainScreen().bounds.size.width-20, height))
        label13.text = str
        label13.font = UIFont(name: "Lucida Grande", size: 14)
        self.view.addSubview(label13)
        
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
