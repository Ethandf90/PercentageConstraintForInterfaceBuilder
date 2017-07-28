//
//  PercentageConstraint.swift
//  PercentageConstraintTest
//
//  Created by Fei Dong on 2017-07-28.
//  Copyright © 2017 Ethan Dong. All rights reserved.
//

import UIKit

class PercentageConstraint: NSLayoutConstraint {

    // input the value for marginPercent (0 - 1.0), in attribute inspector of xib
    @IBInspectable var marginPercent: CGFloat = 0
    
    var screenSize: (width: CGFloat, height: CGFloat) {
        return (UIScreen.main.bounds.width, UIScreen.main.bounds.height)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        guard marginPercent > 0 else { return }
        NotificationCenter.default.addObserver(self, selector: #selector(layoutDidChange), name: NSNotification.Name.UIDeviceOrientationDidChange, object: nil)
    }
    
    
    // Re-calculate constant based on orientation and percentage.
    func layoutDidChange() {
        guard marginPercent > 0 else { return }
        
        switch firstAttribute {
        case .top, .topMargin, .bottom, .bottomMargin, .height:
            constant = screenSize.height * marginPercent
        case .leading, .leadingMargin, .trailing, .trailingMargin, .width:
            constant = screenSize.width * marginPercent
        default: break
        }
    }
    
    deinit {
        guard marginPercent > 0 else { return }
        NotificationCenter.default.removeObserver(self)
    }

    
}
