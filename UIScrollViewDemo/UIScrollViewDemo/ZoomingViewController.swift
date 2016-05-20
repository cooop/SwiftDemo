//
//  ZoomingViewController.swift
//  UIScrollViewDemo
//
//  Created by 金鑫 on 16/5/19.
//  Copyright © 2016年 Cooop. All rights reserved.
//

import UIKit

class ZoomingViewController: UIViewController, UIScrollViewDelegate {

    var scrollView: UIScrollView?
    var imageView: UIImageView?
    var image: UIImage?
    var label: UILabel?
    var status: UILabel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        self.edgesForExtendedLayout = UIRectEdge.None
        self.view.backgroundColor = UIColor.whiteColor()
        
        scrollView = UIScrollView(frame: CGRectMake(0,0,UIScreen.mainScreen().bounds.size.width,300))
        scrollView?.backgroundColor = UIColor.grayColor()
        image = UIImage(named: "TestImage")
        imageView = UIImageView(image: image)
        imageView!.frame = CGRectMake(0, 0, image!.size.width, image!.size.height)
        scrollView?.maximumZoomScale = 2.0
        scrollView?.minimumZoomScale = 0.5
        scrollView?.delegate = self
        
        scrollView?.addSubview(imageView!)
        if let sv = scrollView {
            self.view.addSubview(sv)
        }
        
        scrollView?.contentSize = image!.size
        
        let label = UILabel(frame: CGRectMake(10, 320, 200, 40))
        label.text = "zoomScale:\(scrollView!.zoomScale)"
        self.view.addSubview(label)
        self.label = label

        let label1 = UILabel(frame: CGRectMake(10, 370, 200, 40))
        label1.text = "bouncesZoom"
        self.view.addSubview(label1)
        let switcher1 = UISwitch(frame: CGRectMake(220, 370, 200, 40))
        switcher1.addTarget(self, action: #selector(bouncesZoom(_:)), forControlEvents: .ValueChanged)
        self.view.addSubview(switcher1)
        switcher1.on = true
        
        let label2 = UILabel(frame: CGRectMake(10, 420, 200, 40))
        label2.text = "setZoomScale"
        self.view.addSubview(label2)
        let switcher2 = UISwitch(frame: CGRectMake(220, 420, 200, 40))
        switcher2.addTarget(self, action: #selector(setZoomScale(_:)), forControlEvents: .ValueChanged)
        self.view.addSubview(switcher2)

        
        let label3 = UILabel(frame: CGRectMake(10, 470, 200, 40))
        label3.text = "zoomToRect"
        self.view.addSubview(label3)
        let switcher3 = UISwitch(frame: CGRectMake(220, 470, 200, 40))
        switcher3.addTarget(self, action: #selector(zoomToRect(_:)), forControlEvents: .ValueChanged)
        self.view.addSubview(switcher3)
        
        let label4 = UILabel(frame: CGRectMake(10, 520, 200, 40))
        label4.text = "scrollRectToVisible"
        self.view.addSubview(label4)
        let switcher4 = UISwitch(frame: CGRectMake(220, 520, 200, 40))
        switcher4.addTarget(self, action: #selector(scrollRectToVisible(_:)), forControlEvents: .ValueChanged)
        self.view.addSubview(switcher4)
        
        status = UILabel(frame: CGRectMake(10, 570, 400, 40))
        status?.text = "not zooming"
        self.view.addSubview(status!)

        
    }
    
    func bouncesZoom(sender: UISwitch) {
        scrollView?.bouncesZoom = sender.on
    }
    
    func setZoomScale(sender: UISwitch) {
        if sender.on {
            scrollView?.setZoomScale(1.5, animated: true)
        } else {
            scrollView?.setZoomScale(0.75, animated: true)
        }
    }
    
    func zoomToRect(sender: UISwitch) {
        if sender.on {
            scrollView?.zoomToRect(CGRectMake(image!.size.width-600, image!.size.height-300, 600, 300), animated: true)
        } else {
            scrollView?.zoomToRect(CGRectMake(100, 100, 200, 100), animated: true)
        }
    }
    
    func scrollRectToVisible(sender: UISwitch) {
        if sender.on {
            scrollView?.scrollRectToVisible(CGRectMake(image!.size.width-600, image!.size.height-300, 600, 300), animated: true)
        } else {
            scrollView?.scrollRectToVisible(CGRectMake(100, 100, 200, 100), animated: true)
        }
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func viewForZoomingInScrollView(scrollView: UIScrollView) -> UIView? {
        NSLog("viewForZoomingInScrollView")
        status?.text = "viewForZoomingInScrollView"
        status?.textColor = UIColor.blueColor()
        return imageView
    }
    
    func scrollViewWillBeginZooming(scrollView: UIScrollView, withView view: UIView?) {
        NSLog("scrollViewWillBeginZooming")
        status?.text = "scrollViewWillBeginZooming"
        status?.textColor = UIColor.redColor()
    }
    
    func scrollViewDidEndZooming(scrollView: UIScrollView, withView view: UIView?, atScale scale: CGFloat) {
        NSLog("scrollViewDidEndZooming")
        status?.text = "scrollViewDidEndZooming"
    }
    
    func scrollViewDidZoom(scrollView: UIScrollView) {
        NSLog("scrollViewDidZoom")
        status?.text = "scrollViewDidZoom"

        self.label?.text = "zoomScale:\(scrollView.zoomScale)"
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
