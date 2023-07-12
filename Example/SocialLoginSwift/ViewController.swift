//
//  ViewController.swift
//  SocialLoginSwift
//
//  Created by Umang on 07/12/2023.
//  Copyright (c) 2023 Umang. All rights reserved.
//

import UIKit
import SocialLoginSwift

class ViewController: UIViewController {

    @IBOutlet weak var circleView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
       
        circleView.makeRounded()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

