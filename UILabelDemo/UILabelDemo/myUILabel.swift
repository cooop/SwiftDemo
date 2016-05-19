//
//  myUILabel.swift
//  UILabelDemo
//
//  Created by 金鑫 on 16/4/15.
//  Copyright © 2016年 金鑫. All rights reserved.
//

import UIKit

public enum VerticalAlignment: Int{
    case Center
    case Top
    case Bottom
}

class myUILabel: UILabel {

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */
    
    override init(frame: CGRect){
        super.init(frame: frame)
        verticalAlignment = VerticalAlignment.Center
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    
    var verticalAlignment:VerticalAlignment?
    
    override func textRectForBounds(bounds: CGRect, limitedToNumberOfLines numberOfLines: Int) -> CGRect {
        var textRect: CGRect = super.textRectForBounds(bounds, limitedToNumberOfLines: numberOfLines)
        switch verticalAlignment! {
        case .Top:
            textRect.origin.y = bounds.origin.y
        case .Bottom:
            textRect.origin.y = bounds.origin.y + bounds.size.height - textRect.size.height
        default:
            textRect.origin.y = bounds.origin.y + (bounds.size.height - textRect.size.height) / 2.0
        }
        return textRect
    }
    
    override func drawTextInRect(rect: CGRect) {
        let actualRect: CGRect = self.textRectForBounds(rect, limitedToNumberOfLines: self.numberOfLines);
        super.drawTextInRect(actualRect)
    }
    
    
}
