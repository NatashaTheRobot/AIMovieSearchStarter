//
//  MoviePosterView.swift
//  AIMovieSearch
//
//  Created by Natasha Murashev on 3/16/24.
//

import SwiftUI

struct MoviePosterView: View {
    let url: URL?
        
    var body: some View {
        AsyncImage(
            url: url,
            transaction: Transaction(animation: .easeInOut)
        ) { phase in
            switch phase {
            case .empty:
                ProgressView()
            case .success(let image):
                image.resizable()
                    .scaledToFit()
            case .failure:
                EmptyView()
            @unknown default:
                EmptyView()
            }
        }
    }
}


