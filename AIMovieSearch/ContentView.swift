//
//  ContentView.swift
//  AIMovieSearch
//
//  Created by Natasha Murashev on 3/12/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
        
    var body: some View {
        NavigationStack {
            MovieItemsView()
                .navigationTitle("Movies")
#if os(iOS)
                .toolbarBackground(AppColors.navigationBarColor, for: .navigationBar)
                .toolbarColorScheme(.dark, for: .navigationBar)
                .toolbarBackground(.visible, for: .navigationBar)
#elseif os(macOS)
                .toolbarBackground(AppColors.navigationBarColorMac)
                .toolbarColorScheme(.dark)
                .toolbarBackground(.visible)
#endif
        }
        
    }
}
