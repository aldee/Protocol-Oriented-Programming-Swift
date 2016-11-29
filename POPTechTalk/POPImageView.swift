//
//  POPImageView.swift
//  POPTechTalk
//
//  Created by Geraldi Kusuma Arnanto on 11/29/16.
//  Copyright © 2016 Geraldi Kusuma Arnanto. All rights reserved.
//

import UIKit

class POPImageView: UIImageView {
    func shake() {
        let animation = CABasicAnimation(keyPath: "position")
        animation.duration = 0.05
        animation.repeatCount = 5
        animation.autoreverses = true
        animation.fromValue = NSValue(cgPoint: CGPoint(x: self.center.x - 4.0, y: self.center.y))
        animation.toValue = NSValue(cgPoint: CGPoint(x: self.center.x + 4.0, y: self.center.y))
        layer.add(animation, forKey: "position")
    }
}
