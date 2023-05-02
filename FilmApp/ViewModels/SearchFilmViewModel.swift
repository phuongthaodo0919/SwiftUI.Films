//
//  SearchFilmViewModel.swift
//  FilmApp
//
//  Created by Salmdo on 5/1/23.
//

import Foundation

class SearchFilmViewModel: ObservableObject {
    @Published var filmList: [FilmViewModel] = []
    private let filmService = FilmService()
    
    func fetchFilm(){
        filmService.fetchFilms { films in
            DispatchQueue.main.async {
                if let films {
                    self.filmList = films.map(FilmViewModel.init)
                }
            }

        }
    }
    
    
}
