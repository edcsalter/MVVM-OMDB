//
//  Movie.swift
//  MoviesApp
//
//  Created by Ed Salter on 3/10/22.
//

import Foundation

//Decodes root level element
struct MovieResponse: Codable {
    let movies: [Movie]

    private enum CodingKeys: String, CodingKey {
        case movies = "Search"
    }
}

//Decodes array members
struct Movie: Codable {
    let title: String
    let year: String
    let imdbId: String
    let poster: String

    private enum CodingKeys: String, CodingKey {
        case title = "Title"
        case year = "Year"
        case imdbId = "imdbID"
        case poster = "Poster"
    }
}
