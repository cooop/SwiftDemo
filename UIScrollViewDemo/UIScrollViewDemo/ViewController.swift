//
//  ViewController.swift
//  UIScrollViewDemo
//
//  Created by 金鑫 on 16/5/19.
//  Copyright © 2016年 Cooop. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.tableView.dataSource = self
        self.tableView.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 9
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell: UITableViewCell = tableView.dequeueReusableCellWithIdentifier("UIScrollViewDemoTableViewCell") ??
        UITableViewCell(style: .Default, reuseIdentifier: "UIScrollViewDemoTableViewCell")
        switch indexPath.row {
        case 0:
            cell.textLabel?.text = "Display of Content"
        case 1:
            cell.textLabel?.text = "Scrolling"
        case 2:
            cell.textLabel?.text = "Paging"
        case 3:
            cell.textLabel?.text = "Bounce & Decelerate"
        case 4:
            cell.textLabel?.text = "Scroll Indicator"
        case 5:
            cell.textLabel?.text = "Zooming"
        case 6:
            cell.textLabel?.text = "Status"
        case 7:
            cell.textLabel?.text = "Keyboard"
        case 8:
            cell.textLabel?.text = "MyScroll"
        default:
            break
        }
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        var vc: UIViewController?
        switch indexPath.row {
        case 0:
            vc = DisplayContentViewController()
        case 1:
            vc = ScrollingViewController()
        case 2:
            vc = PagingViewController()
        case 3:
            vc = BounceViewController()
        case 4:
            vc = ScrollIndicatorViewController()
        case 5:
            vc = ZoomingViewController()
        case 6:
            vc = ReadOnlyStatusViewController()
        case 7:
            vc = KeyBoardViewController()
        case 8:
            vc = MyScrollViewController()
        default:
            break
        }
        if let vc2 = vc {
            self.navigationController?.pushViewController(vc2, animated: true)
        }

    }

}

