//
//  SearchBarView.swift
//  MovieDatabaseApp
//
//  Created by Pintu Kumar on 05/11/24.
//

import SwiftUI

struct SearchBarView: View {
    @Binding var searchText: String
    @ObservedObject var viewModel: MovieViewModel
    
    var body: some View {
        HStack {
            Image(systemName: Constant.magnifyingGlassIcon)
                .foregroundColor(.gray)
            TextField(Constant.searchBarPlaceHolder, text: $searchText)
                .padding(8)
                .background(Color(.systemGray6))
                .cornerRadius(10)
                .onChange(of: searchText) { newValue in
                    viewModel.searchMovies(with: newValue)
                }
        }
        .padding([.horizontal, .top])
    }
}
