//
//  MovieModelTests.swift
//  MovieDatabaseAppTests
//
//  Created by Pintu Kumar on 05/11/24.
//

import XCTest
@testable import MovieDatabaseApp

final class MovieModelTests: XCTestCase {
    
    //MARK: Test case for Movie model decodable
    func testMovieDecoding() throws {
        let jsonData = TestCaseConstant.testJson.data(using: .utf8)!
        let movie = try JSONDecoder().decode(Movie.self, from: jsonData)
        
        // Test each field of the Movie model
        XCTAssertEqual(movie.title, TestCaseConstant.testJsonTitle)
        XCTAssertEqual(movie.year, TestCaseConstant.testJsonYear)
        XCTAssertEqual(movie.rated, TestCaseConstant.testJsonRated)
        XCTAssertEqual(movie.released, TestCaseConstant.testJsonReleased)
        XCTAssertEqual(movie.runtime, TestCaseConstant.testJsonRuntime)
        XCTAssertEqual(movie.genre, TestCaseConstant.testJsonGenre)
        XCTAssertEqual(movie.director, TestCaseConstant.testJsonDirector)
        XCTAssertEqual(movie.writer, TestCaseConstant.testJsonWriter)
        XCTAssertEqual(movie.actors, TestCaseConstant.testJsonActors)
        XCTAssertEqual(movie.plot, TestCaseConstant.testJsonPlot)
        XCTAssertEqual(movie.language, TestCaseConstant.testJsonLanguage)
        XCTAssertEqual(movie.country, TestCaseConstant.testJsonCountry)
        XCTAssertEqual(movie.awards, TestCaseConstant.testJsonAwards)
        XCTAssertEqual(movie.poster, TestCaseConstant.testJsonPoster)
        XCTAssertEqual(movie.metascore, TestCaseConstant.testJsonMetascore)
        XCTAssertEqual(movie.imdbRating, TestCaseConstant.testJsonImdbRating)
        XCTAssertEqual(movie.imdbVotes, TestCaseConstant.testJsonImdbVotes)
        XCTAssertEqual(movie.imdbID, TestCaseConstant.testJsonImdbID)
        XCTAssertEqual(movie.type, .movie)
        XCTAssertEqual(movie.dvd, .the28Nov2000)
        XCTAssertEqual(movie.boxOffice, TestCaseConstant.testJsonBoxOffice)
        XCTAssertEqual(movie.production, TestCaseConstant.testJsonProduction)
        XCTAssertEqual(movie.website, .nA)
        XCTAssertEqual(movie.response, .responseTrue)
        XCTAssertNil(movie.totalSeasons) // Check that the optional field is nil

        // Test nested Ratings
        XCTAssertEqual(movie.ratings.count, 3)
        XCTAssertEqual(movie.ratings[0].source, .internetMovieDatabase)
        XCTAssertEqual(movie.ratings[0].value, TestCaseConstant.testJsonRatingsAt0)
        XCTAssertEqual(movie.ratings[1].source, .rottenTomatoes)
        XCTAssertEqual(movie.ratings[1].value, TestCaseConstant.testJsonRatingsAt1)
        XCTAssertEqual(movie.ratings[2].source, .metacritic)
        XCTAssertEqual(movie.ratings[2].value, TestCaseConstant.testJsonRatingsAt2)
    }
    
    //MARK: Test case for Movie model decodable with missing optional fields
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
