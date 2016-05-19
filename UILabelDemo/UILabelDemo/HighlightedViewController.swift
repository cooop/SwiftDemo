//
//  HighlightedViewController.swift
//  UILabelDemo
//
//  Created by 金鑫 on 16/4/14.
//  Copyright © 2016年 金鑫. All rights reserved.
//

import UIKit

class HighlightedViewController: UIViewController {

    var label: UILabel?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.edgesForExtendedLayout = UIRectEdge.None
        self.view.backgroundColor = UIColor.whiteColor()
        let str = "Hello, UILabel!"
        let height:CGFloat = 40.0
        
        let label0 = UILabel(frame: CGRectMake(10, 10, UIScreen.mainScreen().bounds.size.width-20, height))
        label0.text = str
        label0.textColor = UIColor.blueColor()
        label0.highlightedTextColor = UIColor.redColor()
        label0.addGestureRecognizer(UITapGestureRecognizer(target:self, action:#selector(backgroundColorChanged(_:))))
        self.view.addSubview(label0)
        label = label0
        
        let highlightedLabel = UILabel(frame: CGRectMake(10, 20 + height, 240, height))
        highlightedLabel.text = "highlighted: "
        self.view.addSubview(highlightedLabel)
        
        let highlightedSwitch = UISwitch(frame: CGRectMake(260, 20 + height, UIScreen.mainScreen().bounds.size.width-90, height))
        highlightedSwitch.addTarget(self, action: #selector(highlightedChanged(_:)), forControlEvents: UIControlEvents.ValueChanged)
        self.view.addSubview(highlightedSwitch)
        
        let enabledLabel = UILabel(frame: CGRectMake(10, 30 + 2 * height, 240, height))
        enabledLabel.text = "enabled: "
        self.view.addSubview(enabledLabel)
        
        let enabledSwitch = UISwitch(frame: CGRectMake(260, 30 + 2 * height, UIScreen.mainScreen().bounds.size.width-90, height))
        enabledSwitch.addTarget(self, action: #selector(enabledChanged(_:)), forControlEvents: UIControlEvents.ValueChanged)
        enabledSwitch.on = true
        self.view.addSubview(enabledSwitch)
        
        let uieLabel = UILabel(frame: CGRectMake(10, 40 + 3 * height, 240, height))
        uieLabel.text = "userInteractionEnabled: "
        self.view.addSubview(uieLabel)
        
        let uieSwitch = UISwitch(frame: CGRectMake(260, 40 + 3 * height, UIScreen.mainScreen().bounds.size.width-90, height))
        uieSwitch.addTarget(self, action: #selector(uieChanged(_:)), forControlEvents: UIControlEvents.ValueChanged)
        self.view.addSubview(uieSwitch)


    }
    
    func highlightedChanged(sender: UISwitch){
        label?.highlighted = sender.on
    }
    
    func enabledChanged(sender: UISwitch){
        label?.enabled = sender.on
    }
    
    func uieChanged(sender: UISwitch){
        label?.userInteractionEnabled = sender.on
        label?.backgroundColor = UIColor.whiteColor()
    }
    
    func backgroundColorChanged(sender: UISwitch){
        label?.backgroundColor = UIColor.lightGrayColor()
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
