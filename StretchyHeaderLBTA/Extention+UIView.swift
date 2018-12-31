//
//  Extention+UIView.swift
//  StretchyHeaderLBTA
//
//  Created by user140592 on 12/29/18.
//  Copyright © 2018 talspektor. All rights reserved.
//

import UIKit

struct AnchoredConstraints {
    var top , leading, bottom , trailing, width, height: NSLayoutConstraint?
}

extension UIView {
    
    @discardableResult
    func anchor(top : NSLayoutYAxisAnchor?, leading: NSLayoutXAxisAnchor?, bottom: NSLayoutYAxisAnchor?, trialing:NSLayoutXAxisAnchor?,
                padding: UIEdgeInsets = .zero, size: CGSize = .zero) -> AnchoredConstraints {
        
        translatesAutoresizingMaskIntoConstraints = false
        var anchoredConstraints = AnchoredConstraints()
        
        if let top = top {
            anchoredConstraints.top = topAnchor.constraint(equalTo: top, constant: padding.top)
        }
        
        if let leading = leading {
            anchoredConstraints.leading = leadingAnchor.constraint(equalTo: leading, constant: padding.left)
        }
        
        if let bottom = bottom {
            anchoredConstraints.bottom = bottomAnchor.constraint(equalTo: bottom, constant: -padding.bottom)
        }
        
        if let trailing = trialing {
            anchoredConstraints.trailing = trailingAnchor.constraint(equalTo: trailing, constant: -padding.right)
        }
        
        if size.width != 0 {
            anchoredConstraints.width = widthAnchor.constraint(equalToConstant: size.width)
        }
        
        if size.height != 0 {
            anchoredConstraints.height = heightAnchor.constraint(equalToConstant: size.height)
        }
        
        [anchoredConstraints.top,
         anchoredConstraints.leading,
         anchoredConstraints.bottom,
         anchoredConstraints.trailing,
         anchoredConstraints.width,
         anchoredConstraints.height,
         ].forEach { $0?.isActive = true }
        
        return anchoredConstraints
        
    }
    
//    func fillSuperView(padding: UIEdgeInsets = .zero) {
//        translatesAutoresizingMaskIntoConstraints = false
//        if let superviewTopAnchor = superview?.topAnchor {
//            topAnchor.constraint(equalTo: superviewTopAnchor, constant: padding.top).isActive = true
//        }
//        
//        if let superviewBottomAnchor = superview?.bottomAnchor {
//            bottomAnchor.constraint(equalTo: superviewBottomAnchor, constant: -padding.bottom).isActive = true
//        }
//        
//        if let superviewTreailingAnchor = superview?.trailingAnchor {
//            superviewTreailingAnchor.constraint(equalTo: superviewTreailingAnchor, constant: -padding.right).isActive = true
//            
//        }
//        
//        if let superviewLeadingAnchor = superview?.leadingAnchor {
//            superviewLeadingAnchor.constraint(equalTo: superviewLeadingAnchor, constant: padding.left)
//        }
//    }
}
