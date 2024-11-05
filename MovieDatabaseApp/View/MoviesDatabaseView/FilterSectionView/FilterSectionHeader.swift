//
//  FilterSectionHeader.swift
//  MovieDatabaseApp
//
//  Created by Pintu Kumar on 05/11/24.
//

import SwiftUI

struct FilterSectionHeader: View {
    var option: FilterOption
    var isExpanded: Bool
    var toggleExpansion: () -> Void
    
    var body: some View {
        HStack {
            Text(option.rawValue)
                .font(.headline)
                .padding(.vertical, 20)
                .padding(.leading, 16)
            Spacer()
            Image(systemName: isExpanded ? "chevron.up" : "chevron.down")
                .padding(.trailing, 16)
        }
        .background(Color(.systemBackground))
        .onTapGesture {
            toggleExpansion()
        }
    }
}
