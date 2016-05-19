//
//  AttributedStringViewController.swift
//  UILabelDemo
//
//  Created by 金鑫 on 16/4/14.
//  Copyright © 2016年 金鑫. All rights reserved.
//

import UIKit

class AttributedStringViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.edgesForExtendedLayout = UIRectEdge.None
        self.view.backgroundColor = UIColor.whiteColor()
        self.tableView = UITableView(frame: CGRectMake(0, 0, UIScreen.mainScreen().bounds.width, UIScreen.mainScreen().bounds.height), style: UITableViewStyle.Plain)
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.view .addSubview(self.tableView)
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
        return 10;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell: UITableViewCell = tableView.dequeueReusableCellWithIdentifier("UILabelDemoTableViewCell") ??
            UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "UILabelDemoTableViewCell")
        switch indexPath.row {
        case 0:
            cell.textLabel?.text = "Font & Color"
        case 1:
            cell.textLabel?.text = "ParagraphStyle"
        case 2:
            cell.textLabel?.text = "Ligature & Kern"
        case 3:
            cell.textLabel?.text = "Strikethrough"
        case 4:
            cell.textLabel?.text = "Underline"
        case 5:
            cell.textLabel?.text = "Stroke"
        case 6:
            cell.textLabel?.text = "Shadow"
        case 7:
            cell.textLabel?.text = "TextEffects, Attachment, Link & BaselineOffset"
        case 8:
            cell.textLabel?.text = "Writing Direction"
        case 9:
            cell.textLabel?.text = "Obliqueness, Expansion & VerticalGlyphForm"
        default: break
        }
        return cell;
    }
    
    // MARK: UITableViewDelegate
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        var vc: UIViewController
        switch indexPath.row {
        case 0:
            vc = ASFontColorViewController()
        case 1:
            vc = ParagraphStyleViewController()
        case 2:
            vc = LigatureKernViewController()
        case 3:
            vc = StrikethroughViewController()
        case 4:
            vc = UnderlineViewController()
        case 5:
            vc = StrokeViewController()
        case 6:
            vc = ASShadowViewController()
        case 7:
            vc = TextEffectsAttachmentLinkViewController()
        case 8:
            vc = WritingDirectionViewController()
        case 9:
            vc = VGFOEViewController()
        default:
            vc = self
        }
        self.navigationController?.pushViewController(vc, animated: true)
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
