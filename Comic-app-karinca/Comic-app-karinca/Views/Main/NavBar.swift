//
//  NavBar.swift
//  Comic-app-karinca
//
//  Created by Karinca Danielsen on 30/09/2022.
//

import SwiftUI

struct NavBar: View {
    var body: some View {
        TabView{
        HomeView()
            .tabItem{
            Label("Browse", systemImage: "eye")
        }
        FavouritesView()
            .tabItem{
            Label("Favourites", systemImage:"heart")
                }
//        SearchView()
//                .tabItem{
//                Label("Seach", systemImage: "magnifyingglass")
//                }
    }
}

struct NavBar_Previews: PreviewProvider {
    static var previews: some View {
        NavBar()
    }
}
}
