//
//  ReuseableView.swift
//  TacoPOP
//
//  Created by Aaron Billings on 7/4/17.
//  Copyright © 2017 Aaron Billings. All rights reserved.
//

import Foundation
import UIKit

protocol ReusableView: class {}
// The reuse idenitifer will take the name of your class, then you no longer have to keep up with what you named your reuse identifier and worry about it being misspelled. 

extension ReusableView where Self: UIView {
    static var resuseIdenitifer: String {
        return String(describing: self)
    }
}
