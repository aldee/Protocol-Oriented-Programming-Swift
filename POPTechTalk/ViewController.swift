//
//  ViewController.swift
//  POPTechTalk
//
//  Created by Geraldi Kusuma Arnanto on 11/29/16.
//  Copyright © 2016 Geraldi Kusuma Arnanto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageView: POPImageView!
    @IBOutlet weak var shakeButton: POPButton!

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
    }

}

