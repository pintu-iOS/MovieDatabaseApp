//
//  FilterSectionContentView.swift
//  MovieDatabaseApp
//
//  Created by Pintu Kumar on 05/11/24.
//

import SwiftUI

struct FilterSectionContent: View {
    var option: FilterOption
    @ObservedObject var viewModel: MovieViewModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            switch option {
            case .year:
                ForEach(viewModel.uniqueYears, id: \.self) { year in
                    FilterOptionRowView(optionValue: year, destination: MoviesListView(filter: .year, value: year, viewModel: viewModel))
                }
            case .genre:
                ForEach(viewModel.uniqueGenres, id: \.self) { genre in
                    FilterOptionRowView(optionValue: genre, destination: MoviesListView(filter: .genre, value: genre, viewModel: viewModel))
                }
            case .directors:
                ForEach(viewModel.uniqueDirectors, id: \.self) { director in
                    FilterOptionRowView(optionValue: director, destination: MoviesListView(filter: .directors, value: director, viewModel: viewModel))
                }
            case .actors:
                ForEach(viewModel.uniqueActors, id: \.self) { actor in
                    FilterOptionRowView(optionValue: actor, destination: MoviesListView(filter: .actors, value: actor, viewModel: viewModel))
                }
            case .allMovies:
                ForEach(viewModel.movies) { movie in
                    NavigationLink(destination: MovieDetailsView(movie: movie)) {
                        SearchMovieListRowView(movie: movie)
                    }
                }
            }
        }
    }
}
