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

    @IBOutlet weak var btnGoogle: UIButton!
    @IBOutlet weak var circleView: UIView!
    
    let socialLogin = SocialLogin()
    let appleSignIn = SocialLogin()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func btnGoogleAction(_ sender: UIButton) {
        socialLogin.clientID = ""
        socialLogin.googlesignIn(view: self) { success, message, userInfo in
            if success {
                print(userInfo?.name ?? "")
            } else {
                print("Error : \(message)")
            }
        }
    }
    
    @IBAction func btnAppleAction(_ sender: UIButton) {
        appleSignIn.appleLogin(view: self)
    }
    
    @IBAction func btnFacebookAction(_ sender: UIButton) {
        socialLogin.facebookLogin(view: self) { success, message, userInfo in
            if success {
                print(userInfo?.name ?? "")
            } else {
                print("Error : \(message)")
            }
        }
    }
}

