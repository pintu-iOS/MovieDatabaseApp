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
