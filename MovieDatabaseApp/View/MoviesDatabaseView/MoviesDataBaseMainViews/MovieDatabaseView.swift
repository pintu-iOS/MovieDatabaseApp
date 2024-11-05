//
//  MovieDatabaseView.swift
//  MovieDatabaseApp
//
//  Created by Pintu Kumar on 05/11/24.
//

import SwiftUI

struct MovieDatabaseView: View {
    @State private var searchText = ""
    @State private var selectedOption: FilterOption? = nil
    @ObservedObject var viewModel = MovieViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                // Search bar
                SearchBarView(searchText: $searchText, viewModel: viewModel)
                
                // Toggle between search results and filter options
                if searchText.isEmpty {
                    FilterSectionListView(selectedOption: $selectedOption, viewModel: viewModel)
                } else {
                    SearchMoviesListView(filteredMovies: viewModel.filteredMovies)
                }
            }
            .navigationTitle(Constant.dashboardTitle)
        }
        .onAppear {
            viewModel.loadMovies()
        }
    }
}
