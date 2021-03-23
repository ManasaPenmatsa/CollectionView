//
//  ViewController.swift
//  Concrete
//
//  Created by Manasa on 23/03/21.
//  Copyright © 2021 Manasa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var collectionView: UICollectionView!
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.collectionViewLayout = UICollectionViewFlowLayout()

    }


}



extension ViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return trucks.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TruckCollectionViewCell", for: indexPath) as! TruckCollectionViewCell
        cell.setup(with: trucks[indexPath.row])
        return cell
    }
}



extension ViewController: UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: 190, height: 170)
    }
}


// Extension for displaying truck name in the console on click of the truck
extension ViewController: UICollectionViewDelegate{
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(trucks[indexPath.row].title)
    }
}





struct Trucks {
    let title: String
    let image: UIImage
}

let trucks: [Trucks] = [
    
    Trucks(title: "Concrete Mixer Truck", image: #imageLiteral(resourceName: "truckImage")),
    Trucks(title: "Concrete Mixer Truck", image: #imageLiteral(resourceName: "truckImage")),
    Trucks(title: "Concrete Mixer Truck", image: #imageLiteral(resourceName: "truckImage")),
    Trucks(title: "Concrete Mixer Truck", image: #imageLiteral(resourceName: "truckImage")),
    Trucks(title: "Concrete Mixer Truck", image: #imageLiteral(resourceName: "truckImage")),
    Trucks(title: "Concrete Mixer Truck", image: #imageLiteral(resourceName: "truckImage")),
    Trucks(title: "Concrete Mixer Truck", image: #imageLiteral(resourceName: "truckImage")),
    Trucks(title: "Concrete Mixer Truck", image: #imageLiteral(resourceName: "truckImage")),
    Trucks(title: "Concrete Mixer Truck", image: #imageLiteral(resourceName: "truckImage")),
    Trucks(title: "Concrete Mixer Truck", image: #imageLiteral(resourceName: "truckImage")),
    Trucks(title: "Concrete Mixer Truck", image: #imageLiteral(resourceName: "truckImage")),
    Trucks(title: "Concrete Mixer Truck", image: #imageLiteral(resourceName: "truckImage"))

]


