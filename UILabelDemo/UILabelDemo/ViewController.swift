//
//  ViewController.swift
//  UILabelDemo
//
//  Created by 金鑫 on 16/4/12.
//  Copyright © 2016年 金鑫. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.tableView.dataSource = self;
        self.tableView.delegate = self;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: UITableViewDataSource
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1;
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 9;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell: UITableViewCell = tableView.dequeueReusableCellWithIdentifier("UILabelDemoTableViewCell") ??
            UITableViewCell.init(style: UITableViewCellStyle.Default, reuseIdentifier: "UILabelDemoTableViewCell")
        switch indexPath.row {
        case 0:
            cell.textLabel?.text = "TextAlignment"
        case 1:
            cell.textLabel?.text = "LineBreakMode"
        case 2:
            cell.textLabel?.text = "Font"
        case 3:
            cell.textLabel?.text = "Shadow"
        case 4:
            cell.textLabel?.text = "AttributedText"
        case 5:
            cell.textLabel?.text = "Highlighted & Enabled"
        case 6:
            cell.textLabel?.text = "Sizing UILabel"
        case 7:
            cell.textLabel?.text = "Drawing and Positioning Overrides"
        case 8:
            cell.textLabel?.text = "Other"
        default: break
        }
        return cell;
    }
    
    // MARK: UITableViewDelegate
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        switch indexPath.row {
        case 0:
            let vc = TextAlignmentViewController()
            self.navigationController?.pushViewController(vc, animated: true)
        case 1:
            let vc = LineBreakModeViewController()
            self.navigationController?.pushViewController(vc, animated: true)
        case 2:
            let vc = FontViewController()
            self.navigationController?.pushViewController(vc, animated: true)
        case 3:
            let vc = ShadowViewController()
            self.navigationController?.pushViewController(vc, animated: true)
        case 4:
            let vc = AttributedStringViewController()
            self.navigationController?.pushViewController(vc, animated: true)
        case 5:
            let vc = HighlightedViewController()
            self.navigationController?.pushViewController(vc, animated: true)
        case 6:
            let vc = SizingLabelViewController()
            self.navigationController?.pushViewController(vc, animated: true)
        case 7:
            let vc = DrawingOverrideViewController()
            self.navigationController?.pushViewController(vc, animated: true)
        case 8:
            let vc = OtherViewController()
            self.navigationController?.pushViewController(vc, animated: true)
        default:
            break
        }
    }
}

