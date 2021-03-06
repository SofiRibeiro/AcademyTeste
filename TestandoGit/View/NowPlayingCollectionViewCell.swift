//
//  NowPlayingCollectionViewCell.swift
//  TestandoGit
//
//  Created by sofia.ribeiro on 11/07/22.
//

import UIKit

class NowPlayingCollectionViewCell: UICollectionViewCell {
    
    static let cellIdentifier = "nowPlayingCell"
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var dateLabel: UILabel!
    
    func setup(title: String, image: UIImage, date: String) {
        self.titleLabel.text = title
        self.imageView.image = image
        self.dateLabel.text = date
    }
    
}
