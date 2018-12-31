//
//  HeaderView.swift
//  StretchyHeaderLBTA
//
//  Created by user140592 on 12/26/18.
//  Copyright © 2018 talspektor. All rights reserved.
//

import UIKit

class HeaderView: UICollectionReusableView {
    
    let imageView : UIImageView = {
        let iv = UIImageView(image: #imageLiteral(resourceName: "2246989"))
        iv.contentMode = .scaleAspectFill
        return iv
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .red
        
        addSubview(imageView)
        imageView.anchor(top: self.topAnchor, leading: self.leadingAnchor, bottom: self.bottomAnchor, trialing: self.trailingAnchor)
//        imageView.fillSuperView()
        
        //blur
        setupVisualEffectBlur()
    }
    
    var animator : UIViewPropertyAnimator!
    
    fileprivate func setupVisualEffectBlur() {
        
        animator = UIViewPropertyAnimator(duration: 3.0, curve: .linear, animations: { [weak self] in
            
            // treat as the end of animation
            let blurEffect = UIBlurEffect(style: .regular)
            let visualEffectView = UIVisualEffectView(effect: blurEffect)
            
            self?.addSubview(visualEffectView)
            visualEffectView.anchor(top: self?.topAnchor, leading: self?.leadingAnchor, bottom: self?.bottomAnchor, trialing: self?.trailingAnchor)
            
            
        })
        
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
