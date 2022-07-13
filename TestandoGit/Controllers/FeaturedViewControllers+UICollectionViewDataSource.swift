//
//  FeaturedViewControllers+UICollectionViewDataSource.swift
//  TestandoGit
//
//  Created by sofia.ribeiro on 12/07/22.
//

import UIKit
extension FeaturedViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == popularCollectionView {
            return popularMovies.count
        } else if collectionView == nowPlayingCollectionView {
            return nowPlayingMovies.count
        } else if collectionView == upcomingCollectionView {
            return upComingMovies.count
        }
        else {
            return 0
        }
    }
    
    fileprivate func makePopularCell(_ indexPath: IndexPath) -> PopularCollectionViewCell {
        if let cell = popularCollectionView.dequeueReusableCell(withReuseIdentifier: PopularCollectionViewCell.cellIdentifier, for: indexPath) as? PopularCollectionViewCell {
            cell.title.text = popularMovies[indexPath.item].title
            cell.image.image = UIImage(named: popularMovies[indexPath.item].backdrop)
            return cell
        }
        return PopularCollectionViewCell()
    }
    
    fileprivate func makenowPlayingCell(_ indexPath: IndexPath) -> NowPlayingCollectionViewCell {
        if let cell = nowPlayingCollectionView.dequeueReusableCell(withReuseIdentifier: NowPlayingCollectionViewCell.cellIdentifier, for: indexPath) as? NowPlayingCollectionViewCell {
            let titulo: String = nowPlayingMovies[indexPath.item].title
            
            cell.titleLabel.text = titulo
            cell.dateLabel.text = String(nowPlayingMovies[indexPath.item].releaseDate.prefix(4))
            cell.imageView.image = UIImage(named: nowPlayingMovies[indexPath.item].poster)
            return cell
            
        }
        return NowPlayingCollectionViewCell()
    }
    
    fileprivate func makeupcomingCell(_ indexPath: IndexPath) -> UpcomingCollectionViewCell {
        if let cell = upcomingCollectionView.dequeueReusableCell(withReuseIdentifier: UpcomingCollectionViewCell.cellIdentifier, for: indexPath) as? UpcomingCollectionViewCell {
            cell.titleLabel.text = upComingMovies[indexPath.item].title
            cell.dateLabel.text = String(upComingMovies[indexPath.item].releaseDate.prefix(4))
            cell.imageup.image = UIImage(named: upComingMovies[indexPath.item].poster)
            return cell
            
        }
        return UpcomingCollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == popularCollectionView {
            return makePopularCell(indexPath)
            
        } else if collectionView == nowPlayingCollectionView {
            return makenowPlayingCell(indexPath)
            
        } else if collectionView == upcomingCollectionView {
            return makeupcomingCell (indexPath)
            
        }
        
        

    return UICollectionViewCell()
}
    
}
