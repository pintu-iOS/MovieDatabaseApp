//
//  MoviesListView.swift
//  MovieDatabaseApp
//
//  Created by Pintu Kumar on 05/11/24.
//

import SwiftUI

struct MoviesListView: View {
    let filter: FilterOption
    let value: String
    @ObservedObject var viewModel: MovieViewModel

    var body: some View {
        List(viewModel.moviesForFilter(filter, value: value)) { movie in
            NavigationLink(destination: MovieDetailsView(movie: movie)) {
                MovieRowView(movie: movie)
            }
        }
        .navigationTitle(value)
    }
}
