//
//  TestCaseConstant.swift
//  MovieDatabaseAppTests
//
//  Created by Pintu Kumar on 05/11/24.
//

import Foundation

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
}
