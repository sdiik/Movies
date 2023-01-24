//
//  SearchView.swift
//  Movies
//
//  Created by ahmad shiddiq on 21/01/23.
//

import SwiftUI

enum SearchScope: String, CaseIterable {
    case inbox, favorites
}

struct SearchView: View {
    @ObservedObject var searchModel = SearchViewModel()
    @State private var query = ""
    
    var body: some View {
        NavigationView {
            if searchModel.searchMovies.isEmpty {
                EmptyView(title: $searchModel.errorMessage)
            } else {
                ScrollView(.vertical) {
                    ScrollViewReader { reader in
                        LazyVStack {
                            ForEach(self.searchModel.searchMovies) { searchModel in
                                NavigationLink(destination: DetailView(movieId: searchModel.id)) {
                                    Banner(movie: searchModel)
                                        .onAppear {
                                            self.searchModel.fetchSearchMovie()
                                        }
                                }
                            }
                            if self.searchModel.isLoading {
                                ProgressView()
                            }
                        }
                    }
                }
            }
        }
        .searchable(text: $query, placement: .navigationBarDrawer(displayMode: .always))
        .onChange(of: query) { newValue in
            if query.isEmpty {
                searchModel.searchMovies.removeAll()
            } else {
                searchModel.keyword = query
                searchModel.fetchSearchMovie()
            }
        }
    }
}
