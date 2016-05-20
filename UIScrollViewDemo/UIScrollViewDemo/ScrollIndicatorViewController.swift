//
//  ScrollIndicatorViewController.swift
//  UIScrollViewDemo
//
//  Created by 金鑫 on 16/5/19.
//  Copyright © 2016年 Cooop. All rights reserved.
//

import UIKit

class ScrollIndicatorViewController: UIViewController {

    var scrollView: UIScrollView?
    var image: UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        self.edgesForExtendedLayout = UIRectEdge.None
        self.view.backgroundColor = UIColor.whiteColor()
        
        scrollView = UIScrollView(frame: CGRectMake(0,0,UIScreen.mainScreen().bounds.size.width,300))
        scrollView?.backgroundColor = UIColor.grayColor()
        image = UIImage(named: "TestImage")
        let imageView = UIImageView(image: image)
        imageView.frame = CGRectMake(0, 0, (image?.size.width)!, (image?.size.height)!)
        
        scrollView?.addSubview(imageView)
        if let sv = scrollView {
            self.view.addSubview(sv)
        }
        
        scrollView?.contentSize = (image?.size)!
        
        let label = UILabel(frame: CGRectMake(10, 320, 200, 40))
        label.text = "indicatorStyle"
        self.view.addSubview(label)
        let segmentedControl = UISegmentedControl(items:["Default", "Black", "White"])
        segmentedControl.frame = CGRectMake(220, 320, 150, 40)
        segmentedControl.selectedSegmentIndex = 0
        segmentedControl.addTarget(self, action: #selector(indicatorStyle(_:)), forControlEvents: .ValueChanged)
        self.view.addSubview(segmentedControl)
        
        let label1 = UILabel(frame: CGRectMake(10, 370, 200, 40))
        label1.text = "showsHorizontalScrollIndicator"
        self.view.addSubview(label1)
        let switcher1 = UISwitch(frame: CGRectMake(220, 370, 200, 40))
        switcher1.addTarget(self, action: #selector(showsHorizontalScrollIndicator(_:)), forControlEvents: .ValueChanged)
        self.view.addSubview(switcher1)
        switcher1.on = true
        
        let label2 = UILabel(frame: CGRectMake(10, 420, 200, 40))
        label2.text = "showsVerticalScrollIndicator"
        self.view.addSubview(label2)
        let switcher2 = UISwitch(frame: CGRectMake(220, 420, 200, 40))
        switcher2.addTarget(self, action: #selector(showsVerticalScrollIndicator(_:)), forControlEvents: .ValueChanged)
        self.view.addSubview(switcher2)
        switcher2.on = true
        
        let label3 = UILabel(frame: CGRectMake(10, 470, 200, 40))
        label3.text = "scrollIndicatorInsets"
        self.view.addSubview(label3)
        let switcher3 = UISwitch(frame: CGRectMake(220, 470, 200, 40))
        switcher3.addTarget(self, action: #selector(scrollIndicatorInsets(_:)), forControlEvents: .ValueChanged)
        self.view.addSubview(switcher3)
        
        let label4 = UILabel(frame: CGRectMake(10, 520, 200, 40))
        label4.text = "flashScrollIndicators"
        self.view.addSubview(label4)
        let switcher4 = UISwitch(frame: CGRectMake(220, 520, 200, 40))
        switcher4.addTarget(self, action: #selector(flashScrollIndicators(_:)), forControlEvents: .ValueChanged)
        self.view.addSubview(switcher4)
        
    }
    
    func indicatorStyle(sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            scrollView?.indicatorStyle = .Default
        case 1:
            scrollView?.indicatorStyle = .Black
        case 2:
            scrollView?.indicatorStyle = .White
        default:
            break
        }
    }
    
    func showsHorizontalScrollIndicator(sender: UISwitch) {
        scrollView?.showsHorizontalScrollIndicator = sender.on
    }
    
    func showsVerticalScrollIndicator(sender: UISwitch) {
        scrollView?.showsVerticalScrollIndicator = sender.on
    }
    
    func scrollIndicatorInsets(sender: UISwitch) {
        if sender.on {
            scrollView?.scrollIndicatorInsets = UIEdgeInsetsMake(20, 20, 20, 20)
        } else {
            scrollView?.scrollIndicatorInsets = UIEdgeInsetsZero
        }
    }
    
    func flashScrollIndicators(sender: UISwitch) {
        if sender.on {
            scrollView?.flashScrollIndicators()
        }
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
