//
//  ViewController.swift
//  DynamicCollectionViewCell
//
//  Created by Abdul Karim Khan on 06/09/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var arrItems = ["DK", "Pakistan", "Livonshire Islands", "United Begristia"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupCollectionView()
    }

}

//MARK: Helper Methods
extension ViewController {
    
    func setupCollectionView() {
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(UINib(nibName: DynamicCollectionViewCell.reuseIdentifier, bundle: nil), forCellWithReuseIdentifier: DynamicCollectionViewCell.reuseIdentifier)
    }
    
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: DynamicCollectionViewCell.reuseIdentifier, for: indexPath as IndexPath) as! DynamicCollectionViewCell
        cell.setData(name: arrItems[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrItems.count
    }
    
}
