//
//  UIButton.swift
//  PiChallenge
//
//  Created by fresneda on 3/4/19.
//  Copyright © 2019 fresneda. All rights reserved.
//

import UIKit

extension UIButton {
    func roundedButton() {
        self.layer.cornerRadius = self.frame.height / 2
        self.clipsToBounds = true
    }
}
