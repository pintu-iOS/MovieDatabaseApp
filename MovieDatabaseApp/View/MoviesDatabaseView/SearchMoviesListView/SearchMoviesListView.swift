//
//  SearchMoviesListView.swift
//  MovieDatabaseApp
//
//  Created by Pintu Kumar on 05/11/24.
//

import SwiftUI

struct SearchMoviesListView: View {
    let filteredMovies: [Movie]
    
    var body: some View {
        ScrollView {
            VStack(spacing: 0) {
                ForEach(filteredMovies, id: \.imdbID) { movie in
                    NavigationLink(destination: MovieDetailsView(movie: movie)) {
                        SearchMovieListRowView(movie: movie)
                    }
                }
            }
            .padding(.horizontal)
        }
    }
}
