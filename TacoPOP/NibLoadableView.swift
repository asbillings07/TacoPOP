//
//  NibLoadableView.swift
//  TacoPOP
//
//  Created by Aaron Billings on 7/4/17.
//  Copyright © 2017 Aaron Billings. All rights reserved.
//

import Foundation
import UIKit

protocol NibLoadableView: class {}

// Where we have a nib file we can use the name of the nib instead of having to keep up with the name that could be misspelled which causes bugs.

extension NibLoadableView where Self: UIView {
    static var nibName: String {
        return String(describing: self)
    }
}
