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
    @IBOutlet var genresLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        guard let movie = movie else {
            return
        }
        self.title = movie.title
        
        Task {
            let imageData = await Movie.downloadImageData(withPath: movie.backdropPath)
            let imagem = UIImage(data: imageData) ?? UIImage()
            self.backdropImage.image = imagem
        }
        
        //backdropImage.image = UIImage(named: movie.backdropPath)
        
        Task {
            let imageData = await Movie.downloadImageData(withPath: movie.posterPath)
            let imagem = UIImage(data: imageData) ?? UIImage()
            self.poster.image = imagem
        }
        titleLabel.text = movie.title
        // poster.image = UIImage(named: movie.posterPath)
        ratingLabel.text = "Rating: \(movie.voteAverage)/10"
        overviewLabel.text = movie.overview
        genresLabel.text = movie.genres?.joined(separator: ", ")
        
    }
    
}
