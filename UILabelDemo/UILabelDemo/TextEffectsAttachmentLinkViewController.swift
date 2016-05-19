//
//  TextEffectsAttachmentLinkViewController.swift
//  UILabelDemo
//
//  Created by 金鑫 on 16/4/14.
//  Copyright © 2016年 金鑫. All rights reserved.
//

import UIKit

class TextEffectsAttachmentLinkViewController: UIViewController {

    var label: UILabel?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.edgesForExtendedLayout = UIRectEdge.None
        self.view.backgroundColor = UIColor.whiteColor()
        let str = "Hello, AttributedString"
        
        let height:CGFloat = 40.0
        
        // NSTextEffectAttributeName, 没看出来有什么不同
        let label0 = UILabel(frame: CGRectMake(10, 10, UIScreen.mainScreen().bounds.size.width-20, height))
        let attributedString0 = NSMutableAttributedString(string: str)
        attributedString0.addAttribute(NSTextEffectAttributeName, value: NSTextEffectLetterpressStyle, range: NSMakeRange(0, 5))
        label0.attributedText = attributedString0
        self.view.addSubview(label0)
        
        // NSAttachmentAttributeName, 但是似乎没有用到
        let label1 = UILabel(frame: CGRectMake(10, 20 + height, UIScreen.mainScreen().bounds.size.width-20, height))
        let attch = NSTextAttachment()
        attch.image = UIImage(named: "emoji")
        let attributedString1 = NSAttributedString(attachment: attch)
        let attributedString11 = NSMutableAttributedString(string:str)
        attributedString11.insertAttributedString(attributedString1, atIndex: 5)
        label1.attributedText = attributedString11
        self.view.addSubview(label1)
        
        // NSLinkAttributeName
        let label2 = UILabel(frame: CGRectMake(10, 30 + 2 * height, UIScreen.mainScreen().bounds.size.width-20, height))
        let attributedString2 = NSMutableAttributedString(string: str);
        attributedString2.addAttribute(NSLinkAttributeName, value: NSURL(string:"http://note.youdao.com")!, range: NSMakeRange(0,5))
        label2.attributedText = attributedString2
        self.view.addSubview(label2)
        
        // NSBaselineOffsetAttributeName
        let label5 = UILabel(frame: CGRectMake(10, 40 + 3 * height, UIScreen.mainScreen().bounds.size.width-20, 300))
        let attributedString5 = NSAttributedString(string: "0:" + str1, attributes:[NSBaselineOffsetAttributeName:0])
        label5.attributedText = attributedString5
        label5.numberOfLines = 0
        self.view.addSubview(label5)
        label = label5
        
        
        let stepper = UIStepper(frame: CGRectMake(10, 120 + 11 * height, UIScreen.mainScreen().bounds.size.width-20, height))
        stepper.minimumValue = -100
        stepper.addTarget(self, action:#selector(stepperChanged(_:)), forControlEvents: UIControlEvents.ValueChanged)
        self.view.addSubview(stepper)
        
    }
    
    let str1 = "The UILabel class implements a read-only text view. You can use this class to draw one or multiple lines of static text."
    
    func stepperChanged(sender: UIStepper){
        
        let attributedString = NSAttributedString(string: String(Int(sender.value)) + ":" + str1, attributes:[NSBaselineOffsetAttributeName:sender.value])
        label!.attributedText = attributedString
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
