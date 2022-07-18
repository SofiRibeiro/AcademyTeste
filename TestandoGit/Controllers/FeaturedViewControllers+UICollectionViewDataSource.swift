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
            return upcomingMovies.count
        }
        else {
            return 0
        }
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
    
    fileprivate func makePopularCell(_ indexPath: IndexPath) -> PopularCollectionViewCell {
        if let cell = popularCollectionView.dequeueReusableCell(withReuseIdentifier: PopularCollectionViewCell.cellIdentifier, for: indexPath) as? PopularCollectionViewCell {
            
            cell.setup(title: popularMovies[indexPath.item].title,
                       image: UIImage(named: popularMovies[indexPath.item].backdropPath) ?? UIImage())
            
            let movie = popularMovies[indexPath.item]
            
            Task {
                let imageData = await Movie.downloadImageData(withPath: movie.backdropPath)
                let imagem = UIImage(data: imageData) ?? UIImage()
                cell .setup(title: movie.title, image: imagem)
                
            }
            return cell
        }
            
        return PopularCollectionViewCell()
    }
    
    fileprivate func makenowPlayingCell(_ indexPath: IndexPath) -> NowPlayingCollectionViewCell {
        if let cell = nowPlayingCollectionView.dequeueReusableCell(withReuseIdentifier: NowPlayingCollectionViewCell.cellIdentifier, for: indexPath) as? NowPlayingCollectionViewCell {
            
            
            let titulo: String = nowPlayingMovies[indexPath.item].title
            
            cell.setup(title: titulo, image: UIImage(named: nowPlayingMovies[indexPath.item].posterPath) ?? UIImage(), date: String(nowPlayingMovies[indexPath.item].releaseDate.prefix(4)))
            
            let movie = nowPlayingMovies[indexPath.item]

            Task {
                let imageData = await Movie.downloadImageData(withPath: movie.posterPath)
                let imagem = UIImage(data: imageData) ?? UIImage()
                let date = String(movie.releaseDate.prefix(4))
                cell .setup(title: movie.title, image: imagem, date: date)
            }
            
            return cell
            
        }
        return NowPlayingCollectionViewCell()
    }
    
    fileprivate func makeupcomingCell(_ indexPath: IndexPath) -> UpcomingCollectionViewCell {
        if let cell = upcomingCollectionView.dequeueReusableCell(withReuseIdentifier: UpcomingCollectionViewCell.cellIdentifier, for: indexPath) as? UpcomingCollectionViewCell {
            
            cell.setup(title: upcomingMovies[indexPath.item].title, image: UIImage(named: upcomingMovies[indexPath.item].posterPath) ?? UIImage(), date: String(upcomingMovies[indexPath.item].releaseDate.prefix(4)))
            
            let movie = upcomingMovies[indexPath.item]

            Task {
                let imageData = await Movie.downloadImageData(withPath: movie.posterPath)
                let imagem = UIImage(data: imageData) ?? UIImage()
                let date = String(movie.releaseDate.prefix(4))
                cell .setup(title: movie.title, image: imagem, date: date)
            }
            
            return cell
            
        }
        return UpcomingCollectionViewCell()
    }
    
}
