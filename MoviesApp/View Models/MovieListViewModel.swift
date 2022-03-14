//
//  MovieListViewModel.swift
//  MoviesApp
//
//  Created by Ed Salter on 3/10/22.
//

import Foundation

class MovieListViewModel: ViewModelBase {
    @Published var movies = [MovieViewModel]()
    let httpClient = HTTPClient()
   
    //Could make this mutating to fix errors because we're in a struct
    func searchByName(_ name: String) {
        guard !name.isEmpty else {
            return
        }
        
        
        self.loadingState = .loading
        httpClient.getMoviesBy(search: name.trimmedAndEscape()) { result in
            switch result {
            case .success(let movies):
                if let movies = movies {
                    DispatchQueue.main.async {
                        self.movies = movies.map(MovieViewModel.init)
                        self.loadingState = .success
                    }
                }
            case .failure(let error):
                DispatchQueue.main.async {
                    self.loadingState = .failed
                }

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
