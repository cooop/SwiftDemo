//
//  WritingDirectionViewController.swift
//  UILabelDemo
//
//  Created by 金鑫 on 16/4/14.
//  Copyright © 2016年 金鑫. All rights reserved.
//

import UIKit

class WritingDirectionViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.edgesForExtendedLayout = UIRectEdge.None
        self.view.backgroundColor = UIColor.whiteColor()
        let str = "The UILabel class implements a read-only text view. You can use this class to draw one or multiple lines of static text."
        
        let height:CGFloat = 80.0
        //  NSWritingDirectionAttributeName, NSWritingDirection & NSWritingDirectionFormatType
        let label0 = UILabel(frame: CGRectMake(10, 10, UIScreen.mainScreen().bounds.size.width-20, height))
        let attributedString0 = NSAttributedString(string: str, attributes:[NSWritingDirectionAttributeName:[NSWritingDirection.Natural.rawValue|NSWritingDirectionFormatType.Override.rawValue]])
        label0.attributedText = attributedString0
        label0.numberOfLines = 0
        self.view.addSubview(label0)
        
        let label1 = UILabel(frame: CGRectMake(10, 20 + height, UIScreen.mainScreen().bounds.size.width-20, height))
        let attributedString1 = NSAttributedString(string: str, attributes:[NSWritingDirectionAttributeName:[NSWritingDirection.Natural.rawValue|NSWritingDirectionFormatType.Embedding.rawValue]])
        label1.attributedText = attributedString1
        label1.numberOfLines = 0
        self.view.addSubview(label1)
        
        let label2 = UILabel(frame: CGRectMake(10, 30 + 2 * height, UIScreen.mainScreen().bounds.size.width-20, height))
        let attributedString2 = NSAttributedString(string: str, attributes:[NSWritingDirectionAttributeName:[NSWritingDirection.LeftToRight.rawValue|NSWritingDirectionFormatType.Override.rawValue]]);
        label2.attributedText = attributedString2
        label2.numberOfLines = 0
        self.view.addSubview(label2)
        
        let label3 = UILabel(frame: CGRectMake(10, 40 + 3 * height, UIScreen.mainScreen().bounds.size.width-20, height))
        let attributedString3 = NSAttributedString(string: str, attributes:[NSWritingDirectionAttributeName:[NSWritingDirection.LeftToRight.rawValue|NSWritingDirectionFormatType.Embedding.rawValue]]);
        label3.attributedText = attributedString3
        label3.numberOfLines = 0
        self.view.addSubview(label3)
        
        let label4 = UILabel(frame: CGRectMake(10, 50 + 4 * height, UIScreen.mainScreen().bounds.size.width-20, height))
        let attributedString4 = NSAttributedString(string: str, attributes:[NSWritingDirectionAttributeName:[NSWritingDirection.RightToLeft.rawValue|NSWritingDirectionFormatType.Override.rawValue]])
        label4.attributedText = attributedString4
        label4.numberOfLines = 0
        self.view.addSubview(label4)
        
        
        let label31 = UILabel(frame: CGRectMake(10, 60 + 5 * height, UIScreen.mainScreen().bounds.size.width-20, height))
        let attributedString31 = NSAttributedString(string: str, attributes:[NSWritingDirectionAttributeName:[NSWritingDirection.RightToLeft.rawValue|NSWritingDirectionFormatType.Embedding.rawValue]]);
        label31.attributedText = attributedString31
        label31.numberOfLines = 0
        self.view.addSubview(label31)
        
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
