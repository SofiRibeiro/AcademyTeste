//
//  FeaturedViewController.swift
//  TestandoGit
//
//  Created by sofia.ribeiro on 04/07/22.
//

import UIKit

class FeaturedViewController: UIViewController, UICollectionViewDataSource {
    
    let popularMovies = Movie.popularMovies()
    let nowPlayingMovies = Movie.nowPlayingMovies()
    
    @IBOutlet var popularCollectionView: UICollectionView!
    @IBOutlet var nowPlayingCollectionView: UICollectionView!
    @IBOutlet var upcomingCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        popularCollectionView.dataSource = self
        nowPlayingCollectionView.dataSource = self
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == popularCollectionView {
            return popularMovies.count
        } else if collectionView == nowPlayingCollectionView {
            return nowPlayingMovies.count
        } else {
            return 0
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == popularCollectionView {
            if let cell = popularCollectionView.dequeueReusableCell(withReuseIdentifier: "popularCell", for: indexPath) as? PopularCollectionViewCell {
                cell.title.text = popularMovies[indexPath.item].title
                cell.image.image = UIImage(named: popularMovies[indexPath.item].backdrop)
                return cell
            }
        } else if collectionView == nowPlayingCollectionView {
            if let cell = nowPlayingCollectionView.dequeueReusableCell(withReuseIdentifier: "nowPlayingCell", for: indexPath) as? NowPlayingCollectionViewCell {
                cell.titleLabel.text = nowPlayingMovies[indexPath.item].title
                cell.dateLabel.text = nowPlayingMovies[indexPath.item].releaseDate
                cell.imageView.image = UIImage(named: nowPlayingMovies[indexPath.item].poster)
                return cell
                
            }
            
        }
        
        

    return UICollectionViewCell()
}

}
