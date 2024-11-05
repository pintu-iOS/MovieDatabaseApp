//
//  TestCaseConstant.swift
//  MovieDatabaseAppTests
//
//  Created by Pintu Kumar on 05/11/24.
//

import Foundation
@testable import MovieDatabaseApp

struct TestCaseConstant {
    
    static let testJson = """
    {
        "Title": "Inception",
        "Year": "2010",
        "Rated": "PG-13",
        "Released": "16 Jul 2010",
        "Runtime": "148 min",
        "Genre": "Action, Adventure, Sci-Fi",
        "Director": "Christopher Nolan",
        "Writer": "Christopher Nolan",
        "Actors": "Leonardo DiCaprio, Joseph Gordon-Levitt, Ellen Page",
        "Plot": "A thief who steals corporate secrets through dream-sharing technology is given the inverse task of planting an idea.",
        "Language": "English, Japanese, French",
        "Country": "USA, UK",
        "Awards": "Won 4 Oscars. Another 143 wins & 198 nominations.",
        "Poster": "https://example.com/inception.jpg",
        "Ratings": [
            {"Source": "Internet Movie Database", "Value": "8.8/10"},
            {"Source": "Rotten Tomatoes", "Value": "87%"},
            {"Source": "Metacritic", "Value": "74/100"}
        ],
        "Metascore": "74",
        "imdbRating": "8.8",
        "imdbVotes": "2,000,000",
        "imdbID": "tt1375666",
        "Type": "movie",
        "DVD": "28 Nov 2000",
        "BoxOffice": "$292,576,195",
        "Production": "Warner Bros. Pictures",
        "Website": "N/A",
        "Response": "True",
        "totalSeasons": null
    }
    """
    
    static let jsonWithMissingFields = """
        {
            "Title": "Inception",
            "Year": "2010",
            "Rated": "PG-13",
            "Released": "16 Jul 2010",
            "Runtime": "148 min",
            "Genre": "Action, Adventure, Sci-Fi",
            "Director": "Christopher Nolan",
            "Writer": "Christopher Nolan",
            "Actors": "Leonardo DiCaprio, Joseph Gordon-Levitt, Ellen Page",
            "Plot": "A thief who steals corporate secrets through dream-sharing technology is given the inverse task of planting an idea.",
            "Language": "English, Japanese, French",
            "Country": "USA, UK",
            "Awards": "Won 4 Oscars. Another 143 wins & 198 nominations.",
            "Poster": "https://example.com/inception.jpg",
            "Ratings": [],
            "Metascore": "74",
            "imdbRating": "8.8",
            "imdbVotes": "2,000,000",
            "imdbID": "tt1375666",
            "Type": "movie",
            "Response": "True"
        }
        """
    
    static let testJsonTitle = "Inception"
    static let testJsonYear = "2010"
    static let testJsonRated = "PG-13"
    static let testJsonReleased = "16 Jul 2010"
    static let testJsonRuntime = "148 min"
    static let testJsonGenre = "Action, Adventure, Sci-Fi"
    static let testJsonDirector = "Christopher Nolan"
    static let testJsonWriter = "Christopher Nolan"
    static let testJsonActors = "Leonardo DiCaprio, Joseph Gordon-Levitt, Ellen Page"
    static let testJsonPlot = "A thief who steals corporate secrets through dream-sharing technology is given the inverse task of planting an idea."
    static let testJsonLanguage = "English, Japanese, French"
    static let testJsonCountry = "USA, UK"
    static let testJsonAwards = "Won 4 Oscars. Another 143 wins & 198 nominations."
    static let testJsonPoster = "https://example.com/inception.jpg"
    static let testJsonMetascore = "74"
    static let testJsonImdbRating = "8.8"
    static let testJsonImdbVotes = "2,000,000"
    static let testJsonImdbID = "tt1375666"
    static let testJsonBoxOffice = "$292,576,195"
    static let testJsonProduction = "Warner Bros. Pictures"
    static let testJsonRatingsAt0 = "8.8/10"
    static let testJsonRatingsAt1 = "87%"
    static let testJsonRatingsAt2 = "74/100"
    static let testJsonYear2014 = "2014"
    
    static let sciFi = "Sci-Fi"
    static let nonexistentMovie = "Nonexistent Movie"
    static let nolan = "Nolan"
    static let drama = "Drama"
    static let movieTitle = "Interstellar"
static let leonardoActor = "Leonardo DiCaprio"
    static let uniqueGenres = ["Action", "Adventure", "Drama", "Sci-Fi"]
    static let uniqueActors = ["Anne Hathaway", "Ellen Page", "Jessica Chastain", "Joseph Gordon-Levitt", "Leonardo DiCaprio", "Matthew McConaughey"]
    
    static let movie1 = Movie(
        title: "Inception",
        year: "2010",
        rated: "PG-13",
        released: "16 Jul 2010",
        runtime: "148 min",
        genre: "Action, Adventure, Sci-Fi",
        director: "Christopher Nolan",
        writer: "Christopher Nolan",
        actors: "Leonardo DiCaprio, Joseph Gordon-Levitt, Ellen Page",
        plot: "A thief who steals corporate secrets.",
        language: "English",
        country: "USA",
        awards: "Won 4 Oscars",
        poster: "poster1.jpg",
        ratings: [],
        metascore: "74",
        imdbRating: "8.8",
        imdbVotes: "2,000,000",
        imdbID: "tt1375666",
        type: .movie,
        dvd: nil,
        boxOffice: "$292,576,195",
        production: "Warner Bros.",
        website: nil,
        response: .responseTrue,
        totalSeasons: nil
    )
    
    static let movie2 = Movie(
        title: "Interstellar",
        year: "2014",
        rated: "PG-13",
        released: "07 Nov 2014",
        runtime: "169 min",
        genre: "Adventure, Drama, Sci-Fi",
        director: "Christopher Nolan",
        writer: "Jonathan Nolan",
        actors: "Matthew McConaughey, Anne Hathaway, Jessica Chastain",
        plot: "A team of explorers travel through a wormhole in space.",
        language: "English",
        country: "USA",
        awards: "Won 1 Oscar",
        poster: "poster2.jpg",
        ratings: [],
        metascore: "74",
        imdbRating: "8.6",
        imdbVotes: "1,500,000",
        imdbID: "tt0816692",
        type: .movie,
        dvd: nil,
        boxOffice: "$188,020,017",
        production: "Paramount",
        website: nil,
        response: .responseTrue,
        totalSeasons: nil
    )
}
