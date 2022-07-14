//
//  PopularCollectionViewCell.swift
//  TestandoGit
//
//  Created by sofia.ribeiro on 11/07/22.
//

import UIKit

class PopularCollectionViewCell: UICollectionViewCell {
    
    static let cellIdentifier = "popularCell"
    
    @IBOutlet var image: UIImageView!
    @IBOutlet var title: UILabel!
    
    func setup(title: String, image: UIImage) {
        self.title.text = title
        self.image.image = image
    }
    
}
