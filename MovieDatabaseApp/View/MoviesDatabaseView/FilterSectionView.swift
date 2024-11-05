//
//  FilterSectionView.swift
//  MovieDatabaseApp
//
//  Created by Pintu Kumar on 05/11/24.
//

import SwiftUI

struct FilterSectionView: View {
    var option: FilterOption
    @Binding var selectedOption: FilterOption?
    @ObservedObject var viewModel: MovieViewModel
    
    var isExpanded: Bool {
        selectedOption == option
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            // Section Header
            FilterSectionHeader(option: option, isExpanded: isExpanded) {
                withAnimation {
                    selectedOption = isExpanded ? nil : option
                }
            }
            
            // Expandable Content
            if isExpanded {
                FilterSectionContent(option: option, viewModel: viewModel)
                    .background(Color(.systemBackground))
            }
        }
        .background(Color(.systemBackground))
    }
}


struct AllMoviesRow: View {
    var movie: Movie
    
    var body: some View {
        HStack {
            AsyncImage(url: URL(string: movie.poster)) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50, height: 75)
            } placeholder: {
                Color.gray.frame(width: 50, height: 75)
            }
            
            VStack(alignment: .leading) {
                Text(movie.title)
                    .multilineTextAlignment(.leading)
                    .font(.headline)
                    .foregroundColor(.gray)
                Text("Language: \(movie.language)")
                    .multilineTextAlignment(.leading)
                    .font(.subheadline)
                    .foregroundColor(.gray)
                Text("Year: \(movie.year.replacingOccurrences(of: "-", with: ""))")
                    .multilineTextAlignment(.leading)
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            .padding(.leading, 8)
            Spacer()
        }
        .padding()
        Divider()
            .background(Color.gray.opacity(0.5))
            .padding(.leading, 8)
    }
}
