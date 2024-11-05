//
//  MovieDetailsView.swift
//  MovieDatabaseApp
//
//  Created by Pintu Kumar on 04/11/24.
//

import SwiftUI

struct MovieDetailsView: View {
    let movie: Movie
    @State private var selectedRatingSource: Source = .internetMovieDatabase
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                AsyncImage(url: URL(string: movie.poster)) { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 300)
                } placeholder: {
                    ProgressView()
                }
                
                Text(movie.title)
                    .font(.title)
                    .padding(.bottom, 8)
                Text("\(Constant.plotTitleText) \(movie.plot)")
                Text("\(Constant.directorTitleText) \(movie.director)")
                Text("\(Constant.releasedTitleText) \(movie.released)")
                Text("\(Constant.genreTitleText) \(movie.genre)")
                
                // Custom Rating Selector
                Picker(Constant.selectRatingSource, selection: $selectedRatingSource) {
                    ForEach(movie.ratings.map { $0.source }, id: \.self) { source in
                        Text(source.rawValue)
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
                
                // Display selected rating value
                if let ratingValue = movie.ratings.first(where: { $0.source == selectedRatingSource })?.value {
                    Text("\(Constant.ratingTitleText) \(ratingValue)")
                        .font(.title2)
                }
            }
            .padding()
        }
        .navigationTitle(movie.title)
    }
}

