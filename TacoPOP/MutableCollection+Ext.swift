//
//  MutableCollection+Ext.swift
//  TacoPOP
//
//  Created by Aaron Billings on 7/4/17.
//  Copyright © 2017 Aaron Billings. All rights reserved.
//

import Foundation

extension MutableCollection where Index == Int { // randomizes our UICollectionView items
    mutating func shuffle() {
        if count < 2 { return }
        
        for i in startIndex ..< endIndex - 1 {
            let j = Int(arc4random_uniform(UInt32(endIndex - i))) + i
            
            guard i != j else {continue}
            swap(&self[i], &self[j])
        }
    }
}
