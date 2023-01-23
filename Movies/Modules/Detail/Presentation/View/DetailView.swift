//
//  DetailView.swift
//  Movies
//
//  Created by ahmad shiddiq on 22/01/23.
//

import SwiftUI

struct DetailView: View {
    @ObservedObject var detailModel = DetailViewModel()
    
    var body: some View {
        NavigationView {
            LoadingView(isShowing: .constant(self.detailModel.isLoading)) {
                GeometryReader { reader in
                    ScrollView {
                        LazyVStack(spacing: 4) {
                            Text("list video")
                            Text("List gener")
                            Text("Title")
                            Text("Desscpiton")
                            Text("Rating")
                            Text("List Review")
                        }
                    }
                }
            }
            .navigationBarTitle("Movie Name", displayMode: .inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Back") {
                        print("back")
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Image(uiImage: UIImage(named: "empty_movie_icon")!)
                }
            }
        }
        
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
