//
//  DetailsViewController.swift
//  TestandoGit
//
//  Created by sofia.ribeiro on 13/07/22.
//

import UIKit

class DetailsViewController: UIViewController {

    var movie: Movie?
    
    @IBOutlet var backdropImage: UIImageView!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var poster: UIImageView!
    @IBOutlet var ratingLabel: UILabel!
    @IBOutlet var overviewLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        guard let movie = movie else {
            return
        }
        self.title = movie.title
        backdropImage.image = UIImage(named: movie.backdrop)
        titleLabel.text = movie.title
        poster.image = UIImage(named: movie.poster)
        ratingLabel.text = "Rating: \(movie.voteAverage)/10"
        overviewLabel.text = movie.overview
        
    }
    
}
