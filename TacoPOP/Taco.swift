//
//  Taco.swift
//  TacoPOP
//
//  Created by Aaron Billings on 7/4/17.
//  Copyright © 2017 Aaron Billings. All rights reserved.
//

import Foundation

enum TacoShell: Int {
    case Flour = 1
    case Corn = 2
}

enum TacoProtien: String {
    case Beef = "Beef"
    case Chicken  = "Chicken"
    case Brisket = "Brisket"
    case Fish = "Fish"
}

enum TacoCondiment: Int {
    case Loaded = 1
    case Plain = 2
    
    
}

struct Taco {
    
    private var _id: Int!
    private var _productName: String!
    private var _shellId: TacoShell
    private var _protienId: TacoProtien
    private var _condimentId: TacoCondiment
    
    var id: Int {
        return _id
    }
    
    var productName: String {
        return _productName
    }
    
    var shellid: TacoShell {
        return _shellId
    }
    
    var protienId: TacoProtien {
        return _protienId
    }
    
    var condimentId: TacoCondiment {
        return _condimentId
    }
    
    init(id: Int, productName: String, shellId: Int, protienId: Int  , condimentId: Int) {
    
    _id = id
    _productName = productName
  
        //Taco Shell
        
        switch shellId {
        case 2:
            self._shellId = TacoShell.Corn
        default:
            self._shellId = TacoShell.Flour
            
        }
        
        //Taco Protien
        
        
        switch protienId {
        case 2:
            self._protienId = TacoProtien.Chicken
        case 3:
            self._protienId = TacoProtien.Brisket
        case 4:
            self._protienId = TacoProtien.Fish
        default:
            self._protienId = TacoProtien.Beef
        }
        
        // Taco Condiments 
        
        switch condimentId {
        case 2:
            self._condimentId = TacoCondiment.Plain
        default:
            self._condimentId = TacoCondiment.Loaded
        }
    
    }
    
}



























