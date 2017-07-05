//
//  DropShadow.swift
//  TacoPOP
//
//  Created by Aaron Billings on 7/4/17.
//  Copyright © 2017 Aaron Billings. All rights reserved.
//

import Foundation
import UIKit

protocol DropShadow {}

extension DropShadow where Self: UIView {
    func addDropShadow() {
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.7
        layer.shadowOffset = CGSize.zero
        layer.shadowRadius = 5
    }
}
