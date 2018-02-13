//
//  Loader.swift
//  AnimatedBackground
//
//  Created by Saheb Roy on 13/02/18.
//  Copyright © 2018 Order of the Light. All rights reserved.
//

import Foundation


public class ABView{
    
    public init() {}
    public let view = Bundle(for: ABView.self).loadNibNamed("BackgroundView", owner: nil, options: nil)?.first as! UIView
    
    public func loadBackgroundNib(inView v : UIView){
        
        view.translatesAutoresizingMaskIntoConstraints = false
        view.alpha = 0
        v.addSubview(view)
        
        let dictViews = ["subview":view]
        let verticalConst = NSLayoutConstraint.constraints(withVisualFormat: "V:|-(0)-[subview]-(0)-|", options: [], metrics: nil, views: dictViews)
        let horizontalConst = NSLayoutConstraint.constraints(withVisualFormat:  "H:|-(0)-[subview]-(0)-|", options: [], metrics: nil, views: dictViews)
        
        v.addConstraints(verticalConst)
        v.addConstraints(horizontalConst)
        
    }
    
    public func startAnimation(){
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            UIView.animate(withDuration: 1.0, delay: 0, options: [.repeat,.curveLinear,.autoreverse,.beginFromCurrentState], animations: {
                self.view.alpha = 1.0
            }, completion: { (_) in
                
            })
        }
    }
    
    
    public func stopAnimation(){
        view.layer.removeAllAnimations()
    }
}

