//
//  KeyBoardViewController.swift
//  UIScrollViewDemo
//
//  Created by 金鑫 on 16/5/20.
//  Copyright © 2016年 Cooop. All rights reserved.
//

import UIKit

class KeyBoardViewController: UIViewController {

    var scrollView: UIScrollView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        self.edgesForExtendedLayout = UIRectEdge.None
        self.view.backgroundColor = UIColor.whiteColor()
        
        scrollView = UIScrollView(frame: CGRectMake(0,0,UIScreen.mainScreen().bounds.size.width,500))
        scrollView?.backgroundColor = UIColor.grayColor()
        let image = UIImage(named: "TestImage")
        let imageView = UIImageView(image: image)
        imageView.frame = CGRectMake(0, 0, image!.size.width, image!.size.height)
        
        scrollView?.addSubview(imageView)
        if let sv = scrollView {
            self.view.addSubview(sv)
        }
        
        scrollView?.contentSize = image!.size
        
        let label = UILabel(frame: CGRectMake(10, 520, 150, 40))
        label.text = "keyboardDismissMode"
        self.view.addSubview(label)
        let segmentedControl = UISegmentedControl(items:["None", "OnDrag", "Interactive"])
        segmentedControl.frame = CGRectMake(170, 520, 200, 40)
        segmentedControl.selectedSegmentIndex = 0
        segmentedControl.addTarget(self, action: #selector(keyboard(_:)), forControlEvents: .ValueChanged)
        self.view.addSubview(segmentedControl)
        
        let textField = UITextField(frame: CGRectMake(10, 570, 350, 50))
        textField.borderStyle = .RoundedRect
        self.view.addSubview(textField)
    }
    
    func keyboard(sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            scrollView?.keyboardDismissMode = .None
        case 1:
            scrollView?.keyboardDismissMode = .OnDrag
        case 2:
            scrollView?.keyboardDismissMode = .Interactive
        default:
            break
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
