//
//  ReadOnlyStatusViewController.swift
//  UIScrollViewDemo
//
//  Created by 金鑫 on 16/5/19.
//  Copyright © 2016年 Cooop. All rights reserved.
//

import UIKit

private var myContext = 0

class ReadOnlyStatusViewController: UIViewController, UIScrollViewDelegate {

    var scrollView: UIScrollView?
    var imageView: UIImageView?
    var image: UIImage?
    
    var label: UILabel!
    var label1: UILabel!
    var label2: UILabel!
    var label3: UILabel!
    var label4: UILabel!
    var label5: UILabel!
    
    
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
        
        label = UILabel(frame: CGRectMake(10, 320, 200, 40))
        label.text = "tracking(\(scrollView!.tracking))"
        
        self.view.addSubview(label)
        
        label1 = UILabel(frame: CGRectMake(10, 370, 200, 40))
        label1.text = "dragging(\(scrollView!.dragging))"
        self.view.addSubview(label1)
        
        label2 = UILabel(frame: CGRectMake(10, 420, 200, 40))
        label2.text = "decelerating(\(scrollView!.decelerating))"
        self.view.addSubview(label2)
        
        label3 = UILabel(frame: CGRectMake(10, 470, 200, 40))
        label3.text = "zooming(\(scrollView!.zooming))"
        self.view.addSubview(label3)
        
        label4 = UILabel(frame: CGRectMake(10, 520, 200, 40))
        label4.text = "zoomBouncing(\(scrollView!.zoomBouncing))"
        self.view.addSubview(label4)
        
        label5 = UILabel(frame: CGRectMake(10, 570, 200, 40))
        label5.text = "not scroll"
        self.view.addSubview(label5)
        
    }
    
    func updateStatus(){
        label.text = "tracking(\(scrollView!.tracking))"
        
        label1.text = "dragging(\(scrollView!.dragging))"
        
        label2.text = "decelerating(\(scrollView!.decelerating))"
        
        label3.text = "zooming(\(scrollView!.zooming))"
        
        label4.text = "zoomBouncing(\(scrollView!.zoomBouncing))"

    }
    
    func scrollViewDidScroll(scrollView: UIScrollView) {
        updateStatus()
        label5.text = "scrollViewDidScroll"
        NSLog("scrollViewDidScroll: \(label.text!), \(label1.text!), \(label2.text!), \(label3.text!), \(label4.text!)")
    }
    
    func scrollViewWillBeginDragging(scrollView: UIScrollView) {
        updateStatus()
        label5.text = "scrollViewWillBeginDragging"
        NSLog("scrollViewWillBeginDragging: \(label.text!), \(label1.text!), \(label2.text!), \(label3.text!), \(label4.text!)")
    }
    
    func scrollViewWillEndDragging(scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
        updateStatus()
        label5.text = "scrollViewWillEndDragging"
        NSLog("scrollViewWillEndDragging: \(label.text!), \(label1.text!), \(label2.text!), \(label3.text!), \(label4.text!)")
    }
    
    func scrollViewDidEndDragging(scrollView: UIScrollView, willDecelerate decelerate: Bool) {
        updateStatus()
        label5.text = "scrollViewDidEndDragging"
        NSLog("scrollViewDidEndDragging: \(label.text!), \(label1.text!), \(label2.text!), \(label3.text!), \(label4.text!)")
    }
    
    func scrollViewShouldScrollToTop(scrollView: UIScrollView) -> Bool {
        updateStatus()
        label5.text = "scrollViewShouldScrollToTop"
        NSLog("scrollViewShouldScrollToTop: \(label.text!), \(label1.text!), \(label2.text!), \(label3.text!), \(label4.text!)")
        return true
    }
    
    func scrollViewDidScrollToTop(scrollView: UIScrollView) {
        updateStatus()
        label5.text = "scrollViewDidScrollToTop"
        NSLog("scrollViewDidScrollToTop: \(label.text!), \(label1.text!), \(label2.text!), \(label3.text!), \(label4.text!)")
    }
    
    func scrollViewWillBeginDecelerating(scrollView: UIScrollView) {
        updateStatus()
        label5.text = "scrollViewWillBeginDecelerating"
        NSLog("scrollViewWillBeginDecelerating: \(label.text!), \(label1.text!), \(label2.text!), \(label3.text!), \(label4.text!)")
    }
    
    func scrollViewDidEndDecelerating(scrollView: UIScrollView) {
        updateStatus()
        label5.text = "scrollViewDidEndDecelerating"
        NSLog("scrollViewDidEndDecelerating: \(label.text!), \(label1.text!), \(label2.text!), \(label3.text!), \(label4.text!)")
    }

    func viewForZoomingInScrollView(scrollView: UIScrollView) -> UIView? {
        updateStatus()
        label5.text = "viewForZoomingInScrollView"
        NSLog("viewForZoomingInScrollView: \(label.text!), \(label1.text!), \(label2.text!), \(label3.text!), \(label4.text!)")
        return imageView
    }
    
    func scrollViewWillBeginZooming(scrollView: UIScrollView, withView view: UIView?) {
        updateStatus()
        label5.text = "scrollViewWillBeginZooming"
        NSLog("scrollViewWillBeginZooming: \(label.text!), \(label1.text!), \(label2.text!), \(label3.text!), \(label4.text!)")
    }
    
    func scrollViewDidEndZooming(scrollView: UIScrollView, withView view: UIView?, atScale scale: CGFloat) {
        updateStatus()
        label5.text = "scrollViewDidEndZooming"
        NSLog("scrollViewDidEndZooming: \(label.text!), \(label1.text!), \(label2.text!), \(label3.text!), \(label4.text!)")
    }
    
    func scrollViewDidZoom(scrollView: UIScrollView) {
        updateStatus()
        label5.text = "scrollViewDidZoom"
        NSLog("scrollViewDidZoom: \(label.text!), \(label1.text!), \(label2.text!), \(label3.text!), \(label4.text!)")
    }
    
    func scrollViewDidEndScrollingAnimation(scrollView: UIScrollView) {
        updateStatus()
        label5.text = "scrollViewDidEndScrollingAnimation"
        NSLog("scrollViewDidEndScrollingAnimation: \(label.text!), \(label1.text!), \(label2.text!), \(label3.text!), \(label4.text!)")
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
