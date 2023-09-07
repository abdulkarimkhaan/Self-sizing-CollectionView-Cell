//
//  DynamicCollectionViewCell.swift
//  DynamicCollectionViewCell
//
//  Created by Abdul Karim Khan on 06/09/2023.
//

import UIKit

class DynamicCollectionViewCell: UICollectionViewCell {
    
    static var reuseIdentifier: String = "DynamicCollectionViewCell"
    
    @IBOutlet weak var labelCollectionViewTitle: UILabel!
    @IBOutlet weak var imageCollectionViewCell: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func setData(name: String) {
        self.labelCollectionViewTitle.text = name
    }
}
