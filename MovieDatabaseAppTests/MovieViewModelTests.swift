//
//  MovieViewModelTests.swift
//  MovieDatabaseAppTests
//
//  Created by Pintu Kumar on 05/11/24.
//

import XCTest
@testable import MovieDatabaseApp

final class MovieViewModelTests: XCTestCase {
    var viewModel: MovieViewModel!

    override func setUp() {
        super.setUp()
        
        viewModel = MovieViewModel()
        viewModel.movies = [TestCaseConstant.movie1, TestCaseConstant.movie2]
        viewModel.filteredMovies = [TestCaseConstant.movie1, TestCaseConstant.movie2]
    }

    //MARK: Test case for Unique Years
    func testUniqueYears() {
        XCTAssertEqual(viewModel.uniqueYears, [TestCaseConstant.testJsonYear, TestCaseConstant.testJsonYear2014])
    }
    
    //MARK: Test case for Unique Genres
    func testUniqueGenres() {
        XCTAssertEqual(viewModel.uniqueGenres, TestCaseConstant.uniqueGenres)
    }
    
    //MARK: Test case for Unique Directors
    func testUniqueDirectors() {
        XCTAssertEqual(viewModel.uniqueDirectors, [TestCaseConstant.testJsonDirector])
    }
    
    //MARK: Test case for Unique Actors
    func testUniqueActors() {
        XCTAssertEqual(viewModel.uniqueActors, TestCaseConstant.uniqueActors)
    }
    
    //MARK: Test case for Movies For Filter By Year
    func testMoviesForFilterByYear() {
        let filteredMovies = viewModel.moviesForFilter(.year, value: TestCaseConstant.testJsonYear)
        XCTAssertEqual(filteredMovies.count, 1)
        XCTAssertEqual(filteredMovies.first?.title, TestCaseConstant.testJsonTitle)
    }

    //MARK: Test case for Movies For Filter By Genre
    func testMoviesForFilterByGenre() {
        let filteredMovies = viewModel.moviesForFilter(.genre, value: TestCaseConstant.sciFi)
        XCTAssertEqual(filteredMovies.count, 2)
        XCTAssertEqual(Set(filteredMovies.map { $0.title }), Set([TestCaseConstant.testJsonTitle, TestCaseConstant.movieTitle]))
    }
    
    //MARK: Test case for Movies For Filter By Director
    func testMoviesForFilterByDirector() {
        let filteredMovies = viewModel.moviesForFilter(.directors, value: TestCaseConstant.testJsonDirector)
        XCTAssertEqual(filteredMovies.count, 2)
        XCTAssertEqual(Set(filteredMovies.map { $0.title }), Set([TestCaseConstant.testJsonTitle, TestCaseConstant.movieTitle]))
    }
    
    //MARK: Test case for Movies For Filter By Actor
    func testMoviesForFilterByActor() {
        let filteredMovies = viewModel.moviesForFilter(.actors, value: TestCaseConstant.leonardoActor)
        XCTAssertEqual(filteredMovies.count, 1)
        XCTAssertEqual(filteredMovies.first?.title, TestCaseConstant.testJsonTitle)
    }
    
    //MARK: Test case for All Movies Filter
    func testMoviesForAllMoviesFilter() {
        let filteredMovies = viewModel.moviesForFilter(.allMovies, value: "")
        XCTAssertEqual(filteredMovies.count, 2)
    }
    
    //MARK: Test case for Search Movies With Title Match
    func testSearchMoviesWithTitleMatch() {
        viewModel.searchMovies(with: TestCaseConstant.testJsonTitle)
        XCTAssertEqual(viewModel.filteredMovies.count, 1)
        XCTAssertEqual(viewModel.filteredMovies.first?.title, TestCaseConstant.testJsonTitle)
    }
    
    //MARK: Test case for Search Movies With Genre Match
    func testSearchMoviesWithGenreMatch() {
        viewModel.searchMovies(with: TestCaseConstant.drama)
        XCTAssertEqual(viewModel.filteredMovies.count, 1)
        XCTAssertEqual(viewModel.filteredMovies.first?.title, TestCaseConstant.movieTitle)
    }
    
    //MARK: Test case for Search Movies With Director Match
    func testSearchMoviesWithDirectorMatch() {
        viewModel.searchMovies(with: TestCaseConstant.nolan)
        XCTAssertEqual(viewModel.filteredMovies.count, 2)
    }
    
    //MARK: Test case for Search Movies With Empty Query
    func testSearchMoviesWithEmptyQuery() {
        viewModel.searchMovies(with: "")
        XCTAssertEqual(viewModel.filteredMovies.count, 2)
    }
    
    //MARK: Test case for Search Movies With no match
    func testSearchMoviesWithNoMatch() {
        viewModel.searchMovies(with: TestCaseConstant.nonexistentMovie)
        XCTAssertEqual(viewModel.filteredMovies.count, 0)
    }
}
