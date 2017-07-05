//
//  DataService.swift
//  TacoPOP
//
//  Created by Aaron Billings on 7/4/17.
//  Copyright © 2017 Aaron Billings. All rights reserved.
//

import Foundation


protocol DataServiceDelegate : class {
    func deliciousTacoDataLoaded()
    
    
}

class DataService {
    static let instance = DataService() // will let us refer to this data service from anywhere
    
    weak var delegate : DataServiceDelegate?
    
    var tacoArr: Array<Taco> = []
    
    func loadDeliciousTacoData() {
        
        // Chicken Tacos
        
        tacoArr.append(Taco(id:1, productName: "Loaded Flour Chicken Taco", shellId: 1, protienId: 2, condimentId: 1 ))
        
        tacoArr.append(Taco(id:2, productName: "Loaded Corn Chicken Taco", shellId: 2, protienId: 2, condimentId: 1 ))
        
        tacoArr.append(Taco(id:3, productName: "Plain Flour Chicken Taco", shellId: 1, protienId: 2, condimentId: 2 ))
        
        tacoArr.append(Taco(id:4, productName: "Plain Corn Chicken Taco", shellId: 2, protienId: 2, condimentId: 2 ))
        
        //Beef Tacos
        
        
        tacoArr.append(Taco(id:5, productName: "Loaded Flour Beef Taco", shellId: 1, protienId: 1, condimentId: 1 ))
        
        tacoArr.append(Taco(id:6, productName: "Loaded Corn Beef Taco", shellId: 2, protienId: 1, condimentId: 1 ))
        
        tacoArr.append(Taco(id:7, productName: "Plain Flour Beef Taco", shellId: 1, protienId: 1, condimentId: 2 ))
        
        tacoArr.append(Taco(id:8, productName: "Plain Corn Beef Taco", shellId: 2, protienId: 1, condimentId: 2 ))
        
        //Brisket Tacos
        
        tacoArr.append(Taco(id:9, productName: "Loaded Flour Brisket Taco", shellId: 1, protienId: 3, condimentId: 1 ))
        
        tacoArr.append(Taco(id:10, productName: "Loaded Corn Brisket Taco", shellId: 2, protienId: 3, condimentId: 1 ))
        
        tacoArr.append(Taco(id:11, productName: "Plain Flour Brisket Taco", shellId: 1, protienId: 3, condimentId: 2 ))
        
        tacoArr.append(Taco(id:12, productName: "Plain Corn Brisket Taco", shellId: 2, protienId: 3, condimentId: 2 ))
        
        //Fish Tacos
        
        
        tacoArr.append(Taco(id:13, productName: "Loaded Flour Fish Taco", shellId: 1, protienId: 4, condimentId: 1 ))
        
        tacoArr.append(Taco(id:14, productName: "Loaded Corn Fish Taco", shellId: 2, protienId: 4, condimentId: 1 ))
        
        tacoArr.append(Taco(id:15, productName: "Plain Flour Fish Taco", shellId: 1, protienId: 4, condimentId: 2 ))
        
        tacoArr.append(Taco(id:16, productName: "Plain Corn Fish Taco", shellId: 2, protienId: 4, condimentId: 2 ))
        
        delegate?.deliciousTacoDataLoaded() // anytime this protocol is loaded the function will be loaded as well
    }
}























