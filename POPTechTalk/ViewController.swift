//
//  ViewController.swift
//  POPTechTalk
//
//  Created by Geraldi Kusuma Arnanto on 11/29/16.
//  Copyright © 2016 Geraldi Kusuma Arnanto. All rights reserved.
//

import UIKit

protocol ShakeableView {
    func shake()
}

extension ShakeableView where Self: UIView {
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

class POPImageView: UIImageView, ShakeableView {
    
}

class POPButton: UIButton, ShakeableView {
    
}

class POPLabel: UILabel, ShakeableView {
    
}

class ViewController: UIViewController {
    @IBOutlet weak var imageView: POPImageView!
    @IBOutlet weak var shakeButton: POPButton!
    @IBOutlet weak var shakeLabel: POPLabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func shake(_ sender: UIButton) {
        imageView.shake()
        shakeButton.shake()
        shakeLabel.shake()
    }

}

