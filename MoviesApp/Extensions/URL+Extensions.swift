//
//  URL+Extensions.swift
//  MoviesApp
//
//  Created by Ed Salter on 3/10/22.
//  Copyright © 2022 Mohammad Azam. All rights reserved.
//

import Foundation

extension URL {
    static func forMoviesByImdbId(_ imdbId: String) -> URL? {
        return URL(string: "https://www.omdbapi.com/?i=\(imdbId)&apikey=\(Constants.API_KEY)")
    }
    
    static func forMoviesByName(_ name: String) -> URL? {
        return URL(string: "https://omdbapi.com/?s=\(name)&apikey=\(Constants.API_KEY)")
    }
}
