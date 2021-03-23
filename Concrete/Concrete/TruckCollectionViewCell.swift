//
//  TruckCollectionViewCell.swift
//  Concrete
//
//  Created by Manasa on 23/03/21.
//  Copyright © 2021 Manasa. All rights reserved.
//

import UIKit

class TruckCollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet var truckImageView: UIImageView!    
    @IBOutlet var truckLabel: UILabel!
    
    func setup(with trucks: Trucks){
        truckImageView.image = trucks.image
        truckLabel.text = trucks.title
        
        
    }
    
    
    
    
}
