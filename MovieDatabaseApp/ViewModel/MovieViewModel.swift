//
//  MovieViewModel.swift
//  MovieDatabaseApp
//
//  Created by Pintu Kumar on 04/11/24.
//

import Foundation
import Combine

class MovieViewModel: ObservableObject {
    @Published var movies: [Movie] = []
    @Published var filteredMovies: [Movie] = []

    var uniqueYears: [String] {
        Array(Set(movies.map { $0.year })).sorted()
    }
    
    var uniqueGenres: [String] {
        Array(Set(movies.flatMap { $0.genre.split(separator: ",").map { $0.trimmingCharacters(in: .whitespaces) } })).sorted()
    }
    
    var uniqueDirectors: [String] {
        Array(Set(movies.map { $0.director })).sorted()
    }
    
    var uniqueActors: [String] {
        Array(Set(movies.flatMap { $0.actors.split(separator: ",").map { $0.trimmingCharacters(in: .whitespaces) } })).sorted()
    }
    
    //MARK: Intialization
    init() {
        loadMovies()
        filteredMovies = movies
    }
    
    //MARK: Load movies from your JSON file here
    func loadMovies() {
        if let url = Bundle.main.url(forResource: "movies", withExtension: "json") {
            if let data = try? Data(contentsOf: url) {
                let decoder = JSONDecoder()
                do {
                    self.movies = try decoder.decode([Movie].self, from: data)
                    self.filteredMovies = self.movies
                } catch {
                    print("Error decoding JSON: \(error)")
                }
            }
        }
    }
    
    //MARK: Movies list filter function for by rows
    func moviesForFilter(_ filter: FilterOption, value: String) -> [Movie] {
        switch filter {
        case .year:
            return movies.filter { $0.year == value }
        case .genre:
            return movies.filter { $0.genre.contains(value) }
        case .directors:
            return movies.filter { $0.director.contains(value) }
        case .actors:
            return movies.filter { $0.actors.contains(value) }
        case .allMovies:
            return movies
        }
    }
    
    //MARK: Movies search function by title/genre/director/actors/year
    func searchMovies(with query: String) {
        if query.isEmpty {
            filteredMovies = movies
        } else {
            let lowercasedQuery = query.lowercased()
            filteredMovies = movies.filter { movie in
                movie.title.lowercased().contains(lowercasedQuery) ||
                movie.genre.lowercased().contains(lowercasedQuery) ||
                movie.director.lowercased().contains(lowercasedQuery) ||
                movie.actors.lowercased().contains(lowercasedQuery) ||
                movie.year.lowercased().contains(lowercasedQuery)
            }
        }
    }
}
