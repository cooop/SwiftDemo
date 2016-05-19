//
//  LineBreakModeViewController.swift
//  UILabelDemo
//
//  Created by 金鑫 on 16/4/13.
//  Copyright © 2016年 金鑫. All rights reserved.
//

import UIKit

class LineBreakModeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.edgesForExtendedLayout = UIRectEdge.None
        self.view.backgroundColor = UIColor.whiteColor()
        let str = "The UILabel class implements a read-only text view. You can use this class to draw one or multiple lines of static text."
        let height:CGFloat = 80.0
        
        let label0 = UILabel(frame: CGRectMake(10, 10, UIScreen.mainScreen().bounds.size.width-20, height))
        label0.text = str
        label0.numberOfLines = 0
        label0.lineBreakMode = NSLineBreakMode.ByWordWrapping
        self.view.addSubview(label0)
        
        let label1 = UILabel(frame: CGRectMake(10, 20 + height, UIScreen.mainScreen().bounds.size.width-20, height))
        label1.text = str
        label1.numberOfLines = 0
        label1.lineBreakMode = NSLineBreakMode.ByCharWrapping
        self.view.addSubview(label1)
        
        let label2 = UILabel(frame: CGRectMake(10, 30 + 2 * height, UIScreen.mainScreen().bounds.size.width-20, height))
        label2.text = str
        label2.numberOfLines = 2
        label2.lineBreakMode = NSLineBreakMode.ByClipping
        self.view.addSubview(label2)
        
        let label3 = UILabel(frame: CGRectMake(10, 40 + 3 * height, UIScreen.mainScreen().bounds.size.width-20, height))
        label3.text = str
        label3.numberOfLines = 1
        label3.lineBreakMode = NSLineBreakMode.ByTruncatingHead
        self.view.addSubview(label3)
        
        let label4 = UILabel(frame: CGRectMake(10, 50 + 4 * height, UIScreen.mainScreen().bounds.size.width-20, height))
        label4.text = str
        label4.numberOfLines = 1
        label4.lineBreakMode = NSLineBreakMode.ByTruncatingTail
        self.view.addSubview(label4)
        
        let label5 = UILabel(frame: CGRectMake(10, 60 + 5 * height, UIScreen.mainScreen().bounds.size.width-20, height))
        label5.text = str
        label5.numberOfLines = 1
        label5.lineBreakMode = NSLineBreakMode.ByTruncatingMiddle
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
