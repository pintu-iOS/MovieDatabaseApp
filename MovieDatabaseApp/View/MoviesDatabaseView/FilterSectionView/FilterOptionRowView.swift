//
//  FilterOptionRowView.swift
//  MovieDatabaseApp
//
//  Created by Pintu Kumar on 05/11/24.
//

import SwiftUI

struct FilterOptionRowView<Destination: View>: View {
    var optionValue: String
    var destination: Destination
    
    var body: some View {
        NavigationLink(destination: destination) {
            Text(optionValue)
                .multilineTextAlignment(.leading)
                .foregroundColor(.gray)
                .padding()
                .frame(maxWidth: .infinity, alignment: .leading)
        }
    }
}
