//
//  HomeView.swift
//  Comic-app-karinca
//
//  Created by Karinca Danielsen on 30/09/2022.
//

import SwiftUI

struct HomeView: View {
@State private var results = [Result]()

var body: some View {
    NavigationView{
        ScrollView{
    List(results, id: \.id) { comic in
        VStack(alignment: .leading) {
            Text(comic.title)
                .font(.headline)
        //image
            Text(comic.alt)
        }
    }
    .task {
        await fetchData()
            }
        navigationTitle("Xkcd-comics")
        }
    }
}
    
    func fetchData() async {
        guard let url = URL(string: "https://api.xkcdy.com/comics") else {
            print("invalid Url")
            return
        }
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            
            if let decodedResponse = try? JSONDecoder().decode(Response.self, from:data) {
                results = decodedResponse.results
            }
    }
            catch{
            print("Invalid Data")
        }
    }
}
    
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
        }
    }

