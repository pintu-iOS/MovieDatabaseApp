//
//  FilterSectionListView.swift
//  MovieDatabaseApp
//
//  Created by Pintu Kumar on 05/11/24.
//

import SwiftUI

struct FilterSectionListView: View {
    @Binding var selectedOption: FilterOption?
    @ObservedObject var viewModel: MovieViewModel
    
    private let filterOptions: [FilterOption] = [.year, .genre, .directors, .actors, .allMovies]
    
    var body: some View {
        ScrollView {
            VStack(spacing: 0) {
                ForEach(filterOptions, id: \.self) { option in
                    FilterSectionView(option: option, selectedOption: $selectedOption, viewModel: viewModel)
                    
                    if option != filterOptions.last {
                        Divider()
                    }
                }
            }
            .background(Color(.systemBackground))
        }
    }
}
