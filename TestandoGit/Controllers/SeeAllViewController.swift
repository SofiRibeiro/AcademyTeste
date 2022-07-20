//
//  SeeAllViewController.swift
//  TestandoGit
//
//  Created by sofia.ribeiro on 19/07/22.
//

import UIKit

/* class SeeAllViewController: UIViewController {
    
    

    var movies: [Movie] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? DetailsViewController{
            let movie = sender as? Movie
            destination.movie = movie
        }
        
    
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let movie: Movie = movies[indexPath.row]
        performSegue(withIdentifier: "detailsSegue", sender: movie)
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
     let cell = seeAllTableView.dequeueReusableCell(withIdentifier: SeeAllTableViewCell.cellIdentifier, for: indexPath) as? SeeAllTableViewCell
        
        let movies = movies[indexPath.item]
        let year: String = "\(movies.releaseDate.prefix(4))"
        let rating = "\(movies.voteAverage)"
        
       cell?.setup(title: movies.title, image: UIImage(), year: year, rating: rating)
        
        
        
        Task {
            let imageData = await Movie.downloadImageData(withPath: movies.posterPath)
            let imagem: UIImage = UIImage(data: imageData) ?? UIImage()
            cell?.setup(title: movies.title, image: imagem, year: year, rating: rating)
        }
        
        
        
        return cell ?? SeeAllTableViewCell()
    }
}
*/
