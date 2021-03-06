//
//  UpcomingCollectionViewCell.swift
//  TestandoGit
//
//  Created by sofia.ribeiro on 11/07/22.
//

import UIKit

class UpcomingCollectionViewCell: UICollectionViewCell {
    
    static let cellIdentifier = "upcomingCell"
    
    @IBOutlet var imageup: UIImageView!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var dateLabel: UILabel!
    
    func setup(title: String, image: UIImage, date: String) {
        self.titleLabel.text = title
        self.imageup.image = image
        self.dateLabel.text = date
    }
    
}
