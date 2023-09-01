//
//  MovieModel.swift
//  MovieAppProgrammatically
//
//  Created by Kadir Hocaoğlu on 1.09.2023.
//

import Foundation

// MARK: - Movies
struct Movies: Codable {
    let results: [Result]
}

// MARK: - Result
struct Result: Codable {
    let originalTitle, overview: String
    let popularity: Double
    let posterPath, releaseDate, title: String
    let voteAverage: Double
}
