//
//  StrikeUnderlineViewController.swift
//  UILabelDemo
//
//  Created by 金鑫 on 16/4/14.
//  Copyright © 2016年 金鑫. All rights reserved.
//

import UIKit

class StrikethroughViewController: UIViewController {

    var label: UILabel?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.edgesForExtendedLayout = UIRectEdge.None
        self.view.backgroundColor = UIColor.whiteColor()
        let str = "Hello Attributed String"
        
        let height:CGFloat = 20.0
        
        // 删除线
        let label0 = UILabel(frame: CGRectMake(10, 10, UIScreen.mainScreen().bounds.size.width-20, height))
        let attributedString0 = NSAttributedString(string: str, attributes:[NSStrikethroughStyleAttributeName:NSUnderlineStyle.StyleNone.rawValue])
        label0.attributedText = attributedString0
        self.view.addSubview(label0)
        
        let label1 = UILabel(frame: CGRectMake(10, 20 + height, UIScreen.mainScreen().bounds.size.width-20, height))
        let attributedString1 = NSAttributedString(string: str, attributes:[NSStrikethroughStyleAttributeName:NSUnderlineStyle.StyleSingle.rawValue])
        label1.attributedText = attributedString1
        self.view.addSubview(label1)
        
        let label2 = UILabel(frame: CGRectMake(10, 30 + 2 * height, UIScreen.mainScreen().bounds.size.width-20, height))
        let attributedString2 = NSAttributedString(string: str, attributes:[NSStrikethroughStyleAttributeName:NSUnderlineStyle.StyleThick.rawValue]);
        label2.attributedText = attributedString2
        self.view.addSubview(label2)
        
        let label3 = UILabel(frame: CGRectMake(10, 40 + 3 * height, UIScreen.mainScreen().bounds.size.width-20, height))
        let attributedString3 = NSAttributedString(string: str, attributes:[NSStrikethroughStyleAttributeName:NSUnderlineStyle.StyleDouble.rawValue]);
        label3.attributedText = attributedString3
        self.view.addSubview(label3)
        
        let label4 = UILabel(frame: CGRectMake(10, 50 + 4 * height, UIScreen.mainScreen().bounds.size.width-20, height))
        let attributedString4 = NSAttributedString(string: str, attributes:[NSStrikethroughStyleAttributeName:NSUnderlineStyle.StyleSingle.rawValue, NSStrikethroughColorAttributeName:UIColor.redColor()])
        label4.attributedText = attributedString4
        self.view.addSubview(label4)
        
        let label31 = UILabel(frame: CGRectMake(10, 60 + 5 * height, UIScreen.mainScreen().bounds.size.width-20, height))
        let attributedString31 = NSAttributedString(string: str, attributes:[NSStrikethroughStyleAttributeName:NSUnderlineStyle.StyleSingle.rawValue|NSUnderlineStyle.PatternDot.rawValue, NSStrikethroughColorAttributeName:UIColor.redColor()]);
        label31.attributedText = attributedString31
        self.view.addSubview(label31)
        
        let label32 = UILabel(frame: CGRectMake(10, 70 + 6 * height, UIScreen.mainScreen().bounds.size.width-20, height))
        let attributedString32 = NSAttributedString(string: str, attributes:[NSStrikethroughStyleAttributeName:NSUnderlineStyle.StyleSingle.rawValue|NSUnderlineStyle.PatternDash.rawValue, NSStrikethroughColorAttributeName:UIColor.redColor()]);
        label32.attributedText = attributedString32
        self.view.addSubview(label32)
        
        let label33 = UILabel(frame: CGRectMake(10, 80 + 7 * height, UIScreen.mainScreen().bounds.size.width-20, height))
        let attributedString33 = NSAttributedString(string: str, attributes:[NSStrikethroughStyleAttributeName:NSUnderlineStyle.StyleSingle.rawValue|NSUnderlineStyle.PatternDashDot.rawValue, NSStrikethroughColorAttributeName:UIColor.redColor()]);
        label33.attributedText = attributedString33
        self.view.addSubview(label33)
        
        let label34 = UILabel(frame: CGRectMake(10, 90 + 8 * height, UIScreen.mainScreen().bounds.size.width-20, height))
        let attributedString34 = NSAttributedString(string: str, attributes:[NSStrikethroughStyleAttributeName:NSUnderlineStyle.StyleSingle.rawValue|NSUnderlineStyle.PatternDashDotDot.rawValue, NSStrikethroughColorAttributeName:UIColor.redColor()]);
        label34.attributedText = attributedString34
        self.view.addSubview(label34)
        
        let label35 = UILabel(frame: CGRectMake(10, 100 + 9 * height, UIScreen.mainScreen().bounds.size.width-20, height))
        let attributedString35 = NSAttributedString(string: str, attributes:[NSStrikethroughStyleAttributeName:NSUnderlineStyle.StyleSingle.rawValue|NSUnderlineStyle.ByWord.rawValue, NSStrikethroughColorAttributeName:UIColor.redColor()]);
        label35.attributedText = attributedString35
        self.view.addSubview(label35)

        
        let label5 = UILabel(frame: CGRectMake(10, 110 + 10 * height, UIScreen.mainScreen().bounds.size.width-20, height))
        let attributedString5 = NSAttributedString(string: "0:" + str, attributes:[NSStrikethroughStyleAttributeName:0, NSStrikethroughColorAttributeName:UIColor.redColor()])
        label5.attributedText = attributedString5
        self.view.addSubview(label5)
        label = label5

        
        let stepper = UIStepper(frame: CGRectMake(10, 120 + 11 * height, UIScreen.mainScreen().bounds.size.width-20, height))
        stepper.minimumValue = 0
        stepper.addTarget(self, action:#selector(stepperChanged(_:)), forControlEvents: UIControlEvents.ValueChanged)
        self.view.addSubview(stepper)
        
    }
    
    func stepperChanged(sender: UIStepper){
        let str = "Hello Attributed String"
        let attributedString = NSAttributedString(string: String(Int(sender.value)) + ":" + str, attributes:[NSStrikethroughStyleAttributeName:sender.value, NSStrikethroughColorAttributeName:UIColor.redColor()])
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
