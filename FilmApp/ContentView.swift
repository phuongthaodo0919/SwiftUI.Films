//
//  ContentView.swift
//  FilmApp
//
//  Created by Salmdo on 5/1/23.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var searchFilmVM: SearchFilmViewModel
    @ObservedObject var imageLoader: ImageService
    
    init(){
        searchFilmVM = SearchFilmViewModel()
        imageLoader = ImageService()
    }
    
    var body: some View {
        let column : [GridItem] = Array(repeating: .init(.flexible()), count: 3)
        NavigationView {
            
            VStack {
                MyMatchedGeometryEffect()
                    .padding()
                
                Forground_App()
                    .padding()
                
                ScrollView {
                    LazyVGrid(columns: column) {
                        ForEach(searchFilmVM.filmList, id: \.imdbID) { film in
                            VStack {
                                ImageView(url: film.poster)
                                Text(film.title)
                            }
                        }
                    }
                }
            }
        }
            
            .onAppear(){
                searchFilmVM.fetchFilm()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
