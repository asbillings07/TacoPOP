//
//  UICollectionView+Ext.swift
//  TacoPOP
//
//  Created by Aaron Billings on 7/4/17.
//  Copyright © 2017 Aaron Billings. All rights reserved.
//

import Foundation
import UIKit

// All collection views in our code will have this functionality

extension UICollectionView {
    func register<T: UICollectionViewCell>(_: T.Type) where T: ReusableView, T: NibLoadableView {
        
        let nib = UINib(nibName: T.nibName, bundle: nil)
        register(nib, forCellWithReuseIdentifier: T.resuseIdenitifer)
    }
    
    func dequeueReusableCell<T: UICollectionViewCell>(forIndexPath indexPath: IndexPath) -> T where T: ReusableView {
        
        guard let cell = dequeueReusableCell(withReuseIdentifier: T.resuseIdenitifer, for: indexPath) as? T else {
            fatalError("Could not deqeue resuse identififer: \(T.resuseIdenitifer)")
        }
        return cell
    }
}

extension UICollectionViewCell: ReusableView{} //having UICollectionView conform to the resuable view that we have created. 
