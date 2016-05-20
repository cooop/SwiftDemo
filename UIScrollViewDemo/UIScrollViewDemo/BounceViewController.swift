//
//  BounceViewController.swift
//  UIScrollViewDemo
//
//  Created by 金鑫 on 16/5/19.
//  Copyright © 2016年 Cooop. All rights reserved.
//

import UIKit

class BounceViewController: UIViewController {

    var scrollView: UIScrollView?
    var image: UIImage?
    var imageView: UIImageView?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.edgesForExtendedLayout = UIRectEdge.None
        self.view.backgroundColor = UIColor.whiteColor()
        
        scrollView = UIScrollView(frame: CGRectMake(0,0,UIScreen.mainScreen().bounds.size.width,300))
        scrollView?.backgroundColor = UIColor.grayColor()
        image = UIImage(named: "TestImage")
        imageView = UIImageView(image: image)
        imageView!.frame = CGRectMake(0, 0, (image?.size.width)!, (image?.size.height)!)
        scrollView?.addSubview(imageView!)
        
        if let sv = scrollView {
            self.view.addSubview(sv)
        }
        
        scrollView?.contentSize = (image?.size)!
        
        let label = UILabel(frame: CGRectMake(10, 320, 200, 40))
        label.text = "bounces"
        self.view.addSubview(label)
        let switcher = UISwitch(frame: CGRectMake(220, 320, 200, 40))
        switcher.addTarget(self, action: #selector(bounces(_:)), forControlEvents: .ValueChanged)
        switcher.on = true
        self.view.addSubview(switcher)
        
        let label1 = UILabel(frame: CGRectMake(10, 370, 200, 40))
        label1.text = "reduceContentSize"
        self.view.addSubview(label1)
        let switcher1 = UISwitch(frame: CGRectMake(220, 370, 200, 40))
        switcher1.addTarget(self, action: #selector(reduceContentSize(_:)), forControlEvents: .ValueChanged)
        self.view.addSubview(switcher1)
        
        let label2 = UILabel(frame: CGRectMake(10, 420, 200, 40))
        label2.text = "alwaysBounceVertical"
        self.view.addSubview(label2)
        let switcher2 = UISwitch(frame: CGRectMake(220, 420, 200, 40))
        switcher2.addTarget(self, action: #selector(alwaysBounceVertical(_:)), forControlEvents: .ValueChanged)
        self.view.addSubview(switcher2)
        
        let label3 = UILabel(frame: CGRectMake(10, 470, 200, 40))
        label3.text = "alwaysBounceHorizontal"
        self.view.addSubview(label3)
        let switcher3 = UISwitch(frame: CGRectMake(220, 470, 200, 40))
        switcher3.addTarget(self, action: #selector(alwaysBounceHorizontal(_:)), forControlEvents: .ValueChanged)
        self.view.addSubview(switcher3)
        
        let label4 = UILabel(frame: CGRectMake(10, 520, 200, 40))
        label4.text = "decelerationRate"
        self.view.addSubview(label4)
        
        let segmentedControl = UISegmentedControl(items:["Normal", "Fast"])
        segmentedControl.frame = CGRectMake(220, 520, 150, 40)
        segmentedControl.selectedSegmentIndex = 0
        segmentedControl.addTarget(self, action: #selector(decelerationRate(_:)), forControlEvents: .ValueChanged)
        self.view.addSubview(segmentedControl)
        
    }
    
    func bounces(sender: UISwitch) {
        scrollView?.bounces = sender.on
    }
    
    func reduceContentSize(sender :UISwitch) {
        if sender.on {
            scrollView?.contentSize = CGSize(width: 200, height: 100)
            imageView?.frame = CGRectMake(0, 0, 200, 100)
        } else {
            scrollView?.contentSize = (image?.size)!
            imageView?.frame = CGRectMake(0, 0, (image?.size.width)!, (image?.size.height)!)
        }
    }
    
    func alwaysBounceHorizontal(sender: UISwitch) {
        scrollView?.alwaysBounceHorizontal = sender.on
    }
    
    func alwaysBounceVertical(sender: UISwitch) {
        scrollView?.alwaysBounceVertical = sender.on
    }
    
    func decelerationRate(sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            scrollView?.decelerationRate = UIScrollViewDecelerationRateNormal
        } else if sender.selectedSegmentIndex == 1 {
            scrollView?.decelerationRate = UIScrollViewDecelerationRateFast
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
