//
//  MovieRowView.swift
//  MovieDatabaseApp
//
//  Created by Pintu Kumar on 05/11/24.
//

import SwiftUI

struct MovieRowView: View {
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
                    .font(.headline)
                Text("Language: \(movie.language)")
                    .font(.subheadline)
                Text("Year: \(movie.year)")
                    .font(.subheadline)
            }
        }
    }
}
