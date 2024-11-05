//
//  MovieModelTests.swift
//  MovieDatabaseAppTests
//
//  Created by Pintu Kumar on 05/11/24.
//

import XCTest
@testable import MovieDatabaseApp

final class MovieModelTests: XCTestCase {
    

    func testMovieDecoding() throws {
        let jsonData = TestCaseConstant.testJson.data(using: .utf8)!
        let movie = try JSONDecoder().decode(Movie.self, from: jsonData)
        
        // Test each field of the Movie model
        XCTAssertEqual(movie.title, "Inception")
        XCTAssertEqual(movie.year, "2010")
        XCTAssertEqual(movie.rated, "PG-13")
        XCTAssertEqual(movie.released, "16 Jul 2010")
        XCTAssertEqual(movie.runtime, "148 min")
        XCTAssertEqual(movie.genre, "Action, Adventure, Sci-Fi")
        XCTAssertEqual(movie.director, "Christopher Nolan")
        XCTAssertEqual(movie.writer, "Christopher Nolan")
        XCTAssertEqual(movie.actors, "Leonardo DiCaprio, Joseph Gordon-Levitt, Ellen Page")
        XCTAssertEqual(movie.plot, "A thief who steals corporate secrets through dream-sharing technology is given the inverse task of planting an idea.")
        XCTAssertEqual(movie.language, "English, Japanese, French")
        XCTAssertEqual(movie.country, "USA, UK")
        XCTAssertEqual(movie.awards, "Won 4 Oscars. Another 143 wins & 198 nominations.")
        XCTAssertEqual(movie.poster, "https://example.com/inception.jpg")
        XCTAssertEqual(movie.metascore, "74")
        XCTAssertEqual(movie.imdbRating, "8.8")
        XCTAssertEqual(movie.imdbVotes, "2,000,000")
        XCTAssertEqual(movie.imdbID, "tt1375666")
        XCTAssertEqual(movie.type, .movie)
        XCTAssertEqual(movie.dvd, .the28Nov2000)
        XCTAssertEqual(movie.boxOffice, "$292,576,195")
        XCTAssertEqual(movie.production, "Warner Bros. Pictures")
        XCTAssertEqual(movie.website, .nA)
        XCTAssertEqual(movie.response, .responseTrue)
        XCTAssertNil(movie.totalSeasons) // Check that the optional field is nil

        // Test nested Ratings
        XCTAssertEqual(movie.ratings.count, 3)
        XCTAssertEqual(movie.ratings[0].source, .internetMovieDatabase)
        XCTAssertEqual(movie.ratings[0].value, "8.8/10")
        XCTAssertEqual(movie.ratings[1].source, .rottenTomatoes)
        XCTAssertEqual(movie.ratings[1].value, "87%")
        XCTAssertEqual(movie.ratings[2].source, .metacritic)
        XCTAssertEqual(movie.ratings[2].value, "74/100")
    }
    
    func testMovieDecodingWithMissingOptionalFields() throws {
        let jsonDataWithMissingFields = TestCaseConstant.jsonWithMissingFields.data(using: .utf8)!
        // Decode and verify optional fields
        let movie = try JSONDecoder().decode(Movie.self, from: jsonDataWithMissingFields)
        XCTAssertNil(movie.dvd)
        XCTAssertNil(movie.boxOffice)
        XCTAssertNil(movie.production)
        XCTAssertEqual(movie.ratings.count, 0)
    }
}
