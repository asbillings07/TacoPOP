//
//  MainVC.swift
//  TacoPOP
//
//  Created by Aaron Billings on 7/4/17.
//  Copyright © 2017 Aaron Billings. All rights reserved.
//

import UIKit

class MainVC: UIViewController, DataServiceDelegate {
    
    @IBOutlet weak var headerView: HeaderView!
    @IBOutlet weak var collectionView: UICollectionView!
    
    var ds: DataService = DataService.instance
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        ds.delegate = self
        
        ds.loadDeliciousTacoData()
        ds.tacoArr.shuffle()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        

        headerView.addDropShadow()
        
//        let nib = UINib(nibName: "TacoCell", bundle: nil)
//        collectionView.register(nib, forCellWithReuseIdentifier: "TacoCell")
//        The old way
       
        collectionView.register(TacoCell.self) // new way with protocols
    }
    
    func deliciousTacoDataLoaded() {
        print("Delicious Taco Data Loaded!")
        collectionView.reloadData() 
    }


}


extension MainVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: 95, height: 95)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        if let cell = collectionView.cellForItem(at: indexPath) as? TacoCell {
        cell.shake()
            
        }
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TacoCell", for: indexPath) as? TacoCell {
//        cell.configureCell(taco: ds.tacoArr[indexPath.row])
//            return cell
//        }
//        return UICollectionViewCell() // Old way
        
        let cell = collectionView.dequeueReusableCell(forIndexPath: indexPath) as TacoCell
        cell.configureCell(taco: ds.tacoArr[indexPath.row]) // New way with protocols
        
        return cell
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return ds.tacoArr.count
    }
    
    
}
