//
//  OtherViewController.swift
//  UILabelDemo
//
//  Created by 金鑫 on 16/4/15.
//  Copyright © 2016年 金鑫. All rights reserved.
//

import UIKit

class OtherViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.edgesForExtendedLayout = UIRectEdge.None
        self.view.backgroundColor = UIColor.whiteColor()
        let str = "The UILabel class implements a read-only text view. You can use this class to draw one or multiple lines of static text."
        let height:CGFloat = 75.0
        
        // clipsToBounds = true
        let label0 = UILabel(frame: CGRectMake(10, 10, UIScreen.mainScreen().bounds.size.width-20, height))
        label0.text = str
        label0.numberOfLines = 0
        label0.layer.cornerRadius = 10
        label0.clipsToBounds = true
        label0.backgroundColor = UIColor.lightGrayColor()
        self.view.addSubview(label0)
        
        // clipsToBounds = fasle
        let label1 = UILabel(frame: CGRectMake(10, 20 + height, UIScreen.mainScreen().bounds.size.width-20, height))
        label1.text = str
        label1.numberOfLines = 0
        label1.layer.cornerRadius = 5
        label1.clipsToBounds = false
        label1.backgroundColor = UIColor.lightGrayColor()
        self.view.addSubview(label1)
        
        // sizeToFit
        let label2 = UILabel(frame: CGRectMake(10, 30 + 2 * height, UIScreen.mainScreen().bounds.size.width-20, height))
        label2.text = str
        label2.numberOfLines = 0
        label2.sizeToFit()
        label2.backgroundColor = UIColor.lightGrayColor()
        self.view.addSubview(label2)
        
        // sizeWithAttributes
        let label3 = UILabel(frame: CGRectMake(10, 40 + 3 * height, UIScreen.mainScreen().bounds.size.width-20, height))
        label3.text = str
        label3.backgroundColor = UIColor.lightGrayColor()
        label3.numberOfLines = 0
        let size: CGSize = label3.text!.sizeWithAttributes([NSFontAttributeName:label3.font])
        label3.frame = CGRectMake(10, 40 + 3 * height, size.width, size.height)
        self.view.addSubview(label3)
        
        // boundingRectWithSize
        let label4 = UILabel(frame: CGRectMake(10, 50 + 4 * height, UIScreen.mainScreen().bounds.size.width-20, height))
        label4.attributedText = NSAttributedString(string: str, attributes: [NSFontAttributeName:UIFont.systemFontOfSize(14)])
        label4.backgroundColor = UIColor.lightGrayColor()
        label4.numberOfLines = 0
        
        let size1: CGSize  = (label4.attributedText?.boundingRectWithSize( CGSizeMake(UIScreen.mainScreen().bounds.size.width - 20, 99), options: .UsesLineFragmentOrigin, context: nil).size)!
        label4.frame = CGRectMake(10, 50 + 4 * height, size1.width, size1.height)
        self.view.addSubview(label4)
        
        // sizeThatFits
        let label5 = UILabel(frame: CGRectMake(10, 60 + 5 * height, UIScreen.mainScreen().bounds.size.width-20, height))
        label5.text = str
        label5.backgroundColor = UIColor.lightGrayColor()
        label5.numberOfLines = 0
        let size2: CGSize  = label5.sizeThatFits(CGSizeMake(UIScreen.mainScreen().bounds.size.width - 20, CGFloat.max))
        label5.frame = CGRectMake(10, 60 + 5 * height, size2.width, size2.height)
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
