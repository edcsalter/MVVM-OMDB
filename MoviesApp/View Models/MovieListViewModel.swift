//
//  MovieListViewModel.swift
//  MoviesApp
//
//  Created by Ed Salter on 3/10/22.
//  Copyright © 2022 Mohammad Azam. All rights reserved.
//

import Foundation

class MovieListViewModel: ObservableObject {
    @Published var movies = [MovieViewModel]()
    let httpClient = HTTPClient()
   
    //Could make this mutating to fix errors because we're in a struct
    func searchByName(_ name: String) {
        httpClient.getMoviesBy(search: name) { result in
            switch result {
            case .success(let movies):
                if let movies = movies {
                    DispatchQueue.main.async {
                        self.movies = movies.map(MovieViewModel.init)
                    }
                }
            case .failure(let error):
                print(error.localizedDescription)
            }
            
        }
    }
}

struct MovieViewModel {
    let movie: Movie
    
    var imdbId: String {
        movie.imdbId
    }
    
    var title: String {
        movie.title
    }
    
    var poster: String {
        movie.poster
    }
    
    var year: String {
        movie.year
    }
    
    
}
