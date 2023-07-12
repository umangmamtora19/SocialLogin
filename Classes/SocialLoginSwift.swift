//
//  ViewExtension.swift
//  Pods-SocialLoginSwift_Example
//
//  Created by Umang on 12/07/23.
//

import UIKit

public class Decor {
    public static func makeRounded(view: UIView) {
        view.layer.cornerRadius = view.frame.width / 2
    }
}

extension UIView {
    public func setCorner(radius: CGFloat) {
        self.layer.cornerRadius = radius
    }
}
