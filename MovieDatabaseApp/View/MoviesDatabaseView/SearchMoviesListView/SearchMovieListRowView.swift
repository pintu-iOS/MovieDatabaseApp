//
//  SearchMovieListRowView.swift
//  MovieDatabaseApp
//
//  Created by Pintu Kumar on 05/11/24.
//

import SwiftUI

struct SearchMovieListRowView: View {
    let movie: Movie
    
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
                
                Text("\(Constant.languageTitleText) \(movie.language)")
                    .multilineTextAlignment(.leading)
                    .font(.subheadline)
                    .foregroundColor(.gray)
                
                Text("\(Constant.yearTitleText) \(movie.year.replacingOccurrences(of: "-", with: ""))")
                    .multilineTextAlignment(.leading)
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            .padding(.leading, 8)
            Spacer()
        }
        .padding()
    }
}
